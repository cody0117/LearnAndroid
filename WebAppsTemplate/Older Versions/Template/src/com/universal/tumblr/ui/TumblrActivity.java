package com.universal.tumblr.ui;

import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;
import com.jeremyfeinstein.slidingmenu.lib.SlidingMenu;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.universal.MainActivity;
import com.universal.R;
import com.universal.tumblr.ImageAdapter;
import com.universal.tumblr.JSONParser;
import com.universal.tumblr.Constants.Extra;
import com.universal.tumblr.TumblrItem;

import android.app.ActionBar;
import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AbsListView;
import android.widget.GridView;
import android.widget.Toast;

/**
 *  This activity is used to display a list of tumblr imagess
 */

public class TumblrActivity extends Activity {
	
	ArrayList<TumblrItem> tumblrItems;
	private ImageAdapter imageAdapter = null;
	
	GridView listView;
	
	ProgressDialog pDialog;

	public static DisplayImageOptions options;
	
	private SlidingMenu slidingMenu;

	String menu;
	
	String perpage = "50";
	Integer curpage = 1;
	
	String baseurl;
	
	Boolean initialload = true;
	Boolean isLoading = true;
	
	protected ImageLoader imageLoader = MainActivity.initializeImageLoader(TumblrActivity.this);

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		requestWindowFeature(Window.FEATURE_INDETERMINATE_PROGRESS);
		setContentView(R.layout.activity_tumblr_grid);
		String username = getIntent().getStringExtra("TUMBLR_USERNAME");
		baseurl = "http://"+username+".tumblr.com/api/read/json?num=" + perpage + "&start=";
		
		//transitions with slidingmenu look better
		getWindow().setWindowAnimations(0);
				
		//sliding menu
		slidingMenu = new SlidingMenu(this);
		slidingMenu.setMode(SlidingMenu.LEFT);
		slidingMenu.setTouchModeAbove(SlidingMenu.TOUCHMODE_FULLSCREEN);
		slidingMenu.setBehindOffsetRes(R.dimen.slidingmenu_offset);
		slidingMenu.setFadeDegree(0.35f);
		slidingMenu.attachToActivity(this, SlidingMenu.SLIDING_WINDOW);
	    slidingMenu.setMenu(R.layout.slidingmenu);

		//actionbar
		ActionBar actionBar = getActionBar();
		actionBar.setDisplayHomeAsUpEnabled(true);
				
		//checking if the user has just opened the app
	    menu = getIntent().getStringExtra("MENU");
			        
		if ("true".equals(menu)) {
			  slidingMenu.toggle();
		}
			    
		if ((getResources().getString(R.string.ad_visibility).equals("0"))){
		      // Look up the AdView as a resource and load a request.
		      AdView adView = (AdView) findViewById(R.id.adView);
		      AdRequest adRequest = new AdRequest.Builder().build();
		      adView.loadAd(adRequest);
		}

        new InitialLoadGridView().execute(baseurl);
		options = new DisplayImageOptions.Builder()
			.showImageOnLoading(R.drawable.ic_menu_gallery)
			//.showImageForEmptyUri(R.drawable.ic_empty)
			.showImageOnFail(R.drawable.ic_error)
			.cacheInMemory(true)
			.cacheOnDisk(true)
			.considerExifParams(true)
			.bitmapConfig(Bitmap.Config.RGB_565)
			.build();

