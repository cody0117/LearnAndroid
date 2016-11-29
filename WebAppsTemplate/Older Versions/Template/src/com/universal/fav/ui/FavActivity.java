package com.universal.fav.ui;

import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;
import com.jeremyfeinstein.slidingmenu.lib.SlidingMenu;
import com.universal.R;
import com.universal.fav.FavDbAdapter;
import com.universal.fav.FavRed;

import android.app.AlertDialog;
import android.app.ListActivity;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ContextMenu.ContextMenuInfo;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;
import android.widget.AdapterView.AdapterContextMenuInfo;

/**
 *  This activity is used to display a list of favorites, and let the user 
 *  open them & delete them
 */

public class FavActivity extends ListActivity {
    @SuppressWarnings("unused")
	private static final int ACTIVITY_CREATE=0;
    private static final int ACTIVITY_EDIT=1;

    @SuppressWarnings("unused")
	private static final int INSERT_ID = Menu.FIRST;
    private static final int DELETE_ID = Menu.FIRST + 1;

    private FavDbAdapter mDbHelper;
    
    private SlidingMenu slidingMenu ;
    

	String menu;
	String noconnection;

    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_fav);
        mDbHelper = new FavDbAdapter(this);
        mDbHelper.open();
        fillData();
        registerForContextMenu(getListView());
        
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
        noconnection = getIntent().getStringExtra("NO_CONNECTION");
                
        if ("true".equals(menu)) {
         	slidingMenu.toggle();
        }
        if ("true".equals(noconnection)) {
     	   noConnectionDialog();
        }
        
	    if ((getResources().getString(R.string.ad_visibility).equals("0"))){
	        	// Look up the AdView as a resource and load a request.
	        	AdView adView = (AdView) findViewById(R.id.adView);
	        	AdRequest adRequest = new AdRequest.Builder().build();
	        	adView.loadAd(adRequest);
	    }
    }

    @SuppressWarnings("deprecation")
	private void fillData() {
        Cursor favoritesCursor = mDbHelper.getFavorites();
        startManagingCursor(favoritesCursor);

        String[] from = new String[]{FavDbAdapter.KEY_TITLE};

        int[] to = new int[]{R.id.text1};

        SimpleCursorAdapter favorites = 
            new SimpleCursorAdapter(this, R.layout.activity_fav_row, favoritesCursor, from, to);
        setListAdapter(favorites);
    }
    
    @Override
 	public boolean onCreateOptionsMenu(Menu menu) {
 	    MenuInflater inflater = getMenuInflater();
 	    inflater.inflate(R.menu.favorite_menu, menu);
 	    return true;
 	}
    
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
        case android.R.id.home:
            this.slidingMenu.toggle();
            return true;        
        case R.id.clear:
        	AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setMessage(getResources().getString(R.string.item_del_text))
                   .setPositiveButton(getResources().getString(R.string.item_del_confirmation), new DialogInterface.OnClickListener() {
                       public void onClick(DialogInterface dialog, int id) {
                    	   //mDbHelper = new NotesDbAdapter(RssDetailActivity.this);
                    	   mDbHelper.emptyDatabase();
                    	   fillData();
                       }
                   })
                   .setCancelable(true);
            // Create the AlertDialog object
            builder.create();
            builder.show();
            return true;
        default:
            return super.onOptionsItemSelected(item);
        }
    }
    
    @Override
    public void onCreateContextMenu(ContextMenu menu, View v,
            ContextMenuInfo menuInfo) {
        super.onCreateContextMenu(menu, v, menuInfo);
        menu.add(0, DELETE_ID, 0, "Delete");
    }

    @Override
    public boolean onContextItemSelected(MenuItem item) {
        switch(item.getItemId()) {
            case DELETE_ID:
                AdapterContextMenuInfo info = (AdapterContextMenuInfo) item.getMenuInfo();
                mDbHelper.deleteFav(info.id);
                fillData();
                return true;
        }
        return super.onContextItemSelected(item);
    }

    @Override
    protected void onListItemClick(ListView l, View v, int position, long id) {
        super.onListItemClick(l, v, position, id);
        Intent i = new Intent(this, FavRed.class);
        i.putExtra(FavDbAdapter.KEY_ROWID, id);
        startActivityForResult(i, ACTIVITY_EDIT);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent intent) {
        super.onActivityResult(requestCode, resultCode, intent);
        fillData();
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

    private void noConnectionDialog() {
        AlertDialog.Builder ab = null;
    	   ab = new AlertDialog.Builder( this );
    	   ab.setMessage( getResources().getString(R.string.no_internet));
    	   ab.setPositiveButton(getResources().getString(R.string.ok), null);
    	   ab.setTitle(getResources().getString(R.string.no_connection));
    	   ab.show();
     }
}
