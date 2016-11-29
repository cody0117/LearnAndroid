package com.universal.rss.ui;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;

import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;

import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;

import android.graphics.Bitmap;


import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.jeremyfeinstein.slidingmenu.lib.SlidingMenu;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.PauseOnScrollListener;
import com.nostra13.universalimageloader.core.assist.SimpleImageLoadingListener;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.universal.Analytics;
import com.universal.R;
import com.universal.rss.RSSFeed;
import com.universal.rss.RSSHandler;
import com.universal.rss.RSSItem;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

/**
 *  This activity is used to display a list of rss items
 */

public class RssActivity extends Activity {
	
	private RSSFeed myRssFeed = null;
	private SlidingMenu slidingMenu ;
	public static ProgressDialog progressDialog;
	
	String start;
	String menu;
	
	public class MyCustomAdapter extends ArrayAdapter<RSSItem> {

		 public MyCustomAdapter(Context context, int textViewResourceId,
		   List<RSSItem> list) {
		  super(context, textViewResourceId, list);
		 }

		 @Override
		 public View getView(int position, View convertView, ViewGroup parent) {
		  // TODO Auto-generated method stub
		  //return super.getView(position, convertView, parent);
		 
		  View row = convertView;
		  
		  final ViewHolder holder;
		 
		  if(row==null){
		      
			  LayoutInflater inflater=getLayoutInflater();
		      row=inflater.inflate(R.layout.activity_rss_row, parent, false);
		   
		      holder = new ViewHolder();
		      
		      holder.listTitle=(TextView)row.findViewById(R.id.listtitle);
			  holder.listPubdate=(TextView)row.findViewById(R.id.listpubdate);
			  holder.listDescription=(TextView)row.findViewById(R.id.shortdescription);
			  holder.listThumb =(ImageView)row.findViewById(R.id.listthumb);
			  
			  row.setTag(holder);
		  } else {
		    holder = (ViewHolder) convertView.getTag();
		  }
		 
		  holder.listTitle.setText(myRssFeed.getList().get(position).getTitle());
		  
		  holder.listPubdate.setText(myRssFeed.getList().get(position).getPubdate());
		  
		  String html = myRssFeed.getList().get(position).getRowDescription();
		  
		  holder.listDescription.setText(html);
		  
		 
		  //get Imageloader
		  ImageLoader imageLoader = ImageLoader.getInstance();
		 
		 LayoutInflater inflater = (LayoutInflater) RssActivity.this
				    .getSystemService(Context.LAYOUT_INFLATER_SERVICE);
				    View v = inflater.inflate(R.layout.activity_rss, null);
		
		 ListView listView = (ListView) v.findViewById(R.id.rsslist);
		 
		  //pausing on scrolling the listview
			boolean pauseOnScroll = true; // or true
			boolean pauseOnFling = true; // or false
			PauseOnScrollListener listener = new PauseOnScrollListener(imageLoader, pauseOnScroll, pauseOnFling);
			listView.setOnScrollListener(listener);
					
		 String thumburl = myRssFeed.getList().get(position).getThumburl();
		 if (thumburl != "" && thumburl != null){
			 //setting the image
			 imageLoader.displayImage(myRssFeed.getList().get(position).getThumburl(), holder.listThumb, new SimpleImageLoadingListener() {
			        @Override
			        public void onLoadingFailed(String imageUri, View view, FailReason failReason) {
			        }

			        @Override
			        public void onLoadingComplete(String imageUri, View view, Bitmap loadedImage) {

			            if (10 > loadedImage.getWidth() || 10 > loadedImage.getHeight()) {
			                // handle scaling
				            holder.listThumb.setVisibility(View.GONE);
			            }

			        }
			    });
		 } else {
			 holder.listThumb.setVisibility(View.GONE);
		 }
		 
		  return row;
		 }
		 
	}
	
