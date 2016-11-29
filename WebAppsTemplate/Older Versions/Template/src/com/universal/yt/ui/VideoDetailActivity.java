package com.universal.yt.ui;

import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.universal.MainActivity;
import com.universal.R;
import com.universal.fav.FavDbAdapter;
import com.universal.util.TrackingScrollView;
import com.universal.yt.player.YouTubePlayerActivity;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

/**
 *  This activity is used to display the details of a video
 */

public class VideoDetailActivity extends Activity {
	
	private FavDbAdapter mDbHelper;

	String date;
	String id;
	String title;
	String description;
	String favorite;
	String image;
	
	ImageLoader imageLoader = MainActivity.initializeImageLoader(VideoDetailActivity.this);
	private TextView mPresentation;
	int mImageHeight;
	ImageView mImage;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
	  // TODO Auto-generated method stub
	  super.onCreate(savedInstanceState);
	  
	  getWindow().requestFeature(Window.FEATURE_ACTION_BAR_OVERLAY);
	  getActionBar().setDisplayHomeAsUpEnabled(true);
	  getActionBar().setBackgroundDrawable(new ColorDrawable(Color.argb(128, 0, 0, 0)));
		
	  setContentView(R.layout.activity_youtube_detail);
	  mPresentation = (TextView)findViewById(R.id.youtubetitle);
	  TextView detailsDescription = (TextView)findViewById(R.id.youtubedescription);
	  TextView detailsPubdate = (TextView)findViewById(R.id.youtubeurl);

	  Bundle bundle = this.getIntent().getExtras();
    
	  mPresentation.setText(bundle.getString("keyTitle"));
      	detailsDescription.setText(bundle.getString("keyDescription"));
      	detailsPubdate.setText(bundle.getString("keyDate"));
      		title = (bundle.getString("keyTitle"));
      		id = (bundle.getString("keyId"));
      		date = (bundle.getString("keyDate"));
      		description = (bundle.getString("keyDescription"));
      		favorite = (bundle.getString("keyFavorites"));
      		image = (bundle.getString("keyImage"));
      		
      if ((getResources().getString(R.string.ad_visibility).equals("0"))){
	        	// Look up the AdView as a resource and load a request.
	        	AdView adView = (AdView) findViewById(R.id.adView);
	        	AdRequest adRequest = new AdRequest.Builder().build();
	        	adView.loadAd(adRequest);
	  }
      
       mImage = (ImageView) findViewById(R.id.image);
       imageLoader.displayImage(image, mImage);
	   mImageHeight = mImage.getLayoutParams().height;

		((TrackingScrollView) findViewById(R.id.scroller)).setOnScrollChangedListener(
				new TrackingScrollView.OnScrollChangedListener() {
					@Override
					public void onScrollChanged(TrackingScrollView source, int l, int t, int oldl, int oldt) {
						handleScroll(source, t);
					}
				}
		);

		centerViewVertically(mPresentation);
      
      ImageButton btnPlay= (ImageButton) findViewById(R.id.playbutton);

      //Listening to button event
      btnPlay.setOnClickListener(new View.OnClickListener() {

    	  public void onClick(View arg0) {
    		  //Intent intent = new Intent(Intent.ACTION_VIEW);
    		  //intent.setData(Uri.parse("http://sherdle.com/id/"+ video.getId()));
    		  //startActivity(intent);  
    		  Intent intent = new Intent(VideoDetailActivity.this, YouTubePlayerActivity.class);
    		  intent.putExtra(YouTubePlayerActivity.EXTRA_VIDEO_ID, id);
    		  intent.setFlags(Intent.FLAG_ACTIVITY_NO_HISTORY);
    		  startActivity(intent);
    	  }
     });
      
      Button btnOpen = (Button) findViewById(R.id.openbutton);

      //Listening to button event
      btnOpen.setOnClickListener(new View.OnClickListener() {

    	  public void onClick(View arg0) {
    		       try {  
    		         Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse("vnd.youtube:" + id));
    	             startActivity(intent);                 
    	           }catch (ActivityNotFoundException ex){
    	             Intent intent=new Intent(Intent.ACTION_VIEW, 
    	             Uri.parse("http://www.youtube.com/watch?v="+id));
    	             startActivity(intent);
    	         }
    	  }
     });
      
      Button btnFav = (Button) findViewById(R.id.favoritebutton);
      
    //Listening to button event
      btnFav.setOnClickListener(new View.OnClickListener() {

    	  public void onClick(View arg0) {
    		  mDbHelper = new FavDbAdapter(VideoDetailActivity.this);
              mDbHelper.open();
              
              if(mDbHelper.checkEvent(title, description, date, id, "", "", "youtube")) {
                  // Item is new
           	   mDbHelper.addFavorite(title, description, date, id, "", "", "youtube");
           	    Toast toast = Toast.makeText(VideoDetailActivity.this, getResources().getString(R.string.favorite_success), Toast.LENGTH_LONG);
                  toast.show();
              } else {
                  Toast toast = Toast.makeText(VideoDetailActivity.this, getResources().getString(R.string.favorite_duplicate), Toast.LENGTH_LONG);
                  toast.show();
              }
    	  }
     });
   }
    
    private void handleScroll(TrackingScrollView source, int top) {
		int scrolledImageHeight = Math.min(mImageHeight, Math.max(0, top));

		ViewGroup.MarginLayoutParams imageParams = (ViewGroup.MarginLayoutParams) mImage.getLayoutParams();
		int newImageHeight = mImageHeight - scrolledImageHeight;
		if (imageParams.height != newImageHeight) {
			// Transfer image height to margin top
			imageParams.height = newImageHeight;
			imageParams.topMargin = scrolledImageHeight;

			// Invalidate view
			mImage.setLayoutParams(imageParams);
		}
	}

	private static void centerViewVertically(View view) {
		view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() {
			@Override
			public void onLayoutChange(View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
				v.setTranslationY(-v.getHeight() / 2);
				v.removeOnLayoutChangeListener(this);
			}
		});
	}
    
   @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
	 	case android.R.id.home:
            finish();
            return true;
        case R.id.share:
        	String applicationName = getResources().getString(R.string.app_name);
  		    Intent sendIntent = new Intent();
  		    sendIntent.setAction(Intent.ACTION_SEND);
  		    
  		    String urlvalue = getResources().getString(R.string.video_share_begin);
  		    String seenvalue = getResources().getString(R.string.video_share_middle);
  		    String appvalue = getResources().getString(R.string.video_share_end);
  		                                           //this is the text that will be shared
  		    sendIntent.putExtra(Intent.EXTRA_TEXT, (urlvalue+"http://youtube.com/watch?"+id+seenvalue+applicationName+appvalue));
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
 	    inflater.inflate(R.menu.youtube_detail_menu, menu);
 	    return true;
 	}
 	
}
