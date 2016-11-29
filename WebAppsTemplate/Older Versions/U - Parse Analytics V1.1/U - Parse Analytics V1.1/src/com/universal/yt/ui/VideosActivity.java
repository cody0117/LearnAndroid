package com.universal.yt.ui;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.preference.PreferenceManager;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.SearchView;
import android.widget.SearchView.OnQueryTextListener;

import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;
import com.jeremyfeinstein.slidingmenu.lib.SlidingMenu;

import com.universal.R;
import com.universal.yt.RetrieveVideos;
import com.universal.yt.Library;
import com.universal.yt.Video;
import com.universal.yt.VideosListView.VideoClickListener;
import com.universal.yt.VideosListView;

/**
 * This activity is used to display a list of vidoes
 */
public class VideosActivity extends Activity implements VideoClickListener {
    // A reference to our list that will hold the video details
	private VideosListView listView;
	private SlidingMenu slidingMenu ;
	public static ProgressDialog progressDialog;
	private static Context context;
	
	//Default number of shown results
    private String youtubeResults = "15";
	
	//Keeping track of where to start with the results
	private String startIndex = "1";
    
	public String getIndex() {
        return startIndex;
    }
    
    public void setIndex(String index) {
        startIndex = index;
    }
	
	public String GOOGLE_API_KEY;

