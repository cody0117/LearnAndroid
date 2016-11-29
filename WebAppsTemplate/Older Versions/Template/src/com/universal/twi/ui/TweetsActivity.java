package com.universal.twi.ui;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONObject;

import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;
import com.jeremyfeinstein.slidingmenu.lib.SlidingMenu;
import com.universal.R;
import com.universal.twi.Tweet;
import com.universal.twi.TweetAdapter;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Base64;
import android.util.Log;
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
import android.widget.Toast;

/**
 *  This activity is used to display a list of tweets
 */

public class TweetsActivity extends Activity {

	private ListView listView;
	private SlidingMenu slidingMenu;
	TweetAdapter tweetAdapter;
	ArrayList<Tweet> tweets;
	
	private ProgressDialog progressDialog;
	
	String searchValue;
	
	String latesttweetid;
	String perpage = "15";
	Integer curpage = 1;
	

	String menu;
	
	Boolean initialload = true;
	Boolean isLoading = true;

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		requestWindowFeature(Window.FEATURE_INDETERMINATE_PROGRESS);
		setContentView(R.layout.activity_tweets);
		searchValue = getIntent().getStringExtra("TWITTER_USERNAME");
		listView = (ListView) findViewById(R.id.tweets_list);

		new SearchTweetsTask().execute(searchValue);
		
        //Slding menu
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
                
