package com.universal.maps;

import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.MapFragment;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;
import com.jeremyfeinstein.slidingmenu.lib.SlidingMenu;
import com.universal.R;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.Html;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.widget.TextView;

public class MapActivity extends Activity {
	
	private SlidingMenu slidingMenu ;
	
	String start;
	String menu;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_maps);
        
       //Slding menu
        slidingMenu = new SlidingMenu(this);
        slidingMenu.setMode(SlidingMenu.LEFT);
        slidingMenu.setTouchModeAbove(SlidingMenu.TOUCHMODE_MARGIN);
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

        // Get a handle to the Map Fragment
        GoogleMap map = ((MapFragment) getFragmentManager()
                .findFragmentById(R.id.map)).getMap();
        
        Double lat =  Double.parseDouble(getResources().getString(R.string.latitude));
        Double lon = Double.parseDouble(getResources().getString(R.string.longitude));
        
        LatLng loc = new LatLng(lat, lon);

        map.moveCamera(CameraUpdateFactory.newLatLngZoom(loc, getResources().getInteger(R.integer.zoomlevel)));

        Marker marker = map.addMarker(new MarkerOptions()
                .title(getResources().getString(R.string.marker_title))
                .snippet(getResources().getString(R.string.market_subtitle))
                .position(loc));
        marker.showInfoWindow();
        
        TextView text = (TextView) findViewById(R.id.textViewInfo);
        text.setText(Html.fromHtml(getResources().getString(R.string.maps_text)));
        
	    if ((getResources().getString(R.string.ad_visibility).equals("0"))){
	        	// Look up the AdView as a resource and load a request.
	        	AdView adView = (AdView) findViewById(R.id.adView);
	        	AdRequest adRequest = new AdRequest.Builder().build();
	        	adView.loadAd(adRequest);
	    }
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
  
}