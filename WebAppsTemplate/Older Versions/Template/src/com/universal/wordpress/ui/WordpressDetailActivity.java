package com.universal.wordpress.ui;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.graphics.Color;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.Html;
import android.util.Log;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.universal.MainActivity;
import com.universal.R;
import com.universal.fav.FavDbAdapter;
import com.universal.util.TrackingScrollView;
import com.universal.util.WebHelper;
import com.universal.web.WebviewActivity;
import com.universal.wordpress.FeedItem;

/**
 *  This activity is used to display a wordpress post
 */

public class WordpressDetailActivity extends Activity {

	private FeedItem feed;
	ImageLoader imageLoader = MainActivity.initializeImageLoader(WordpressDetailActivity.this);
	
	private FavDbAdapter mDbHelper;
	
	WebView htmlTextView;
	private ImageView thumb;
	private TextView mTitle;
	private int mImageHeight;
	
	String id;
	String link;
	String title;
	String content;
	
	@SuppressLint("SetJavaScriptEnabled")
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		
		getWindow().requestFeature(Window.FEATURE_ACTION_BAR_OVERLAY);		
		getActionBar().setBackgroundDrawable(new ColorDrawable(Color.argb(128, 0, 0, 0)));
		getActionBar().setDisplayHomeAsUpEnabled(true);
		
		setContentView(R.layout.activity_wordpress_details);
		
		thumb = (ImageView) findViewById(R.id.image);

		String url = getIntent().getStringExtra("apiurl") +"get_post/?post_id=";
		Bundle bundle = this.getIntent().getExtras();
		//get data from favorites or online
        if ("true".equals(bundle.getString("fav"))){
        	content = bundle.getString("favId");
        	title = bundle.getString("favTitle");
        	link = bundle.getString("favUrl");
        } else {
        	feed = (FeedItem) this.getIntent().getSerializableExtra("feed");
        	if (feed != null) {
        		id = feed.getId();
        		title = feed.getTitle();
        		link = feed.getUrl();
        		
        		//getting a valid url, displaying it and setting a parralax listener. Also a fallback for no image.
        		String imageurl = feed.getAttachmentUrl();
        		if (null == imageurl || imageurl.equals("")){
        			imageurl = feed.getThumbnailUrl();        			
        		}
        		if (null == imageurl || imageurl.equals("")){
    				thumb.getLayoutParams().height = (getActionBarHeight());
    			} else {
                	imageLoader.displayImage(imageurl, thumb);
                	
        			mImageHeight = thumb.getLayoutParams().height;

        			((TrackingScrollView) findViewById(R.id.scroller)).setOnScrollChangedListener(
        					new TrackingScrollView.OnScrollChangedListener() {
        						@Override
        						public void onScrollChanged(TrackingScrollView source, int l, int t, int oldl, int oldt) {
        							handleScroll(source, t);
        						}
        					}
        			);
    			}
        	}	
        }
        
        if ((getResources().getString(R.string.ad_visibility).equals("0"))){
        	// Look up the AdView as a resource and load a request.
        	AdView adView = (AdView) findViewById(R.id.adView);
        	AdRequest adRequest = new AdRequest.Builder().build();
        	adView.loadAd(adRequest);
        }
        
        //if content at all
        if (null != feed || null != bundle) {
        	
			mTitle = (TextView) findViewById(R.id.title);
			mTitle.setText(title);

			htmlTextView = (WebView) findViewById(R.id.context);
			htmlTextView.getSettings().setJavaScriptEnabled(true);
			htmlTextView.setBackgroundColor(0x00000000);		
		}
        
        //fresh from the web or old from favorites?
        if (id != null){
        	new DownloadFilesTask().execute(url, id);
        } else if (content != null) {
        	Log.v("INFO", "content: " + content);
        	thumb.getLayoutParams().height = (getActionBarHeight());
        	setHTML(content);
        }

		Button btnFav = (Button) findViewById(R.id.favoritebutton);
	      
