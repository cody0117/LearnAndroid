package com.universal.web;

import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;
import com.jeremyfeinstein.slidingmenu.lib.SlidingMenu;
import com.universal.R;
import com.universal.fav.FavDbAdapter;
import com.universal.fav.ui.FavActivity;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.annotation.SuppressLint;
import android.app.ActionBar;
import android.app.ActionBar.LayoutParams;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Bundle;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings.PluginState;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

/**
 *  This activity is used to display webpages
 */

public class WebviewActivity extends Activity 
{
	private WebView browser;

	private ProgressBar progressBar;
	
	private SlidingMenu slidingMenu;
	
	int stateForward = 1;
	int stateBack = 1;
	
	ImageButton webBackButton;
	ImageButton webForwButton;
	
	String start;
	String menu;
	
	private FavDbAdapter mDbHelper;
	
 
	@Override
	public void onCreate(Bundle savedInstanceState)
	{
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_webview);
	
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
		actionBar.setDisplayShowCustomEnabled(true);
		View view = getLayoutInflater().inflate(R.layout.activity_webview_actionbar, null);
		LayoutParams lp = new LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT, Gravity.RIGHT | Gravity.CENTER_VERTICAL);
		actionBar.setCustomView(view, lp);
		actionBar.setCustomView(view);
		
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
		
	    webBackButton=(ImageButton)findViewById(R.id.goBack);
	    webForwButton=(ImageButton)findViewById(R.id.goForward);
	    
	    webBackButton.setOnClickListener( new View.OnClickListener(){
	        @Override
	        public void onClick(View v) {
	            if(browser.canGoBack())
	                browser.goBack();
	        }
	    });
	    webForwButton.setOnClickListener( new View.OnClickListener(){
	        @Override
	        public void onClick(View v) {
	            if(browser.canGoForward())
	                browser.goForward();
	        }
	    });
	    
		browser = (WebView) findViewById(R.id.webView);

		//settings some settings like zooming etc in seperate method for suppresslint
		browserSettings();
		
		//Setting
		browser.setWebChromeClient(new WebChromeClient() {
		});
		
		browser.setWebViewClient(new WebViewClient()
		{
			// Make sure any url clicked is opened in webview
			@Override
			public boolean shouldOverrideUrlLoading(WebView view, String url)
			{			
	            if ( (url.contains("market://") || url.contains("mailto:") || url.contains("play.google") || url.contains("tel:")  || url.contains("vid:")) == true ) {
	                // Load new URL Don't override URL Link
	            	view.getContext().startActivity(
	                new Intent(Intent.ACTION_VIEW, Uri.parse(url)));
	            
	                return true;
	            }
	             // Return true to override url loading (In this case do nothing).
	             return false;
			}
			
			@Override  
		    public void onPageFinished(WebView view, String url) {
		        super.onPageFinished(browser, url);
		        adjustControls();
		    }  
					
			
			//handeling errors
			@Override
			public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) 
			{
				AlertDialog.Builder builder = new AlertDialog.Builder(WebviewActivity.this);
				builder.setMessage(description).setPositiveButton(getResources().getString(R.string.ok), null).setTitle(getResources().getString(R.string.error_received));				
				builder.show();
			 }
			
			public void onPageStarted(WebView view, String url,  Bitmap favicon) {			
				adjustControls();
		        
			 }
			 


		});

		//load url (if connection available
		if(checkConnectivity())
		{
			String weburl = getIntent().getStringExtra("WEB_URL");
			browser.loadUrl(weburl);
		}
		
		progressBar = (ProgressBar) findViewById(R.id.progressbar);

		//has all to do with progress bar
		browser.setWebChromeClient(new WebChromeClient()
		{
			
			@Override
			public void onProgressChanged(WebView view, int progress)
			{
				progressBar.setProgress(0);
				progressBar.setVisibility(View.VISIBLE);
				WebviewActivity.this.setProgress(progress * 1000);

				progressBar.incrementProgressBy(progress);

				if (progress == 100)
				{
					progressBar.setVisibility(View.GONE);
					
				}
			}
			

		});
		
		//setting an on touch listener
		browser.setOnTouchListener(new View.OnTouchListener() 
		{ 
			@Override
			public boolean onTouch(View v, MotionEvent event) 
			{
			           switch (event.getAction()) 
			           { 
			               case MotionEvent.ACTION_DOWN: 
			               case MotionEvent.ACTION_UP: 
			                   if (!v.hasFocus()) 
			                   { 
			                       v.requestFocus(); 
			                   }  
			                   break; 
			           } 
			           return false; 
			        }		
			});
	    }//of oncreate


	    // using the back button of the device
		@Override
		public void onBackPressed()
		{
			String fav = getIntent().getStringExtra("keyFavorites");
			if ( slidingMenu.isMenuShowing()) {
	            slidingMenu.toggle();
	        } else if (browser.canGoBack()) {
				browser.goBack();
			} else if ("true".equals(fav)) {
	 	    	startActivity(new Intent(this, FavActivity.class));
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
	    public boolean onKeyDown(int keyCode, KeyEvent event) {
	        if ( keyCode == KeyEvent.KEYCODE_MENU ) {
	            this.slidingMenu.toggle();
	            return true;
	        }
	        return super.onKeyDown(keyCode, event);
	    }
		
		@Override
	    public boolean onOptionsItemSelected(MenuItem item) {
	        switch (item.getItemId()) {
	        case android.R.id.home:
	            this.slidingMenu.toggle();
	            return true;
	        case R.id.share:
	        	shareURL();
	            return true;
	        case R.id.favorite:
	        	mDbHelper = new FavDbAdapter(this);
	            mDbHelper.open();
	            
	            String title = browser.getTitle();
	            String url = browser.getUrl();
	            
	            if(mDbHelper.checkEvent(title, "", "", url, "", "", "web")) {
	              // This item is new
	         	   mDbHelper.addFavorite(title, "", "", url, "", "", "web");
	         	    Toast toast = Toast.makeText(this, getResources().getString(R.string.favorite_success), Toast.LENGTH_LONG);
	                toast.show();
	            } else {
	                Toast toast = Toast.makeText(this, getResources().getString(R.string.favorite_duplicate), Toast.LENGTH_LONG);
	                toast.show();
	            }
	            return true;
	        default:
	            return super.onOptionsItemSelected(item);
	        }
	    }
		
		@Override
		public boolean onCreateOptionsMenu(Menu menu) {
		    MenuInflater inflater = getMenuInflater();
		    inflater.inflate(R.menu.webview_menu, menu);
		    return true;
		}
		
		
		
		
		
		//Checking for an internet connection
		private boolean checkConnectivity()
		{
			boolean enabled = true;
	
			ConnectivityManager connectivityManager = (ConnectivityManager) this.getSystemService(Context.CONNECTIVITY_SERVICE);
			NetworkInfo info = connectivityManager.getActiveNetworkInfo();
			
			if ((info == null || !info.isConnected() || !info.isAvailable()))
			{
				
		    	  TextView title = new TextView(this);
		    	  title.setText(getResources().getString(R.string.alert));
		    	  title.setTextSize(23f);
		    	  //title.setLayoutParams(ViewGroup.MATCH_PARENT);
		    	  title.setPadding(20, 15, 10, 15);
		    	  	
				enabled = false;
				Builder builder = new Builder(this);
				builder.setIcon(android.R.drawable.ic_dialog_alert);
				builder.setMessage(getResources().getString(R.string.no_connection));
				builder.setCancelable(false);
				builder.setNeutralButton(getResources().getString(R.string.ok), null);
				builder.setCustomTitle(title);
				builder.create().show();		
			}
			return enabled;			
		}
		
		@Override
		public void onConfigurationChanged(Configuration newConfig) {
		  super.onConfigurationChanged(newConfig);
		}
		
		public void adjustControls(){
			if(browser.canGoBack())
	        {
	            webBackButton.setColorFilter(Color.argb(255, 255, 255, 255));
	        }
	        else
	        {
	            webBackButton.setColorFilter(Color.argb(255, 0, 0, 0));

	        }
	        if(browser.canGoForward())
	        {
	            webForwButton.setColorFilter(Color.argb(255, 255, 255, 255));
	            
	        }
	        else
	        {
	            webForwButton.setColorFilter(Color.argb(255, 0, 0, 0));
	        }
		}
 
	    //sharing
	    private void shareURL() {
	        Intent shareIntent = new Intent(Intent.ACTION_SEND);
	        shareIntent.setType("text/plain");
	        String appname = getString(R.string.app_name);
	        shareIntent.putExtra(Intent.EXTRA_TEXT, (getResources().getString(R.string.web_share_begin)) + appname + getResources().getString(R.string.web_share_end) + browser.getUrl());
	        startActivity(Intent.createChooser(shareIntent, getResources().getString(R.string.share)));
	    }
	    
	    @SuppressLint("SetJavaScriptEnabled")
		@SuppressWarnings("deprecation")
		private void browserSettings() {
	    	// set javascript and zoom and some other settings
			browser.getSettings().setJavaScriptEnabled(true);
			browser.getSettings().setBuiltInZoomControls(false);
			browser.getSettings().setAppCacheEnabled(true);
			browser.getSettings().setDatabaseEnabled(true);
			browser.getSettings().setDomStorageEnabled(true);
		
			//enable all plugins (flash)
			browser.getSettings().setPluginState(PluginState.ON);
	    } 
	   
}

        
	    
