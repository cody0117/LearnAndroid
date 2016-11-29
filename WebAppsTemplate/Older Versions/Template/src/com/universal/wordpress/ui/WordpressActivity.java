package com.universal.wordpress.ui;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import android.app.ActionBar;
import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.graphics.Color;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.Html;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.SearchView.OnQueryTextListener;
import android.widget.ListView;
import android.widget.SearchView;
import android.widget.Toast;

import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;
import com.jeremyfeinstein.slidingmenu.lib.SlidingMenu;
import com.universal.R;
import com.universal.wordpress.CustomListAdapter;
import com.universal.wordpress.FeedItem;

/**
 *  This activity is used to display a list of wordpress articles
 */

public class WordpressActivity extends Activity {

	private ArrayList<FeedItem> feedList = null;
	private ListView feedListView = null;
	private CustomListAdapter feedListAdapter = null;
	
	ProgressDialog pDialog;
	
	private SlidingMenu slidingMenu;

	String menu;
	
	String perpage = "15";
	Integer curpage = 1;
	
	String apiurl;
	String baseurl;
	String searchurl;
	String searchurlend;
	String pageurl;
	
	Boolean initialload = true;
	Boolean isLoading = true;
	
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		requestWindowFeature(Window.FEATURE_INDETERMINATE_PROGRESS);
		setContentView(R.layout.activity_wordpress_list);
		
		apiurl = getIntent().getStringExtra("WORDPRESS_API_URL");
		constructUrls();
		
		new DownloadFilesTask().execute(baseurl);
		
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
		
