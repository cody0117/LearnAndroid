package com.universal.media.ui;

import android.app.Activity;
import android.graphics.Color;
import android.graphics.Paint;
import android.os.AsyncTask;
import android.os.Bundle;

import java.io.IOException;

import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;
import com.jeremyfeinstein.slidingmenu.lib.SlidingMenu;
import com.universal.R;
import com.universal.media.UrlParser;
import com.universal.media.LineRenderer;
import com.universal.media.VisualizerView;

import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnInfoListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.Toast;

/**
 *  This activity is used to listen to a radio station
 */

public class MediaActivity extends Activity implements OnClickListener {

    private ProgressBar playSeekBar;

    private Button buttonPlay;

    private Button buttonStopPlay;

    private MediaPlayer player;
    
    private VisualizerView mVisualizerView;
    
    private SlidingMenu slidingMenu ;
    

	String menu;
	String noconnection;

    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_media);
        
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

        initializeUIElements();

        new InitializeMediaPlayer().execute();
        
	    if ((getResources().getString(R.string.ad_visibility).equals("0"))){
        	// Look up the AdView as a resource and load a request.
        	AdView adView = (AdView) findViewById(R.id.adView);
        	AdRequest adRequest = new AdRequest.Builder().build();
        	adView.loadAd(adRequest);
        }
    }

    private void initializeUIElements() {

        playSeekBar = (ProgressBar) findViewById(R.id.seekBar);
        playSeekBar.setMax(100);
        playSeekBar.setVisibility(View.INVISIBLE);

        buttonPlay = (Button) findViewById(R.id.btn_play);
        buttonPlay.setOnClickListener(this);

        buttonStopPlay = (Button) findViewById(R.id.btn_pause);
        buttonStopPlay.setEnabled(false);
        buttonStopPlay.setOnClickListener(this);

    }

    public void onClick(View v) {
        if (v == buttonPlay) {
            startPlaying();
            
            AudioManager am = (AudioManager) getSystemService(AUDIO_SERVICE);
            int volume_level= am.getStreamVolume(AudioManager.STREAM_MUSIC);
            if (volume_level < 2){
            	Toast.makeText(this, getResources().getString(R.string.volume_low),Toast.LENGTH_SHORT).show();
            }
        } else if (v == buttonStopPlay) {
            stopPlaying();
        }
    }

    private void startPlaying() {
        buttonStopPlay.setEnabled(true);
        buttonPlay.setEnabled(false);

        playSeekBar.setVisibility(View.VISIBLE);

        try {
        	player.prepareAsync();
        } catch (IllegalStateException e){
        	Log.v("INFO", "exception: " + e);
        }

        player.setOnPreparedListener(new OnPreparedListener() {

            public void onPrepared(MediaPlayer mp) {
                player.start();
            }
        });

    }

    private void stopPlaying() {
        if (player.isPlaying()) {
            player.stop();
            player.release();
            mVisualizerView.release();
            new InitializeMediaPlayer().execute();
        }

        buttonPlay.setEnabled(true);
        buttonStopPlay.setEnabled(false);
        playSeekBar.setVisibility(View.INVISIBLE);
    }
    
    private class InitializeMediaPlayer extends AsyncTask<Void, Void, Void> {

    	@Override
        protected void onPostExecute(Void arg0) {
    		mVisualizerView = (VisualizerView) findViewById(R.id.visualizerView);
            mVisualizerView.link(player);
            
            // Start with just line renderer
            addLineRenderer();

            player.setOnBufferingUpdateListener(new OnBufferingUpdateListener() {

                public void onBufferingUpdate(MediaPlayer mp, int percent) {
                	 if (percent < 0 || percent > 100) {
                         //System.out.println("Doing math: (" + (Math.abs(percent)-1)*100.0 + " / " +Integer.MAX_VALUE+ ")" );
                         percent = (int) Math.round((((Math.abs(percent)-1)*100.0/Integer.MAX_VALUE)));

                     }
                	 
                	 if (percent == 100){ 
                         if (playSeekBar.getVisibility() == View.VISIBLE){
                        	 playSeekBar.setVisibility(View.GONE);
                         }
                	 } else {            	 
                		 playSeekBar.setSecondaryProgress(percent);
                		 Log.i("Buffering", "" + percent);
                	 }
                }
            });
            
            player.setOnInfoListener(new OnInfoListener() {
                @Override
                public boolean onInfo(MediaPlayer mp, int what, int extra) {
                    if (what == MediaPlayer.MEDIA_INFO_BUFFERING_START) {
                    	playSeekBar.setVisibility(View.VISIBLE);
                    } else if (what == MediaPlayer.MEDIA_INFO_BUFFERING_END) {
                    	playSeekBar.setVisibility(View.GONE);
                    }
                    return false;
                }
            }); 
        }

		@Override
		protected Void doInBackground(Void... arg0) {
			player = new MediaPlayer();
			
			try {	
       		 String radio = getIntent().getStringExtra("RADIO_URL");
       		 player.setDataSource(UrlParser.getUrl(radio));
			} catch (IllegalArgumentException e) {
                e.printStackTrace();
            } catch (IllegalStateException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
			return null;
		}
    }
    

    

    @Override
    protected void onPause() {
        super.onPause();
        if (player.isPlaying()) {
            player.stop();
        }
    }
    
    private void addLineRenderer()
    {
      Paint linePaint = new Paint();
      linePaint.setStrokeWidth(1f);
      linePaint.setAntiAlias(true);
      linePaint.setColor(Color.argb(88, 0, 128, 255));

      Paint lineFlashPaint = new Paint();
      lineFlashPaint.setStrokeWidth(5f);
      lineFlashPaint.setAntiAlias(true);
      lineFlashPaint.setColor(Color.argb(188, 255, 255, 255));
      LineRenderer lineRenderer = new LineRenderer(linePaint, lineFlashPaint, true);
      mVisualizerView.addRenderer(lineRenderer);
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

     	} else {
     	    super.onBackPressed();  
        }
    }

    @Override
    public void onStop() {
      super.onStop();
      if (player.isPlaying()) {
          player.stop();
      }
    }
    
}