	    listView.setOnItemClickListener(new OnItemClickListener() {
	    	public void onItemClick(AdapterView<?> parent, View view,
                int position, long id) {
        	 Object o = listView.getItemAtPosition(position);
			 Tweet tweetObject = (Tweet) o;
	     	     
	     	 String date = tweetObject.getData();
	     	 String realName = tweetObject.getname();
	     	 String tweet = tweetObject.getmessage();	     
	     	 String username= tweetObject.getusername();
	     	 String tweetId = tweetObject.getTweetId();
	     
	     	 Intent intent = new Intent(TweetsActivity.this,TweetDetailActivity.class);
	     	 Bundle bundle = new Bundle();
	     	 bundle.putString("keyUsername", username);
	     	 bundle.putString("keyRealName", realName); //
		 	 bundle.putString("keyId", tweetId);
		 	 bundle.putString("keyPubdate", date); //
		 	 bundle.putString("keyTweet", tweet); //
		 	 intent.putExtras(bundle);
		      startActivity(intent);
	    	}
	    });
	    listView.setOnScrollListener(new OnScrollListener() {
			@Override
			public void onScroll(AbsListView view, int firstVisibleItem,
			        int visibleItemCount, int totalItemCount) {

			    if (tweetAdapter == null)
			        return ;

			    if (tweetAdapter.getCount() == 0)
			        return ;

			    int l = visibleItemCount + firstVisibleItem;
			    if (l >= totalItemCount && !isLoading) {
			        // It is time to add new data. We call the listener
			        isLoading = true;
			        new SearchTweetsTask().execute(searchValue);
			    }
			}

			@Override
			public void onScrollStateChanged(AbsListView view, int scrollState) {}
		});

	}
	
	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
	    switch (item.getItemId()) {
	    case android.R.id.home:
	        slidingMenu.toggle();
	        return true;
	    case R.id.refresh:
	    	if (!isLoading){
	    		initialload = true;
	    		isLoading = true;
	    		latesttweetid = null;
	    		curpage = 1;
	    		tweets.clear();
	    		listView.setAdapter(null);
	    		new SearchTweetsTask().execute(searchValue);
	    	} else {
	    		Toast.makeText(getBaseContext(), getString(R.string.already_loading), Toast.LENGTH_LONG).show();
	    	}
	    default:
	        return super.onOptionsItemSelected(item);
	    }
	}
	
	public void updateList() {	
		if (initialload){
			tweetAdapter = new TweetAdapter(this, R.layout.activity_tweets_row, tweets);
			listView.setAdapter(tweetAdapter);
			initialload = false;
		} else {
			tweetAdapter.addAll(tweets);
			tweetAdapter.notifyDataSetChanged();
		}
		isLoading = false;
	}
	
	//Connect to twitter api and get values.
	private class SearchTweetsTask extends AsyncTask<String, Void, Void>{

		private final String URL_BASE = "https://api.twitter.com";
		private final String URL_VALUE = URL_BASE + "/1.1/statuses/user_timeline.json?count="+perpage+"&screen_name=";
		private final String URL_PARAM = "&max_id=";
		private final String URL_AUTH = URL_BASE + "/oauth2/token";

		private final String CONSUMER_KEY = getResources().getString(R.string.twitter_api_consumer_key);;
		private final String CONSUMER_SECRET = getResources().getString(R.string.twitter_api_consumer_secret_key);;

		private String authenticateApp(){

			HttpURLConnection connection = null;
			OutputStream os = null;
			BufferedReader br = null;
			StringBuilder reply = null;

			try {
				URL url = new URL(URL_AUTH);
				connection = (HttpURLConnection) url.openConnection();
				connection.setRequestMethod("POST");
				connection.setDoOutput(true);
				connection.setDoInput(true);

				// Encoding keys
				String credentials = CONSUMER_KEY + ":" + CONSUMER_SECRET;
				String authorisation = "Basic " + Base64.encodeToString(credentials.getBytes(), Base64.NO_WRAP);
				String parameter = "grant_type=client_credentials";

				// Sending credentials
				connection.addRequestProperty("Authorization", authorisation);
				connection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded;charset=UTF-8");
				connection.connect();
				
				// sending parameters to method
				os = connection.getOutputStream();
				os.write(parameter.getBytes());
				os.flush();
				os.close();

				br = new BufferedReader(new InputStreamReader(connection.getInputStream()));
				String line;
				reply = new StringBuilder();

				while ((line = br.readLine()) != null){            
					reply.append(line);	
				}

				Log.d("Post response", String.valueOf(connection.getResponseCode()));
				Log.d("Json response - access token", reply.toString());

			} catch (Exception e) {
				Log.e("Error POST", Log.getStackTraceString(e));
				
			}finally{
				if (connection != null) {
					connection.disconnect();
				}
			}
			return reply.toString();
		}
		

		//Showing the progressdialog while loading data in background
		@Override
		protected void onPreExecute(){
			super.onPreExecute();
			if (initialload){
				progressDialog = new ProgressDialog(TweetsActivity.this);
				progressDialog.setMessage(getResources().getString(R.string.loading));
				progressDialog.setIndeterminate(true);
				progressDialog.setCancelable(false);
				progressDialog.show();
			} else {
				setProgressBarIndeterminateVisibility(Boolean.TRUE); 
			}
		}
		


		//Get the latest tweets from the timeline of the user
		@Override
		protected Void doInBackground(String... param) {

			String searchValue = param[0];
			tweets = new ArrayList<Tweet>();
			HttpURLConnection connection = null;
			BufferedReader br = null;

			try {
				URL url;
				if (null != latesttweetid && latesttweetid != "") {
					Long fromid = Long.parseLong(latesttweetid) - 1;
					url = new URL(URL_VALUE + searchValue + URL_PARAM + Long.toString(fromid));
				}else {
					url = new URL(URL_VALUE + searchValue);
				}
				Log.v("INFO", url.toString());
				connection = (HttpURLConnection) url.openConnection();
				connection.setRequestMethod("GET");

				String jsonString = authenticateApp();
				JSONObject jsonAccess = new JSONObject(jsonString);
				String tokenHolder = jsonAccess.getString("token_type") + " " + 
						jsonAccess.getString("access_token");

				connection.setRequestProperty("Authorization", tokenHolder);
				connection.setRequestProperty("Content-Type", "application/json");
				connection.connect();

				// retrieve tweets from api
				br = new BufferedReader(new InputStreamReader(connection.getInputStream()));

				String line;
				StringBuilder reply = new StringBuilder();

				while ((line = br.readLine()) != null){            
					reply.append(line);	
				}
				
				Log.d("GET response", String.valueOf(connection.getResponseCode()));
				Log.d("JSON response", reply.toString());
				
				JSONArray jsonArray = new JSONArray(reply.toString());
				JSONObject jsonObject;

				for (int i = 0; i < jsonArray.length(); i++) {
					
					jsonObject = (JSONObject) jsonArray.get(i);
					Tweet tweet = new Tweet();

					tweet.setname(jsonObject.getJSONObject("user").getString("name"));
					tweet.setusername(jsonObject.getJSONObject("user").getString("screen_name"));
					tweet.seturlProfileImage(jsonObject.getJSONObject("user").getString("profile_image_url"));
					tweet.setmessage(jsonObject.getString("text"));
					tweet.setData(jsonObject.getString("created_at"));
					tweet.setTweetId(jsonObject.getString("id"));
					latesttweetid = jsonObject.getString("id");

					tweets.add(i, tweet);
				}

			} catch (Exception e) {
				Log.e("Error GET: ", Log.getStackTraceString(e));        

			}finally {
				if(connection != null){
					connection.disconnect();
				}
			}
			return null;
		}

		//Populate listview with tweets after background task has been completed. If results are empty
		//then show error toast.
		@Override
		protected void onPostExecute(Void result){
			if (null != tweets || !tweets.isEmpty()) {
				updateList();
			} else {
				Toast.makeText(TweetsActivity.this, getResources().getString(R.string.tweet_get_failed),
						Toast.LENGTH_SHORT).show();
			}
			if (progressDialog.isShowing()) {
				progressDialog.dismiss();
			} else {
				setProgressBarIndeterminateVisibility(Boolean.FALSE);
			}
		}

	}
	
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
	    MenuInflater inflater = getMenuInflater();
	    inflater.inflate(R.menu.refresh_menu, menu);
	    return true;
	}
	
	@Override
    public void onBackPressed() {
        if ( slidingMenu.isMenuShowing()) {
            slidingMenu.toggle();

     	} else {
     	    super.onBackPressed();  
        }
    }

}
