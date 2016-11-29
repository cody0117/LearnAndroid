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
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

/**
 *  This activity is used to display a list of tweets
 */

public class TweetsActivity extends Activity {

	private ListView listView;
	private SlidingMenu slidingMenu ;
	
	String start;
	String menu;

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_tweets);
		final String searchValue = getIntent().getStringExtra("TWITTER_USERNAME");
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
                
	    listView.setOnItemClickListener(new OnItemClickListener() {
        public void onItemClick(AdapterView<?> parent, View view,
                int position, long id) {
	     //View view = (View) view.getParent();
	     TextView MessageView = (TextView) view.findViewById(R.id.message);
	     TextView UsernameView = (TextView) view.findViewById(R.id.username);
	     TextView NameView = (TextView) view.findViewById(R.id.name);
	     TextView DateView = (TextView) view.findViewById(R.id.data);
	     
	     String date = DateView.getText().toString();
	     String realName = NameView.getText().toString();
	     String tweet = MessageView.getText().toString();
	     
	     String username= UsernameView.getTag().toString();
	     String tweetId = MessageView.getTag().toString();
	     
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

	}
	
	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
	    switch (item.getItemId()) {
	    case android.R.id.home:
	        slidingMenu.toggle();
	        return true;
	        
	    default:
	        return super.onOptionsItemSelected(item);
	    }
	}

	//Populate listview with tweets from twitter api
	private void populateListView(final ArrayList<Tweet> tweets){
		TweetAdapter  tweetAdapter = new TweetAdapter(this, R.layout.activity_tweets_row, tweets);
		listView.setAdapter(tweetAdapter);

	}
	
	//Connect to twitter api and get values.
	private class SearchTweetsTask extends AsyncTask<String, Void, ArrayList<Tweet>>{

		private ProgressDialog progressDialog;
		private static final String URL_BASE = "https://api.twitter.com";
		private static final String URL_VALUE = URL_BASE + "/1.1/statuses/user_timeline.json?screen_name=";
		private static final String URL_AUTH = URL_BASE + "/oauth2/token";

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
			progressDialog = new ProgressDialog(TweetsActivity.this);
			progressDialog.setMessage(getResources().getString(R.string.loading));
			progressDialog.show();
		}
		


		//Get the latest tweets from the timeline of the user
		@Override
		protected ArrayList<Tweet> doInBackground(String... param) {

			String searchValue = param[0];
			ArrayList<Tweet> tweets = new ArrayList<Tweet>();
			HttpURLConnection connection = null;
			BufferedReader br = null;

			try {
				URL url = new URL(URL_VALUE + searchValue);
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

					tweets.add(i, tweet);
				}

			} catch (Exception e) {
				Log.e("Error GET: ", Log.getStackTraceString(e));        

			}finally {
				if(connection != null){
					connection.disconnect();
				}
			}
			return tweets;
		}

		//Populate listview with tweets after background task has been completed. If results are empty
		//then show error toast.
		@Override
		protected void onPostExecute(ArrayList<Tweet> tweets){
			progressDialog.dismiss();

			if (tweets.isEmpty()) {
				Toast.makeText(TweetsActivity.this, getResources().getString(R.string.tweet_get_failed),
						Toast.LENGTH_SHORT).show();
			} else {
				populateListView(tweets);
			}
		}

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
