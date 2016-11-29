package com.universal;


import com.jeremyfeinstein.slidingmenu.lib.SlidingMenu;
import com.universal.rss.ServiceStarter;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.Preference.OnPreferenceClickListener;
import android.preference.PreferenceActivity;
import android.preference.SwitchPreference;
import android.text.Html;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.widget.Toast;

/**
 *  This activity is used to show a settings page to the user
 */

public class SettingsActivity extends PreferenceActivity{
	
private SlidingMenu slidingMenu ;

String start;
String menu;
 
@SuppressWarnings("deprecation") //
protected void onCreate(Bundle savedInstanceState) {
   super.onCreate(savedInstanceState);
   addPreferencesFromResource(R.xml.activity_settings);
   
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
   
   //open play store page
   Preference preferencerate = findPreference("rate");
   preferencerate.setOnPreferenceClickListener(new OnPreferenceClickListener() {
       @Override
       public boolean onPreferenceClick(Preference preference) {
    	   Uri uri = Uri.parse("market://details?id=" + SettingsActivity.this.getPackageName());
           Intent goToMarket = new Intent(Intent.ACTION_VIEW, uri);
           try {
           	startActivity(goToMarket);
           } catch (ActivityNotFoundException e) {
           	Toast.makeText(SettingsActivity.this,"Could not open Play Store",Toast.LENGTH_SHORT).show();
           return true;
           }
		return true;
       }
   });
   
   final ServiceStarter alarm = new ServiceStarter();
   
  //open default page
   Preference preferenceservice = findPreference("switchRss");
   preferenceservice.setOnPreferenceChangeListener(new OnPreferenceChangeListener() {
    @SuppressLint("CommitPrefEdits")
	@Override
       public boolean onPreferenceChange(Preference preference, Object newvalue) {
    	   boolean switched = ((SwitchPreference) preference)
                   .isChecked();
    	   
    	   // Create object of SharedPreferences.
    	   SharedPreferences sharedPref= getSharedPreferences("rssnotify", 0);
    	  //now get Editor
    	   SharedPreferences.Editor editor= sharedPref.edit();
   
    	   if (switched == false){
    		   alarm.setAlarm(SettingsActivity.this);
    		   //now, just to be sure, where going to set a value to check if notifications is really enabled
    		   editor.putString("notify", "true");
      	       //commits your edits
      	       editor.commit();
    	   } else {
    		   alarm.cancelAlarm(SettingsActivity.this);
    		   editor.putString("notify", "false");
          	   //commits your edits
          	   editor.commit();
    	   }
		return true;
       }

   });
   
   //open about dialog
   Preference preferenceabout = findPreference("about");
   preferenceabout.setOnPreferenceClickListener(new OnPreferenceClickListener() {
       @Override
       public boolean onPreferenceClick(Preference preference) {
    	   AlertDialog.Builder ab = null;
    	   ab = new AlertDialog.Builder( SettingsActivity.this );
    	   ab.setMessage( Html.fromHtml(getResources().getString(R.string.about_text)));
    	   ab.setPositiveButton(getResources().getString(R.string.ok), null);
    	   ab.setTitle(getResources().getString(R.string.about_header));
    	   ab.show();
		return true;
       }
   });
   
   //open default page
   Preference preferencedefault = findPreference("default");
   preferencedefault.setOnPreferenceClickListener(new OnPreferenceClickListener() {
       @Override
       public boolean onPreferenceClick(Preference preference) {
    	   startActivity(new Intent(SettingsActivity.this, MainActivity.class).putExtra("CHANGE", "true"));
		return true;
       }
   });

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