package com.universal;

import java.util.List;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.view.View;
import android.view.Window;
import android.widget.ExpandableListView;
import android.widget.TextView;
import android.widget.Toast;

import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.ImageLoaderConfiguration;
import com.universal.R;
import com.universal.fav.ui.FavActivity;

/**
 *  This activity is used to let the user chose the default page, and 
 *  to redirect the user to that page on start.
 */

public class MainActivity extends Activity implements ExpandableListView.OnChildClickListener{
	
    ExpandableListView sectionListView;
    
    SharedPreferences prefs;
	
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    	//Check if the user comes from settings
    	String fromsettings = getIntent().getStringExtra("CHANGE");
        
        //Get preferences regarding sliding menu on boot
        prefs = PreferenceManager
        	    .getDefaultSharedPreferences(MainActivity.this);
        	 
       	//Checking if the user would prefer to show the menu on start
        boolean checkBox = prefs.getBoolean("checkBox", false);

        getWindow().setWindowAnimations(0);
        
		  // New imageloader	
		initializeImageLoader(this);
        
        //Get the value of the default page
    	int groupPosition = (int) prefs.getLong("StartSection", -1); 
    	int childPosition = (int) prefs.getLong("StartSectionItem", -1); 
    	
        if (childPosition != -1 && !"true".equals(fromsettings)) { //If not firststart or from settings 
            if (!isOnline(this)) { //checking if we have a internet connection
                startActivity(new Intent(MainActivity.this, FavActivity.class).putExtra("NO_CONNECTION", "true"));
            } else {
        	    if (fromsettings  != "true") {//User is not coming from settings and has internet, so redirect go to activity
        	    	try {
        	    		SectionItem oSectionItem = SlidingMenuFragment.createMenu().get(groupPosition).getSectionItems().get(childPosition);
        	      
        	    		Class<?> activity = oSectionItem.getActivity();
        	    		String name = oSectionItem.getName();
        	    		String value = oSectionItem.getValue();
        	    		
        	    		if (checkBox == true){
        	    			Intent i = new Intent(this, activity);
        	    			i.putExtra(name, value);
        	    			i.putExtra("MENU", "true");
        	    			startActivity(i);
        	    		}else {
        	    			Intent i = new Intent(this, activity);
        	    			i.putExtra(name, value);
        	    			startActivity(i);
        	    		}
        	    	} catch (Exception e){
        	    		AlertDialog.Builder ab = null;
        	     	    ab = new AlertDialog.Builder(this);
        	     	    ab.setMessage(getResources().getString(R.string.upgrade_text));
        	     	    ab.setPositiveButton(getResources().getString(R.string.ok), null);
        	     	    ab.show();
        	    	}     	      
        	   } 
           }
        } 
        //Loading interface for setting default page
        
        //Hide actionbar if firstlaunch
        if (!"true".equals(fromsettings)){
        getWindow().requestFeature(Window.FEATURE_ACTION_BAR);
        getActionBar().hide();
        }
        
        setContentView(R.layout.activity_main);
        
        //Change text from welcome to "default page" if user comes from settings.
        if ("true".equals(fromsettings)){
        	TextView welcometitle = (TextView)  this.findViewById(R.id.welcometitle);
        	TextView welcomedescription = (TextView)  this.findViewById(R.id.welcomedescription);
        	welcometitle.setText(getResources().getString(R.string.settings_default_set));
        	welcometitle.setTextColor(getResources().getColor(android.R.color.black));
        	welcomedescription.setTextColor(getResources().getColor(android.R.color.black));
        	
        	View mainview = findViewById(R.id.main_view);
        	mainview.setBackgroundColor(getResources().getColor(android.R.color.white));
        	
        }

        List<Section> sectionList = SlidingMenuFragment.createMenu();
        
        //View view = inflater.inflate(R.layout.slidingmenu_fragment, container, false);
        this.sectionListView = (ExpandableListView) findViewById(R.id.slidingmenu_chose);
        this.sectionListView.setGroupIndicator(null);
        
        SectionListAdapter sectionListAdapter = new SectionListAdapter(this, sectionList);
        this.sectionListView.setAdapter(sectionListAdapter); 
        
        this.sectionListView.setOnGroupClickListener(new ExpandableListView.OnGroupClickListener() {
              @Override
              public boolean onGroupClick(ExpandableListView parent, View v, int groupPosition, long id) {
                return true;
              }
            });
        
        this.sectionListView.setOnChildClickListener(this);
        
        int count = sectionListAdapter.getGroupCount();
        for (int position = 0; position < count; position++) {
            this.sectionListView.expandGroup(position);
        }
    }

    public boolean onChildClick(ExpandableListView parent, View v,
            int groupPosition, int childPosition, long id) {
    	prefs.edit().putLong("StartSectionItem", childPosition).commit();
    	prefs.edit().putLong("StartSection", groupPosition).commit();
    	Toast.makeText(this, getResources().getString(R.string.default_set_success),Toast.LENGTH_SHORT).show();
        
        SectionItem oSectionItem = SlidingMenuFragment.createMenu().get(groupPosition).getSectionItems().get(childPosition);
    	
    	Class<?> activity = oSectionItem.getActivity();
    	String name = oSectionItem.getName();
    	String value = oSectionItem.getValue();
    	
    	startActivity(new Intent(this, activity).putExtra(name, value));
    	return false;
    }
    
    public static ImageLoader initializeImageLoader(Context c){
    	ImageLoader imageLoader = ImageLoader.getInstance();
    	if (!imageLoader.isInited()){	
    		//creating a configuration for imageloader
    		DisplayImageOptions options = new DisplayImageOptions.Builder()
    		.cacheInMemory(true)
    		.cacheOnDisk(true)
    		.build();
		
    		//set the configuration for imageloader
    		ImageLoaderConfiguration config = new ImageLoaderConfiguration.Builder(c)
    		.defaultDisplayImageOptions(options)
    		.build();
    		imageLoader.init(config);
    	}
    	return imageLoader;
    }
    

    public static boolean isOnline(Context c) {
    	ConnectivityManager cm = (ConnectivityManager) 
    	c.getSystemService(Context.CONNECTIVITY_SERVICE);
    	NetworkInfo ni = cm.getActiveNetworkInfo();
    	 
    	if (ni != null && ni.isConnected())
    	  return true;
    	else
    	  return false;
    }
}