		feedListView= (ListView) findViewById(R.id.custom_list);
		//feedListAdapter = new CustomListAdapter(this, 0, feedList);
		//feedListView.setAdapter(feedListAdapter);
		feedListView.setOnItemClickListener(new OnItemClickListener() {

			@Override
			public void onItemClick(AdapterView<?> a, View v, int position,	long id) {
				Object o = feedListView.getItemAtPosition(position);
				FeedItem newsData = (FeedItem) o;
				
				Intent intent = new Intent(WordpressActivity.this, WordpressDetailActivity.class);
				intent.putExtra("feed", newsData);
				intent.putExtra("apiurl", apiurl);
				startActivity(intent);
			}
		});
		feedListView.setOnScrollListener(new OnScrollListener() {
			@Override
			public void onScroll(AbsListView view, int firstVisibleItem,
			        int visibleItemCount, int totalItemCount) {

			    if (feedListAdapter == null)
			        return ;

			    if (feedListAdapter.getCount() == 0)
			        return ;

			    int l = visibleItemCount + firstVisibleItem;
			    if (l >= totalItemCount && !isLoading) {
			        // It is time to add new data. We call the listener
			        isLoading = true;
			        new DownloadFilesTask().execute(baseurl);
			    }
			}

			@Override
			public void onScrollStateChanged(AbsListView view, int scrollState) {
				
			}
		});
	}
	
	public void constructUrls() {
		String[] parts = apiurl.split(",");

	    if (parts.length == 2){
			pageurl = parts[0] + "get_category_posts?category_slug="+ parts[1] +"&count=" + perpage + "&page=";
			apiurl = parts[0];
	    }else {	
	    	pageurl = apiurl + "get_recent_posts?count=" + perpage + "&page=";
	    }
		baseurl = pageurl;
		
		searchurl = apiurl + "get_search_results?count=" + perpage + "&search=";
        searchurlend = "&page=";
	}

	public void updateList() {	
		if (initialload){
		feedListAdapter = new CustomListAdapter(this, 0, feedList);
		feedListView.setAdapter(feedListAdapter);
		initialload = false;
		} else {
		feedListAdapter.addAll(feedList);
		feedListAdapter.notifyDataSetChanged();
		}
		isLoading = false;
	}

	private class DownloadFilesTask extends AsyncTask<String, Integer, Void> {

		@Override
		protected void onPreExecute() {
			if (initialload){
				pDialog = new ProgressDialog(WordpressActivity.this);
				pDialog.setMessage(getResources().getString(R.string.loading));
				pDialog.setIndeterminate(true);
				pDialog.setCancelable(false);
				pDialog.show();
			} else {
				setProgressBarIndeterminateVisibility(Boolean.TRUE); 
			}
		}

		@Override
		protected void onPostExecute(Void result) {
			if (null != feedList) {
				updateList();
			}
			if (pDialog.isShowing()) {
				pDialog.dismiss();
			} else {
				setProgressBarIndeterminateVisibility(Boolean.FALSE);
			}
		}

		@Override
		protected Void doInBackground(String... params) {
			String url = params[0];
			url = url + Integer.toString(curpage);
            curpage = curpage + 1;
            
            Log.v("INFO", "Step 0, started");       
			// getting JSON string from URL
			JSONObject json = getJSONFromUrl(url);
			Log.v("INFO", "Step 2, got JsonObjoct");
			//parsing json data
			parseJson(json);
			return null;
		}
	}

	
	public JSONObject getJSONFromUrl(String url) {
		InputStream is = null;
		JSONObject jObj = null;
		String json = null;

		// Making HTTP request
		try {
			// defaultHttpClient
			DefaultHttpClient httpClient = new DefaultHttpClient();
			HttpPost httpPost = new HttpPost(url);

			HttpResponse httpResponse = httpClient.execute(httpPost);
			HttpEntity httpEntity = httpResponse.getEntity();
			is = httpEntity.getContent();

			BufferedReader reader = new BufferedReader(new InputStreamReader(
					is, "iso-8859-1"), 8);
			StringBuilder sb = new StringBuilder();
			String line = null;
			while ((line = reader.readLine()) != null) {
				sb.append(line + "\n");
			}
			is.close();
			json = sb.toString();
			Log.v("INFO", "Step 1, got Respons");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (ClientProtocolException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		try {
			jObj = new JSONObject(json);
		} catch (Exception e) {
			Log.e("JSON Parser", "Error parsing data " + e.toString());
		}

		// return JSON String
		return jObj;

	}

	public void parseJson(JSONObject json) {
		try {

			// parsing json object
			if (json.getString("status").equalsIgnoreCase("ok")) {
				JSONArray posts = json.getJSONArray("posts");

				feedList = new ArrayList<FeedItem>();

				for (int i = 0; i < posts.length(); i++) {
					Log.v("INFO", "Step 3: " + i + " of " + posts.length());
					JSONObject post = (JSONObject) posts.getJSONObject(i);
					FeedItem item = new FeedItem();
					item.setTitle(Html.fromHtml(post.getString("title")).toString());
					item.setDate(post.getString("date"));
					item.setId(post.getString("id"));
					item.setUrl(post.getString("url"));
					item.setContent(post.getString("content"));
					
					boolean thumbnailfound = false;
					
					try{
						String thumbnail = post.getString("thumbnail");
						if (null != thumbnail && thumbnail != "") {
							item.setThumbnailUrl(thumbnail);
							thumbnailfound = true;
						}
					} catch (JSONException e) { e.printStackTrace(); }

					JSONArray attachments = post.getJSONArray("attachments");
					
					if (null != attachments && attachments.length() > 0) {
						JSONObject attachment = attachments.getJSONObject(0);
						if (attachment != null)
								item.setAttachmentUrl(attachment.getString("url"));		
						if (!thumbnailfound){
							JSONObject thumbnail = attachments.getJSONObject(0).getJSONObject("images").getJSONObject("thumbnail");
							item.setThumbnailUrl(thumbnail.getString("url"));
							Log.v("Thumburl", thumbnail.getString("url"));
						}
					}

					feedList.add(item);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
			MenuInflater inflater = getMenuInflater();
	    	inflater.inflate(R.menu.refresh_menu, menu);
	    
	    	//set & get the search button in the actionbar 
		    final SearchView searchView = new SearchView(this);

	        searchView.setQueryHint(getResources().getString(R.string.video_search_hint));
	        searchView.setBackgroundColor(Color.WHITE);
	        searchView.setOnQueryTextListener(new OnQueryTextListener() {
	        	
	        	@Override
	        	public boolean onQueryTextSubmit(String query) {
	        		try {
						query = URLEncoder.encode(query, "UTF-8");
					} catch (UnsupportedEncodingException e) {
						e.printStackTrace();
					}
	        		searchView.clearFocus();
	        		initialload = true;
	    	    	isLoading = true;
	        		curpage = 1;
	        		feedList.clear();
	        		feedListView.setAdapter(null);
	        		baseurl = searchurl + query + searchurlend;
	        		new DownloadFilesTask().execute(baseurl);
	            return true;
	        	}

	        	@Override
	        	public boolean onQueryTextChange(String newText) {
	        		return false;
	        	}

	        });
	        
	        //TODO make menu an xml item
	        menu.add("search")
	         	.setIcon(R.drawable.ic_action_search)
	         	.setActionView(searchView)
	         	.setShowAsAction(MenuItem.SHOW_AS_ACTION_IF_ROOM|MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
	        
	        return super.onCreateOptionsMenu(menu);
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
	    		baseurl = pageurl;
	    		feedList.clear();
	    		feedListView.setAdapter(null);
	    		new DownloadFilesTask().execute(baseurl);
	    	} else {
	    		Toast.makeText(getBaseContext(), getString(R.string.already_loading), Toast.LENGTH_LONG).show();
	    	}
        default:
            return super.onOptionsItemSelected(item);
        }
    }

}