	static class ViewHolder {
		  TextView listTitle;
		  TextView listPubdate;
		  TextView listDescription;
		  ImageView listThumb;
		  int position;
	}
	
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_rss);
		
		new MyTask().execute();
		
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
        
        progressDialog = ProgressDialog.show(RssActivity.this, "", getResources().getString(R.string.loading));
		
        //Checking if the user has just opened the app
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
	    
	     //Get a Tracker (should auto-report)
	  	((Analytics) getApplication()).getTracker(Analytics.TrackerName.APP_TRACKER);
	}
	
	
	private class MyTask extends AsyncTask<Void, Void, Void>{

		@Override
		protected Void doInBackground(Void... arg0) {
			try {
				String weburl = getIntent().getStringExtra("RSS_URL");
				URL rssUrl = new URL(weburl);
				SAXParserFactory mySAXParserFactory = SAXParserFactory.newInstance();
				SAXParser mySAXParser = mySAXParserFactory.newSAXParser();
				XMLReader myXMLReader = mySAXParser.getXMLReader();
				RSSHandler myRSSHandler = new RSSHandler();
				myXMLReader.setContentHandler(myRSSHandler);
				InputSource myInputSource = new InputSource(rssUrl.openStream());
				myXMLReader.parse(myInputSource);
				
				myRssFeed = myRSSHandler.getFeed();

			} catch (MalformedURLException e) {
				e.printStackTrace();				
			} catch (ParserConfigurationException e) {
				e.printStackTrace();	
			} catch (SAXException e) {
				e.printStackTrace();			
			} catch (IOException e) {
				e.printStackTrace();	
			}
			
			return null;
		}

		@Override
		protected void onPostExecute(Void result) {
			if (myRssFeed!=null)
			{				
				ListView listview = (ListView) findViewById(R.id.rsslist);
				MyCustomAdapter adapter =
						   new MyCustomAdapter(RssActivity.this, R.layout.activity_rss_row, myRssFeed.getList());
						  listview.setAdapter(adapter);
						  
						  listview.setOnItemClickListener(new OnItemClickListener() {
							@Override
							public void onItemClick(AdapterView<?> arg0, View v, int position, long id) {
								 Intent intent = new Intent(RssActivity.this, RssDetailActivity.class);
								 Bundle bundle = new Bundle();
								 bundle.putString("keyTitle", myRssFeed.getItem(position).getTitle());
								 bundle.putString("keyDescription", myRssFeed.getItem(position).getDescription());
								 bundle.putString("keyLink", myRssFeed.getItem(position).getLink());
								 bundle.putString("keyPubdate", myRssFeed.getItem(position).getPubdate());
								 intent.putExtras(bundle);
								      startActivity(intent);
								
							}
						  }); 
						  
			    progressDialog.dismiss();
				
			}else{
				progressDialog.dismiss();
				Toast.makeText(getBaseContext(),getResources().getString(R.string.item_get_failed),Toast.LENGTH_SHORT).show();
			}
			
			super.onPostExecute(result);
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
	
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
	    MenuInflater inflater = getMenuInflater();
	    inflater.inflate(R.menu.rss_menu, menu);
	    return true;
	}
	
	@Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
        case android.R.id.home:
            this.slidingMenu.toggle();
            return true;
        case R.id.info:    
        	//show information about the feed in general in a dialog 
            if (myRssFeed!=null)
			{
				String FeedTitle = (myRssFeed.getTitle());
				String FeedDescription = (myRssFeed.getDescription());
				//String FeedPubdate = (myRssFeed.getPubdate()); most times not present
				String FeedLink = (myRssFeed.getLink());
				
				AlertDialog.Builder builder = new AlertDialog.Builder(this);
				
				String titlevalue = getResources().getString(R.string.feed_title_value);
				String descriptionvalue = getResources().getString(R.string.feed_description_value);
				String linkvalue = getResources().getString(R.string.feed_link_value);
				
				if (FeedLink.equals("")){
	                 builder.setMessage(titlevalue+": \n"+FeedTitle+
      		               "\n\n"+descriptionvalue+": \n"+FeedDescription);
				} else {
					 builder.setMessage(titlevalue+": \n"+FeedTitle+
          		           "\n\n"+descriptionvalue+": \n"+FeedDescription +
          		           "\n\n"+linkvalue+": \n"+FeedLink);
				};
				
	                 builder.setNegativeButton(getResources().getString(R.string.ok),null)
	                 .setCancelable(true);
	            builder.create();
	            builder.show();
				
			}else{
				
			}     
            return true;
        default:
            return super.onOptionsItemSelected(item);
        }
    }
	
    @Override
    public void onStop() {
    	super.onStop();
    	GoogleAnalytics.getInstance(this).reportActivityStart(this);
    }
    	
    @Override
    public void onStart() {
    	super.onStart();
    	GoogleAnalytics.getInstance(this).reportActivityStop(this);
    }
}