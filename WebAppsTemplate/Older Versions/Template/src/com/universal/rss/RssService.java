package com.universal.rss;

import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

import com.universal.MainActivity;
import com.universal.R;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.os.AsyncTask;
import android.os.Build;
import android.os.IBinder;
import android.preference.PreferenceManager;
import android.util.Log;

public class RssService extends Service {

	private List<String> item = new ArrayList<String>();
	private List<String> olditem = new ArrayList<String>();
	
	public static final int NOTIFICATION_ID = 1;
	
	private RssDataHelper mySQLiteAdapter;
	
    private NotificationManager mNotificationManager;
    Notification.Builder builder;

	@Override
	public IBinder onBind(Intent arg0) {
		return null;
	}
	
	@Override
	public int onStartCommand(Intent intent, int flags, int startId) {
	   Log.i("LocalService", "Received start id " + startId + ": " + intent);
		
	   Log.v("RSS Service", "started");
       new Operation().execute();
	    
	   return START_STICKY;
	}
	
	@Override
	public void onDestroy() {
		super.onDestroy();
	    Log.v("RSS Service", "stopped");
	}
	
	private class Operation extends AsyncTask<String, Void, String> {

        @Override
        protected String doInBackground(String... params) {
        	try {
        	    URL url = new URL(getString(R.string.rss_push_url));
        	 
        	    XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
        	    factory.setNamespaceAware(false);
        	    XmlPullParser xpp = factory.newPullParser();
        	 
        	        // We will get the XML from an input stream
        	    try {
        	    	xpp.setInput(getInputStream(url), "UTF_8");
        	    } catch (Exception e){
        	    	this.cancel(true);
        	    }
        	 
        	        /* We will parse the XML content looking for the "<title>" tag which appears inside the "<item>" tag.
        	         * However, we should take in consideration that the rss feed name also is enclosed in a "<title>" tag.
        	         * As we know, every feed begins with these lines: "<channel><title>Feed_Name</title>...."
        	         * so we should skip the "<title>" tag which is a child of "<channel>" tag,
        	         * and take in consideration only "<title>" tag which is a child of "<item>"
        	         *
        	         * In order to achieve this, we will make use of a boolean variable.
        	         */
        	    boolean insideItem = false;
        	 
        	        // Returns the type of current event: START_TAG, END_TAG, etc..
        	    int eventType = xpp.getEventType();
        	    while (eventType != XmlPullParser.END_DOCUMENT) {
        	        if (eventType == XmlPullParser.START_TAG) {
        	 
        	            if (xpp.getName().equalsIgnoreCase("item")) {
        	                insideItem = true;
        	            } else if (xpp.getName().equalsIgnoreCase("title")) {
        	                if (insideItem)
        	                     item.add(xpp.nextText()); //extract the headline
        	                     rssService(xpp.nextText());
        	                    
        	            }
        	        }else if(eventType==XmlPullParser.END_TAG && xpp.getName().equalsIgnoreCase("item")){
        	            insideItem=false;
        	        }
        	 
        	        eventType = xpp.next(); //move to next element
        	    }
        	 
        	} catch (MalformedURLException e) {
        	    e.printStackTrace();
        	} catch (XmlPullParserException e) {
        	    e.printStackTrace();
        	} catch (IOException e) {
        	    e.printStackTrace();
        	}
            return "Executed";
        }

        @Override
        protected void onPostExecute(String result) {
        	SharedPreferences sPrefs=PreferenceManager.getDefaultSharedPreferences(RssService.this);
    		SharedPreferences.Editor sEdit=sPrefs.edit();
    		
    		Log.v("Nr. of new items", Integer.toString(item.size()));
    		
    		int size=sPrefs.getInt("size",0);

    		//getting old items from settings
    		for(int j=0;j<size;j++)
    		{
    		          olditem.add(sPrefs.getString("val"+j, ""));
    		}

            //saving new items to settings
    		for(int i=0;i<item.size();i++)
    		{
    			     Log.v("New item:", item.get(i));
    		         sEdit.putString("val"+i,item.get(i));
    		}
    		
    		 sEdit.putInt("size",item.size());
    		 sEdit.commit();
    		
    		//comparing items
    		item.removeAll(olditem);
    		
    		Log.v("Nr. of new items", Integer.toString(item.size()));
    		
    		if (item.size() > 0){
    			sendNotification(item.size());
    		}
        }

        @Override
        protected void onPreExecute() {}

        @Override
        protected void onProgressUpdate(Void... values) {}
    }
	
    @TargetApi(Build.VERSION_CODES.JELLY_BEAN)
	private void sendNotification(Integer nr) {
        mNotificationManager = (NotificationManager)
               this.getSystemService(Context.NOTIFICATION_SERVICE);
    
        //String msg = Integer.toString(nr) + " " + getString(R.string.notification_message);
        String msg = getString(R.string.notification_message);
        PendingIntent contentIntent = PendingIntent.getActivity(this, 0,
            new Intent(this, MainActivity.class), 0);

        Notification.Builder mBuilder =
                new Notification.Builder(this)
        .setSmallIcon(R.drawable.ic_launcher)
        .setContentTitle(getString(R.string.notification_title))
        .setStyle(new Notification.BigTextStyle()
        .bigText(msg))
        .setContentText(msg)
        .setAutoCancel(true);

        mBuilder.setContentIntent(contentIntent);
        mNotificationManager.notify(NOTIFICATION_ID, mBuilder.build());
    }
    
    public InputStream getInputStream(URL url) {
    	   try {
    	       return url.openConnection().getInputStream();
    	   } catch (IOException e) {
    	       return null;
    	     }
    	}

    public void rssService(String s){
    	mySQLiteAdapter = new RssDataHelper(this);
        mySQLiteAdapter.openToWrite();
        mySQLiteAdapter.deleteAll();

        mySQLiteAdapter.insert(s);
      
        mySQLiteAdapter.close();

        /*
         *  Open the same SQLite database
         *  and read all it's content.
         */
        mySQLiteAdapter = new RssDataHelper(this);
        mySQLiteAdapter.openToRead();

        Cursor cursor = mySQLiteAdapter.queueAll();
        
        cursor.moveToFirst();
        for(int i = 0; i < cursor.getCount(); i++){
        	String row = cursor.getString(cursor.getColumnIndex("Content"));
            //You can here manipulate a single string as you please
            item.add(row);     
            cursor.moveToNext();
        }

        mySQLiteAdapter.close();
    }
}