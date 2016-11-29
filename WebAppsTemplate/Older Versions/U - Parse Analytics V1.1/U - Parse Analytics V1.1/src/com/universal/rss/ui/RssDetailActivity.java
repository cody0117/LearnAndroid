package com.universal.rss.ui;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;
import com.universal.R;
import com.universal.fav.FavDbAdapter;
import com.universal.fav.ui.FavActivity;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LevelListDrawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.Html;
import android.text.Html.ImageGetter;
import android.text.Spanned;
import android.text.method.ScrollingMovementMethod;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

/**
 *  This activity is used to display details of a rss item
 */

public class RssDetailActivity extends Activity implements ImageGetter {
	
private WebView wb;
private final static String TAG = "ImageGetter";
private FavDbAdapter mDbHelper;

String date;
String link;
String title;
String description;
String favorite;

@Override
  protected void onCreate(Bundle savedInstanceState) {
	super.onCreate(savedInstanceState);
	setContentView(R.layout.activity_rss_details);
	TextView detailsTitle = (TextView)findViewById(R.id.detailstitle);
	TextView detailsDescription = (TextView)findViewById(R.id.detailsdescription);
	TextView detailsPubdate = (TextView)findViewById(R.id.detailspubdate);
 
	detailsDescription.setMovementMethod(new ScrollingMovementMethod());

	Bundle bundle = this.getIntent().getExtras();
    
      detailsTitle.setText(bundle.getString("keyTitle"));
      detailsPubdate.setText(bundle.getString("keyPubdate"));
      date = (bundle.getString("keyPubdate"));
      link = (bundle.getString("keyLink"));
      title = (bundle.getString("keyTitle"));
      description = (bundle.getString("keyDescription"));
      favorite = (bundle.getString("keyFavorites"));
      
      wb = (WebView) findViewById(R.id.descriptionwebview);
      
      //parse the html and apply some styles
      Document doc = Jsoup.parse(description);
      doc.head().append(customStyleElement());
      
      //get preference
      SharedPreferences prefs = PreferenceManager
      .getDefaultSharedPreferences(RssDetailActivity.this);
      	 
      boolean checkBox = prefs.getBoolean("checkBoxWebview", false);
     
      //show webview or html depending on settings
      if (checkBox == true){
      	  detailsDescription.setVisibility(View.GONE);
      	  wb.getSettings().setDefaultTextEncodingName("utf-8"); 
      	  wb.loadDataWithBaseURL(null, doc.html(),"text/html","UTF-8","about:blank");
      } else {
    	  Spanned spanned = Html.fromHtml(bundle.getString("keyDescription"), this, null);
    	  detailsDescription.setText(spanned);
    	  //detailsDescription.setText(Html.fromHtml());
    	  wb.setVisibility(View.GONE);  
      }
      
	  if ((getResources().getString(R.string.ad_visibility).equals("0"))){
        	// Look up the AdView as a resource and load a request.
        	AdView adView = (AdView) findViewById(R.id.adView);
        	AdRequest adRequest = new AdRequest.Builder().build();
        	adView.loadAd(adRequest);
      }
      
      Button btnOpen = (Button) findViewById(R.id.openbutton);

      //Listening to button event
      btnOpen.setOnClickListener(new View.OnClickListener() {

    	  public void onClick(View arg0) {
    	             Intent intent=new Intent(Intent.ACTION_VIEW, 
    	             Uri.parse(link));
    	             startActivity(intent);
    	         
    	  }
     });
      
      Button btnFav = (Button) findViewById(R.id.favoritebutton);
      
     //Listening to button event
      btnFav.setOnClickListener(new View.OnClickListener() {

    	  public void onClick(View arg0) {
    		  mDbHelper = new FavDbAdapter(RssDetailActivity.this);
              mDbHelper.open();
              
              if(mDbHelper.checkEvent(title, description, date, link, "", "", "rss")) {
                  // Item is new
           	   mDbHelper.addFavorite(title, description, date, link, "", "", "rss");
           	   Toast toast = Toast.makeText(RssDetailActivity.this, getResources().getString(R.string.favorite_success), Toast.LENGTH_LONG);
                  toast.show();
              } else {
                  Toast toast = Toast.makeText(RssDetailActivity.this, getResources().getString(R.string.favorite_duplicate), Toast.LENGTH_LONG);
                  toast.show();
              }
    	  }
     });
     
    
   }
   