	    //Listening to button event
	    btnFav.setOnClickListener(new View.OnClickListener() {

	    	  public void onClick(View arg0) {
	    		  mDbHelper = new FavDbAdapter(WordpressDetailActivity.this);
	              mDbHelper.open();
	              
	              if(mDbHelper.checkEvent(title, content, "", link, "", "", "wordpress")) {
	                  // Item is new
	           	   	  mDbHelper.addFavorite(title, content, "", link, "", "", "wordpress");
	           	   	  Toast toast = Toast.makeText(WordpressDetailActivity.this, getResources().getString(R.string.favorite_success), Toast.LENGTH_LONG);
	                  toast.show();
	              } else {
	                  Toast toast = Toast.makeText(WordpressDetailActivity.this, getResources().getString(R.string.favorite_duplicate), Toast.LENGTH_LONG);
	                  toast.show();
	              }
	    	  }
	     });
	}
	
	private void handleScroll(TrackingScrollView source, int top) {
		int scrolledImageHeight = Math.min(mImageHeight, Math.max(0, top));

		ViewGroup.MarginLayoutParams imageParams = (ViewGroup.MarginLayoutParams) thumb.getLayoutParams();
		int newImageHeight = mImageHeight - scrolledImageHeight;
		if (imageParams.height != newImageHeight) {
			// Transfer image height to margin top
			imageParams.height = newImageHeight;
			imageParams.topMargin = scrolledImageHeight;

			// Invalidate view
			thumb.setLayoutParams(imageParams);
		}
	}


	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		MenuInflater inflater = getMenuInflater();
		inflater.inflate(R.menu.wordpress_detail_menu, menu);
		return true;
	}
	
	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		 switch (item.getItemId()) {
		 	case android.R.id.home:
	            finish();
	            return true;
	        case R.id.menu_share:
	        	shareContent();
	            return true;
	        case R.id.menu_view:
	        	Intent intent = new Intent(WordpressDetailActivity.this, WebviewActivity.class);
				intent.putExtra("WEB_URL", link);
				startActivity(intent);			
	        	return true;
	        default:
	            return super.onOptionsItemSelected(item);
	    }
	}

	private void shareContent() {
		Intent sendIntent = new Intent();
		sendIntent.setAction(Intent.ACTION_SEND);
		sendIntent.putExtra(Intent.EXTRA_TEXT, title + "\n" + link);
		sendIntent.setType("text/plain");
		startActivity(Intent.createChooser(sendIntent, "Share using"));
	}
	
	private class DownloadFilesTask extends AsyncTask<String, Integer, FeedItem> {

		@Override
		protected void onProgressUpdate(Integer... values) {
		}

		@Override
		protected void onPostExecute(FeedItem result) {
			content = result.getContent();
			setHTML(result.getContent());
	    }
		

	    @Override
	    protected FeedItem doInBackground(String... params) {
			String url = params[0];
			String postid = params[1];

			// getting JSON string from URL
			JSONObject json = getJSONFromUrl(url + postid);
			Log.v("INFO", url + postid);

			//parsing json data
			FeedItem item = parseJson(json);
			return item;
		}
	}
	
	public void setHTML(String source){
		Document doc = Jsoup.parse(source);
		try {		
			doc.select("img").first().remove(); //first image is most times repeat of header 
		} catch (Exception e){
			e.printStackTrace();
		}
		
        String html = WebHelper.docToBetterHTML(doc);
        
        Log.v("INFO", "HTMLisnull" + html.equals(null) + "Linkisnull" + link.equals(null));
        
		htmlTextView.loadDataWithBaseURL(link, html , "text/html", "UTF-8", "");
		htmlTextView.setVisibility(View.VISIBLE);
		findViewById(R.id.progressBar).setVisibility(View.GONE);
	
		Log.v("INFO", "Wordpress HTML: " + html);
	}

	
	public JSONObject getJSONFromUrl(String url) {
		InputStream is = null;
		JSONObject jObj = null;
		String json = null;

		// Making HTTP request
		try {
			// defaultHttpClient
			DefaultHttpClient httpClient = new DefaultHttpClient();
			HttpPost httpPost = new HttpPost(url);

			HttpResponse httpResponse = httpClient.execute(httpPost);
			HttpEntity httpEntity = httpResponse.getEntity();
			is = httpEntity.getContent();

			BufferedReader reader = new BufferedReader(new InputStreamReader(
					is, "iso-8859-1"), 8);
			StringBuilder sb = new StringBuilder();
			String line = null;
			while ((line = reader.readLine()) != null) {
				sb.append(line + "\n");
			}
			is.close();
			json = sb.toString();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (ClientProtocolException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		try {
			jObj = new JSONObject(json);
		} catch (JSONException e) {
			Log.e("JSON Parser", "Error parsing data " + e.toString());
			findViewById(R.id.progressBar).setVisibility(View.GONE);
		} catch (Exception e) {
			Log.e("JSON Parser", "Exception: " + e.toString());
			runOnUiThread(new Runnable() {

                @Override
                public void run() {
                	findViewById(R.id.progressBar).setVisibility(View.GONE);
                }
            });
		}

		// return JSON String
		return jObj;

	}

	public FeedItem parseJson(JSONObject json) {
		try {

			// parsing json object
			if (json.getString("status").equalsIgnoreCase("ok")) {
				JSONObject post = json.getJSONObject("post");

				FeedItem item = new FeedItem();
				item.setTitle(Html.fromHtml(post.getString("title")).toString());
				item.setDate(post.getString("date"));
				item.setId(post.getString("id"));
				item.setUrl(post.getString("url"));
				item.setContent(post.getString("content"));
				JSONArray attachments = post.getJSONArray("attachments");
					
				if (null != attachments && attachments.length() > 0) {
					JSONObject attachment = attachments.getJSONObject(0);
					if (attachment != null)
						item.setAttachmentUrl(attachment.getString("url"));						    
				}
				
				return item;

			}
		} catch (JSONException e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	private int getActionBarHeight() {
	    int actionBarHeight = getActionBar().getHeight();
	    if (actionBarHeight != 0)
	        return actionBarHeight;
	    final TypedValue tv = new TypedValue();
	    if (getTheme().resolveAttribute(android.R.attr.actionBarSize, tv, true))
	         actionBarHeight = TypedValue.complexToDimensionPixelSize(tv.data, getResources().getDisplayMetrics());
	    return actionBarHeight;
	}

}