		listView = (GridView) findViewById(R.id.gridview);
		listView.setOnItemClickListener(new OnItemClickListener() {
			@Override
			public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
				startImagePagerActivity(position);
			}
		});
		listView.setOnScrollListener(new OnScrollListener() {
			@Override
			public void onScroll(AbsListView view, int firstVisibleItem,
			        int visibleItemCount, int totalItemCount) {

			    if (imageAdapter == null)
			        return ;

			    if (imageAdapter.getCount() == 0)
			        return ;

			    int l = visibleItemCount + firstVisibleItem;
			    if (l >= totalItemCount && !isLoading) {
			        // It is time to add new data. We call the listener
			        isLoading = true;
			        new InitialLoadGridView().execute(baseurl);
			    }
			}

			@Override
			public void onScrollStateChanged(AbsListView view, int scrollState) {
				
			}
		});
	}

	private void startImagePagerActivity(int position) {
		Intent intent = new Intent(this, TumblrPagerActivity.class);
		
		ArrayList<TumblrItem> underlying =  new ArrayList<TumblrItem>();
		for (int i = 0; i < imageAdapter.getCount(); i++)
		    underlying.add(imageAdapter.getItem(i));
		
		Bundle b = new Bundle();
		b.putParcelableArrayList(Extra.IMAGES, underlying);
		intent.putExtras(b);
		intent.putExtra(Extra.IMAGE_POSITION, position);
		startActivity(intent);
	}
	
	public void updateList() {	
		if (initialload){
		    imageAdapter = new ImageAdapter(this, 0, tumblrItems);
		    listView.setAdapter(imageAdapter);
		    initialload = false;
		} else {
		    imageAdapter.addAll(tumblrItems);
		    imageAdapter.notifyDataSetChanged();
		}
		isLoading = false;
	}
	
	private class InitialLoadGridView extends AsyncTask<String, Void, Void> {

		@Override
		protected void onPreExecute() {
			// Showing progress dialog before sending http request
			if (initialload){
				pDialog = new ProgressDialog(TumblrActivity.this);
				pDialog.setMessage(getResources().getString(R.string.loading));
				pDialog.setIndeterminate(true);
				pDialog.setCancelable(false);
				pDialog.show();
			} else {
				setProgressBarIndeterminateVisibility(Boolean.TRUE); 
			}
		}

		protected Void doInBackground(String... params) {
			String geturl = params[0];
			geturl = geturl + Integer.toString((curpage -1) *  Integer.parseInt(perpage) + 1);
            curpage = curpage + 1;
            
			JSONParser jParser = new JSONParser();
			// getting JSON string from URL
			Log.v("INFO", geturl);
			JSONObject json = jParser.makeHttpRequest(geturl, "GET");
			
			// Check your log cat for JSON reponse
			Log.d("All Products: ", json.toString());
			
			ArrayList<TumblrItem> images = new ArrayList<TumblrItem>();

			try {
				// Checking for SUCCESS TAG
				String success = json.getString("posts-total");

				if (0 < Integer.parseInt(success)) {
					// products found
					// Getting Array of Products
					JSONArray products;
					
					products = json.getJSONArray("posts");

					// looping through All Products
					for (int i = 0; i < products.length(); i++) {
						JSONObject c = products.getJSONObject(i);

						// Storing each json item in variable
						String id = c.getString("id");
						String link = c.getString("url");
						String url;
						try {
						   url = c.getString("photo-url-1280");					
						} catch (JSONException e){
						   try {
								url = c.getString("photo-url-500");					
						   } catch (JSONException r){
							   try {
									url = c.getString("photo-url-250");					
							   } catch (JSONException l){
										url = null;
							   }
						   }
						}

						// creating new HashMap
						//HashMap<String, String> map = new HashMap<String, String>();

						// adding items to arraylist
						if (url != null){
							TumblrItem item = new TumblrItem(id, link, url);
							images.add(item);
						}
					}
					
					tumblrItems = images;
				} else {
					// no products found
				}
			} catch (JSONException e) {
				e.printStackTrace();
			}
			
			return (null);
		}
		
		
		protected void onPostExecute(Void unused) {
			if (null != tumblrItems) {
				updateList();
			}
			if (pDialog.isShowing()) {
				pDialog.dismiss();
			} else {
				setProgressBarIndeterminateVisibility(Boolean.FALSE);
			}
		}
	}
	
	@Override
    public void onBackPressed() {
        if ( slidingMenu.isMenuShowing()) {
            slidingMenu.toggle();

     	} else {
     	    super.onBackPressed();  
        }
    }
	
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
	    MenuInflater inflater = getMenuInflater();
	    inflater.inflate(R.menu.refresh_menu, menu);
	    return true;
	}
	
	@Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
        case android.R.id.home:
            this.slidingMenu.toggle();
            return true;
        case R.id.refresh:
        	if (!isLoading){
        		initialload = true;
	    		isLoading = true;
	    		curpage = 1;
	    		tumblrItems.clear();
	    		listView.setAdapter(null);
	    		new InitialLoadGridView().execute(baseurl);
	    	} else {
	    		Toast.makeText(getBaseContext(), getString(R.string.already_loading), Toast.LENGTH_LONG).show();
	    	}
        default:
            return super.onOptionsItemSelected(item);
        }
    }
	
}