	String start;
	String menu;
	
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_youtube);
        
        GOOGLE_API_KEY = getResources().getString(R.string.youtube_api_key);
        
        //setting the number of videos that will be displayed 
        SharedPreferences prefs = PreferenceManager
        .getDefaultSharedPreferences(VideosActivity.this);
        String listPrefs = prefs.getString("listpref", "15");
        youtubeResults = listPrefs;
        
        //Load the youtube videos
        getUserYouTubeFeed();
        
        //Declaring a globally accesible context (toasting from error)
        VideosActivity.context = getApplicationContext();
        
        listView = (VideosListView) findViewById(R.id.videosListView);
        listView.setOnVideoClickListener(this);       

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
        start = getIntent().getStringExtra("START");
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
        
        //setting the buttons at the bottom of the listview and their onclick listeners
        View footerView = ((LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE)).inflate(R.layout.activity_youtube_footer, null, false);
        listView.addFooterView(footerView);
        
        Button btnMore = (Button) findViewById(R.id.btnGetMoreResults);
        
        String end = getResources().getString(R.string.video_navigation_end);
        btnMore.setText(getResources().getString(R.string.video_navigation_next)+youtubeResults+end);
       
        btnMore.setOnClickListener(new View.OnClickListener() {
      	  public void onClick(View arg0) {
     		ShowMore();    		 
      	  }  
        });
        
        Button btnLess = (Button) findViewById(R.id.btnGetLessResults);
        
        btnLess.setText(getResources().getString(R.string.video_navigation_previous)+youtubeResults+end);
       
        btnLess.setOnClickListener(new View.OnClickListener() {
      	  public void onClick(View arg0) {
      		ShowLess();    		 
      	  }  
        });
        
        //there is nothing to go back to, we are starting at 1, so hide this butotn
        btnLess.setVisibility(View.GONE);

    }
    
    public void ShowMore () {
    	   //We get the current startindex (@firstload it will be 1) and add x to it, to display the next x videos
		   String newresults = Integer.toString(Integer.parseInt(getIndex()) + Integer.parseInt(youtubeResults));
		   setIndex(newresults);
		   // Toast.makeText(VideosActivity.getAppContext(), "Number: "+newresults, Toast.LENGTH_SHORT).show();
		   Button btnLess = (Button) findViewById(R.id.btnGetLessResults);
		   btnLess.setVisibility(View.VISIBLE);
		 getUserYouTubeFeed();
    }
    
    public void ShowLess () {
    	   //We get the current startindex (@firstload it will be 1) and add z to it, to display the next x videos
		   String newresults = Integer.toString(Integer.parseInt(getIndex()) + Integer.parseInt("-"+youtubeResults));
		   setIndex(newresults);
		   if(getIndex().equals("1")) {
		   Button btnLess = (Button) findViewById(R.id.btnGetLessResults);
		   btnLess.setVisibility(View.GONE);
		   }
		   //Toast.makeText(VideosActivity.getAppContext(), "Number: "+newresults, Toast.LENGTH_SHORT).show();
		 
		 getUserYouTubeFeed();
    }
    
    public void getUserYouTubeFeed(){ 	
    	//retrieve string from intent
    	String username = getIntent().getStringExtra("YOUTUBE_CONTENT");
    	//start video retrieval process     
    	String apiUrl;
    	if (username.startsWith("list:")){
    		username = username.replaceFirst("^list:", "");
    		apiUrl = ("https://gdata.youtube.com/feeds/api/playlists/"+username+"?v=2&alt=jsonc&orderby=published&max-results="+youtubeResults+"&start-index="+getIndex());
    	} else if (username.startsWith("user:")) {
    		username = username.replaceFirst("^user:", "");
    		apiUrl = ("https://gdata.youtube.com/feeds/api/videos?author="+username+"&v=2&alt=jsonc&orderby=published&max-results="+youtubeResults+"&start-index="+getIndex());
    	} else {
    		//assuming that some people might forget to have updated the apps settings, we will automatically pick username
    		apiUrl = ("https://gdata.youtube.com/feeds/api/videos?author="+username+"&v=2&alt=jsonc&orderby=published&max-results="+youtubeResults+"&start-index="+getIndex());
    	}
    	Log.v("apiurl", username);
    	new Thread(new RetrieveVideos(responseHandler, apiUrl)).start();
    	//show progressDialog
    	progressDialog = ProgressDialog.show(VideosActivity.this, "", getResources().getString(R.string.loading));
    }
    
    public void getSearchYouTubeFeed(String query){ 	
    	//setting everything back to 0
    	Button btnLess = (Button) findViewById(R.id.btnGetLessResults);
    	Button btnMore = (Button) findViewById(R.id.btnGetMoreResults);
    	btnMore.setVisibility(View.GONE);
    	btnLess.setVisibility(View.GONE);
    	setIndex("1");
    	//retrieve string from intent
    	String username = getIntent().getStringExtra("YOUTUBE_CONTENT");
    	//start video retrieval process        
    	String apiUrl;
    	query = query.replace(" ", "+");
    	if (username.startsWith("list:")){
    		username = username.replaceFirst("^list:", "");
    		apiUrl = ("https://gdata.youtube.com/feeds/api/playlists/"+username+"?q="+query+"&v=2&alt=jsonc&orderby=relevance");
    	} else if (username.startsWith("user:")) {
    		username = username.replaceFirst("^user:", "");
    		apiUrl = ("https://gdata.youtube.com/feeds/api/users/"+username+"/uploads?q="+query+"&v=2&alt=jsonc&orderby=relevance");
    	} else {
    		//assuming that some people might forget to have updated the apps settings, we will automatically pick username
    		apiUrl = ("https://gdata.youtube.com/feeds/api/users/"+username+"/uploads?q="+query+"&v=2&alt=jsonc&orderby=relevance");
    	}
    	
    	new Thread(new RetrieveVideos(responseHandler, apiUrl)).start();
    	//show progressDialog
    	progressDialog = ProgressDialog.show(VideosActivity.this, "", getResources().getString(R.string.loading));
    }
    
	@SuppressLint("HandlerLeak")
	Handler responseHandler = new Handler() {
		public void handleMessage(Message msg) {
			populateListWithVideos(msg);
		};
	};
	
	
	private void populateListWithVideos(Message msg) {
		Library lib = (Library) msg.getData().get(RetrieveVideos.LIBRARY);
		listView.setVideos(lib.getVideos());
		progressDialog.dismiss();
	}
	

	public static Handler UIHandler;

	static 
	{
	    UIHandler = new Handler(Looper.getMainLooper());
	}
	public static void runOnUI(Runnable runnable) {
	    UIHandler.post(runnable);
	}
	
	public static Context getAppContext() {
        return VideosActivity.context;
    }
	
	// Is called when the user clicks the video	
	@Override
	public void onVideoClicked(Video video) {
		Intent intent = new Intent(this,VideoDetailActivity.class);
		 Bundle bundle = new Bundle();
		 bundle.putString("keyTitle", video.getTitle());
		 bundle.putString("keyDescription", video.getDescription());
		 bundle.putString("keyId", video.getId());
		 bundle.putString("keyDate", video.getUpdated());
		 intent.putExtras(bundle);
		      startActivity(intent);
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
        } else if ("true".equals(start)) {
        	Intent startMain = new Intent(Intent.ACTION_MAIN);
        	startMain.addCategory(Intent.CATEGORY_HOME);
        	startMain.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        	startActivity(startMain);
     	} else {
     	    super.onBackPressed();  
        }
    }

	
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
	        //set & get the search button in the actionbar 
		    SearchView searchView = new SearchView(this);

	        searchView.setQueryHint(getResources().getString(R.string.video_search_hint));
	        searchView.setBackgroundColor(Color.WHITE);
	        searchView.setOnQueryTextListener(new OnQueryTextListener() {
	    	// make the text readable
	        @Override
	        public boolean onQueryTextSubmit(String query) {
	        	getSearchYouTubeFeed(query);
	            return true;
	        }

	        @Override
	        public boolean onQueryTextChange(String newText) {
	            return false;
	        }

	    });
	        
	    String username = getIntent().getStringExtra("YOUTUBE_CONTENT");
	        
	    if (!username.startsWith("list:")){
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
        default:
            return super.onOptionsItemSelected(item);
        }
    }
	
}