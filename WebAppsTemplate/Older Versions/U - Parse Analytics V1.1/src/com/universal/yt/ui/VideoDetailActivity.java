package com.universal.yt.ui;

import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;
import com.universal.R;
import com.universal.fav.FavDbAdapter;
import com.universal.fav.ui.FavActivity;
import com.universal.yt.player.YouTubePlayerActivity;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
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

    @Override
    protected void onCreate(Bundle savedInstanceState) {
	  // TODO Auto-generated method stub
	  super.onCreate(savedInstanceState);
	  setContentView(R.layout.activity_youtube_detail);
	  TextView detailsTitle = (TextView)findViewById(R.id.youtubetitle);
	  TextView detailsDescription = (TextView)findViewById(R.id.youtubedescription);
	  TextView detailsPubdate = (TextView)findViewById(R.id.youtubeurl);

	  Bundle bundle = this.getIntent().getExtras();
    
      	detailsTitle.setText(bundle.getString("keyTitle"));
      	detailsDescription.setText(bundle.getString("keyDescription"));
      	detailsPubdate.setText(bundle.getString("keyDate"));
      		title = (bundle.getString("keyTitle"));
      		id = (bundle.getString("keyId"));
      		date = (bundle.getString("keyDate"));
      		description = (bundle.getString("keyDescription"));
      		favorite = (bundle.getString("keyFavorites"));
      		
      if ((getResources().getString(R.string.ad_visibility).equals("0"))){
	        	// Look up the AdView as a resource and load a request.
	        	AdView adView = (AdView) findViewById(R.id.adView);
	        	AdRequest adRequest = new AdRequest.Builder().build();
	        	adView.loadAd(adRequest);
	  }
      
      Button btnPlay= (Button) findViewById(R.id.playbutton);

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
    
   @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
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
 	
 	@Override
 	public void onBackPressed()
 	{
 	     if ("true".equals(favorite)) {
 	    	startActivity(new Intent(this, FavActivity.class));
 	     } else {
 	     super.onBackPressed();  // optional depending on your needs
 	     }
 	}
}
