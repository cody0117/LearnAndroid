package com.universal.yt.ui;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.os.AsyncTask;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AbsListView;
import android.widget.ListView;
import android.widget.SearchView;
import android.widget.Toast;
import android.widget.SearchView.OnQueryTextListener;

import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;
import com.jeremyfeinstein.slidingmenu.lib.SlidingMenu;

import com.universal.R;
import com.universal.yt.RetrieveVideos;
import com.universal.yt.ReturnItem;
import com.universal.yt.Video;
import com.universal.yt.VideosAdapter;

/**
 * This activity is used to display a list of vidoes
 */
public class VideosActivity extends Activity {
    // A reference to our list that will hold the video details
	private ListView listView;
	private SlidingMenu slidingMenu ;
	public static ProgressDialog pDialog;
	private static Context context;
    ArrayList<Video> videoList;
    VideosAdapter adapter;
	
	String perpage = "15";
	String pagetoken;
	
	String baseurl;
	String searchurl;
	
	Boolean initialload = true;
	Boolean isLoading = true;
	
	public String GOOGLE_API_KEY;


	String menu;
	
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_INDETERMINATE_PROGRESS);
        setContentView(R.layout.activity_youtube);
        
        GOOGLE_API_KEY = getResources().getString(R.string.youtube_api_key);
        
        //setting the number of videos that will be displayed 
        SharedPreferences prefs = PreferenceManager
        .getDefaultSharedPreferences(VideosActivity.this);
        String listPrefs = prefs.getString("listpref", "15");
        perpage = listPrefs;
        
        //Load the youtube videos
        getUserYouTubeFeed();
        
        //Declaring a globally accesible context (toasting from error)
        VideosActivity.context = getApplicationContext();
        
        listView = (ListView) findViewById(R.id.videosListView);
        listView.setOnItemClickListener(new OnItemClickListener(){
        	@Override
        	public void onItemClick(AdapterView<?> parent, View view, int position, long id) { 
        		Object o = listView.getItemAtPosition(position);
        		Video video = (Video) o;
        		Intent intent = new Intent(VideosActivity.this, VideoDetailActivity.class);
        		Bundle bundle = new Bundle();
        		bundle.putString("keyTitle", video.getTitle());
        		bundle.putString("keyDescription", video.getDescription());
        		bundle.putString("keyImage", video.getImage());
        		bundle.putString("keyId", video.getId());
        		bundle.putString("keyDate", video.getUpdated());
        		intent.putExtras(bundle);
    		    startActivity(intent);
        	}
    	});  
        listView.setOnScrollListener(new OnScrollListener() {
			@Override
			public void onScroll(AbsListView view, int firstVisibleItem,
			        int visibleItemCount, int totalItemCount) {

			    if (listView == null)
			        return ;

			    if (listView.getCount() == 0)
			        return ;

			    int l = visibleItemCount + firstVisibleItem;
			    if (l >= totalItemCount && !isLoading) {
			        // It is time to add new data. We call the listener
			    	if (null != pagetoken){
			    		isLoading = true;
			    		Log.v("INFO", "Getting more items");
			    		new DownloadFilesTask().execute(baseurl);
			    	}
			    } 
			}

			@Override
			public void onScrollStateChanged(AbsListView view, int scrollState) {}
		});

        //Sliding menu
        slidingMenu = new SlidingMenu(this);
        slidingMenu.setMode(SlidingMenu.LEFT);
        slidingMenu.setTouchModeAbove(SlidingMenu.TOUCHMODE_FULLSCREEN);
        slidingMenu.setBehindOffsetRes(R.dimen.slidingmenu_offset);
        slidingMenu.setFadeDegree(0.35f);
        slidingMenu.attachToActivity(this, SlidingMenu.SLIDING_WINDOW);
        slidingMenu.setMenu(R.layout.slidingmenu);
        
        getActionBar().setDisplayHomeAsUpEnabled(true);
        
        getWindow().setWindowAnimations(0);
        
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

    }
      
    public void getUserYouTubeFeed(){ 	
    	//retrieve string from intent
    	String username = getIntent().getStringExtra("YOUTUBE_CONTENT");
    	String apikey = getString(R.string.youtube_api_key);
    	
    	//get playlist and username (which we won't use):
    	String[] parts = username.split(",");
    	username = parts[0];
    			
    	//start video retrieval process     
    	baseurl = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=" +username+ "&maxResults=" + perpage + "&key=" +apikey;
    	Log.v("apiurl", baseurl);
    	new DownloadFilesTask().execute(baseurl);
    }
    
    public void getSearchYouTubeFeed(String query){ 	
    	//retrieve string from intent
    	String username = getIntent().getStringExtra("YOUTUBE_CONTENT");
    	String apikey = getString(R.string.youtube_api_key);
    	
    	String[] parts = username.split(",");
    	username = parts[1];
    	
    	//start video retrieval process        
    	try {
			query = URLEncoder.encode(query, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
    	
    	baseurl = ("https://www.googleapis.com/youtube/v3/search?part=snippet&type=video&channelId="+username+"&q="+query+"&maxResults="+perpage+ "&key=" + apikey);
    	
    	new DownloadFilesTask().execute(baseurl);
    }
    
	public void updateList() {	
		if (initialload){
			 adapter = new VideosAdapter(VideosActivity.this, 0, videoList, listView);
		     listView.setAdapter(adapter);
		     initialload = false;
		} else {
			 adapter.addAll(videoList);
			 adapter.notifyDataSetChanged();
		}
		isLoading = false;

	}
    
    private class DownloadFilesTask extends AsyncTask<String, Integer, Void> {

		@Override
		protected void onPreExecute() {
			if (initialload){
				pDialog = new ProgressDialog(VideosActivity.this);
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
			if (null != videoList) {
				updateList();
			} else {
				Log.v("Info", "");
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
			if (null != pagetoken){
				url = url + "&pageToken=" + pagetoken;
			}
            
            Log.v("Info", url);
            ReturnItem item = RetrieveVideos.getVideos(url);
            videoList = item.getList();
            pagetoken = item.getPageToken();
			return null;
		}
	}
    
	public static Context getAppContext() {
        return VideosActivity.context;
    }
	
	@Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if ( keyCode == KeyEvent.KEYCODE_MENU ) {
            this.slidingMenu.toggle();
            return true;
        }
        return super.onKeyDown(keyCode, event);
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
    	
	    //set & get the search button in the actionbar 
		final SearchView searchView = new SearchView(this);

	    searchView.setQueryHint(getResources().getString(R.string.video_search_hint));
	    searchView.setBackgroundColor(Color.WHITE);
	    searchView.setOnQueryTextListener(new OnQueryTextListener() {
	        	
	    	@Override
	    	public boolean onQueryTextSubmit(String query) {
	    		isLoading = true;
	    		initialload = true;
	        	pagetoken = null;
	        	listView.setAdapter(null);
	        	adapter.clear();
	        	getSearchYouTubeFeed(query);
	        	searchView.clearFocus();
	            return true;
	       }

	       @Override
	       public boolean onQueryTextChange(String newText) {
	        	return false;
	       }

	    });
	        
	    String username = getIntent().getStringExtra("YOUTUBE_CONTENT");
    	String[] parts = username.split(",");

	    if (parts.length == 2){
	         menu.add("search")
	         	.setIcon(R.drawable.ic_action_search)
	         	.setActionView(searchView)
	         	.setShowAsAction(MenuItem.SHOW_AS_ACTION_IF_ROOM|MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
	    }
	    //TODO make menu an xml item

	    return super.onCreateOptionsMenu(menu);
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
	    		pagetoken = null;
	    		videoList.clear();
	    		listView.setAdapter(null);
	    		getUserYouTubeFeed();
	    	} else {
	    		Toast.makeText(getBaseContext(), getString(R.string.already_loading), Toast.LENGTH_LONG).show();
	    	}
        default:
            return super.onOptionsItemSelected(item);
        }
    }
	
}