   @Override
   public boolean onOptionsItemSelected(MenuItem item) {
       switch (item.getItemId()) {
       case R.id.share:
    	   String html = description;
		   html = html.replaceAll("<(.*?)\\>","");//Removes all items in brackets
	       html = html.replaceAll("<(.*?)\\\n","");//Must be undeneath
	       html = html.replaceFirst("(.*?)\\>", "");//Removes any connected item to the last bracket
	       html = html.replaceAll("&nbsp;","");
	       html = html.replaceAll("&amp;","");
	       
    	   String linkvalue = getResources().getString(R.string.item_share_begin);
    	   String seenvalue = getResources().getString(R.string.item_share_middle);
    	   String appvalue = getResources().getString(R.string.item_share_end);
    	   String applicationName = getResources().getString(R.string.app_name);
 		   Intent sendIntent = new Intent();
 		   sendIntent.setAction(Intent.ACTION_SEND);
 		                                           //this is the text that will be shared
 		   sendIntent.putExtra(Intent.EXTRA_TEXT, (html+linkvalue+link+seenvalue+applicationName+appvalue));
 		   sendIntent.putExtra(Intent.EXTRA_SUBJECT, title); //you can replace title with a string of your choice
 		   sendIntent.setType("text/plain");
 		   startActivity(Intent.createChooser(sendIntent, getResources().getString(R.string.share_header)));
           return true;
       default:
           return super.onOptionsItemSelected(item);
       }
   }
	
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
	    MenuInflater inflater = getMenuInflater();
	    inflater.inflate(R.menu.rss_detail_menu, menu);
	    return true;
	}
    
	@Override
 	public void onBackPressed()
 	{
 	     if ("true".equals(favorite)) {
 	    	startActivity(new Intent(this, FavActivity.class));
 	     } else {
 	     super.onBackPressed();  // optional depending on your needs
 	     }
 	}
     
	//making the html a little more webview proof
	private String customStyleElement() {
		int viewWidth;

		Display display = this.getWindowManager().getDefaultDisplay();
		DisplayMetrics displayMetrics = new DisplayMetrics();
		display.getMetrics(displayMetrics);

		viewWidth = displayMetrics.widthPixels;

		// content margin is 8dp left and 8dp right
		int contentWidth = Math.round(viewWidth / displayMetrics.density) - 40;

    	StringBuilder styleStringBuilder = new StringBuilder();
    	styleStringBuilder.append("<style type=\"text/css\">");
    	styleStringBuilder.append("body { padding: 0; margin: 0; }");
    	styleStringBuilder.append("img { max-width: ").append(String.valueOf(contentWidth)).append("; height: auto; margin-left: -15;}");
    	styleStringBuilder.append("figure { margin: 0 !important; }");
    	styleStringBuilder.append("p { line-height: 1.5; }");
    	styleStringBuilder.append("</style>");

    	return styleStringBuilder.toString();
	}
	
	//replacing all the image tags in the html code with real images
	
		@Override
	    public Drawable getDrawable(String source) {
	        LevelListDrawable d = new LevelListDrawable();
	        //Unquote the following 3 lines if you would like to use a loading drawable
	        //Drawable empty = getResources().getDrawable(R.drawable.ic_launcher);
	        //d.addLevel(0, 0, empty);
	        //d.setBounds(0, 0, empty.getIntrinsicWidth(), empty.getIntrinsicHeight());

	        new LoadImage().execute(source, d);

	        return d;
	    }

	    class LoadImage extends AsyncTask<Object, Void, Bitmap> {

	        private LevelListDrawable mDrawable;

	        @Override
	        protected Bitmap doInBackground(Object... params) {
	            String source = (String) params[0];
	            mDrawable = (LevelListDrawable) params[1];
	            Log.d(TAG, "doInBackground " + source);
	            try {
	                InputStream is = new URL(source).openStream();
	                return BitmapFactory.decodeStream(is);
	            } catch (FileNotFoundException e) {
	                e.printStackTrace();
	            } catch (MalformedURLException e) {
	                e.printStackTrace();
	            } catch (IOException e) {
	                e.printStackTrace();
	            }
	            return null;
	        }

	        @Override
	        protected void onPostExecute(Bitmap bitmap) {
	            Log.d(TAG, "onPostExecute drawable " + mDrawable);
	            Log.d(TAG, "onPostExecute bitmap " + bitmap);
	            if (bitmap != null) {
	                @SuppressWarnings("deprecation")
					BitmapDrawable d = new BitmapDrawable(bitmap);
	                mDrawable.addLevel(1, 1, d);
	                mDrawable.setBounds(0, 0, bitmap.getWidth(), bitmap.getHeight());
	                mDrawable.setLevel(1);
	                // i don't know yet a better way to refresh TextView
	                // detailsDescription.invalidate() doesn't work as expected
	                TextView detailsDescription = (TextView)findViewById(R.id.detailsdescription);
	                CharSequence t = detailsDescription.getText();
	                detailsDescription.setText(t);
	            }
	        }
	   }

}

