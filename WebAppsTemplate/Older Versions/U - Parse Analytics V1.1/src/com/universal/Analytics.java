package com.universal;

import android.app.Application;
import android.content.Context;
import android.os.AsyncTask;

import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.Tracker;
import com.parse.Parse;
import com.parse.ParseAnalytics;
import com.parse.PushService;

import java.util.HashMap;

public class Analytics extends Application {

// The following line should be changed to include the correct property id.
private static final String PROPERTY_ID = "YOUR_TRACKING_ID";

//Logging TAG
private static final String TAG = "Universal";

public static int GENERAL_TRACKER = 0;

public enum TrackerName {
APP_TRACKER, // Tracker used only in this app.
GLOBAL_TRACKER, // Tracker used by all the apps from a company. eg: roll-up tracking.
ECOMMERCE_TRACKER, // Tracker used by all ecommerce transactions from a company.
}

HashMap<TrackerName, Tracker> mTrackers = new HashMap<TrackerName, Tracker>();

@Override
public void onCreate() {
    super.onCreate();

      //initializing parse
  	  Parse.initialize(this, "YOUR_APP_ID", "YOUR_CLIENT_KEY");
  		
  		final Context context = this;
  		new AsyncTask<Void, Void, Void>() {
  		    @Override
  		    protected Void doInBackground(Void... params) {
  		        PushService.setDefaultPushCallback(context, MainActivity.class);
  		        return null;
  		    }
  		}.execute();
  		
  		PushService.setDefaultPushCallback(this, MainActivity.class);

}

public Analytics() {
super();
}

public synchronized Tracker getTracker(TrackerName trackerId) {
if (!mTrackers.containsKey(trackerId)) {

GoogleAnalytics analytics = GoogleAnalytics.getInstance(this);
Tracker t = (trackerId == TrackerName.APP_TRACKER) ? analytics.newTracker(R.xml.app_tracker)
: (trackerId == TrackerName.GLOBAL_TRACKER) ? analytics.newTracker(PROPERTY_ID)
: analytics.newTracker(null);
mTrackers.put(trackerId, t);

}
return mTrackers.get(trackerId);
}
}