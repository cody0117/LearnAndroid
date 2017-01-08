package com.dvstudio.RestaurantPOSMakeEasy;

import android.app.ListActivity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.SimpleAdapter;
import android.widget.TextView;
import android.widget.Toast;

import com.dvstudio.readme.R;
import com.epson.eposprint.Builder;
import com.epson.eposprint.EposException;
import com.epson.eposprint.Print;
import com.parse.FindCallback;
import com.parse.ParseException;
import com.parse.ParseObject;
import com.parse.ParseQuery;
import com.parse.ParseUser;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class MainFeedActivity extends ListActivity {

	public static final String TAG = MainFeedActivity.class.getSimpleName();

	protected ProgressBar mProgressBar;
    private String TempString;

    @Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);

		mProgressBar = (ProgressBar) findViewById(R.id.progressBar1);

	}

	@Override
	public void onResume() {
		super.onResume();
		getLatestPosts();
	}

	protected void getLatestPosts() {
		mProgressBar.setVisibility(View.VISIBLE);

		/*
		 * Use ParseQuery to get latest posts
		 */
		ParseQuery query = new ParseQuery(AddLinkActivity.POSTS);
		query.setLimit(100);
		query.orderByDescending("createAt");
		query.findInBackground(new FindCallback() {
			public void done(List<ParseObject> results, ParseException e) {
				mProgressBar.setVisibility(View.INVISIBLE);

				if (e == null) {
					ArrayList<HashMap<String, String>> articles = new ArrayList<HashMap<String, String>>();
					for (ParseObject result : results) {
						HashMap<String, String> article = new HashMap<String, String>();
						article.put(AddLinkActivity.KEY_NOTES,
								result.getString(AddLinkActivity.KEY_NOTES));
                        TempString +=String.valueOf(result.getString(AddLinkActivity.KEY_NOTES))+" \n";
						article.put(AddLinkActivity.KEY_URL,
								result.getString(AddLinkActivity.KEY_URL));
                        TempString += String.valueOf(result.getString(AddLinkActivity.KEY_URL))+" \n";
						articles.add(article);
					}
					SimpleAdapter adapter = new SimpleAdapter(
							MainFeedActivity.this, articles,
							android.R.layout.simple_list_item_2, new String[] {
									AddLinkActivity.KEY_NOTES,
									AddLinkActivity.KEY_URL }, new int[] {
									android.R.id.text1, android.R.id.text2 });
					setListAdapter(adapter);
				} else {
					Log.e(TAG, "Exception caught!", e);
				}
			}
		});
	}

	@Override
	protected void onListItemClick(ListView l, View v, int position, long id) {
//		TextView urlLabel = (TextView) v.findViewById(android.R.id.text2);
//		Intent intent = new Intent(Intent.ACTION_VIEW);
//		intent.setData(Uri.parse(urlLabel.getText().toString()));
//		startActivity(intent);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		MenuInflater inflater = getMenuInflater();
		inflater.inflate(R.menu.activity_main_list, menu);
		return super.onCreateOptionsMenu(menu);
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		switch (item.getItemId()) {
            case R.id.sendToEpsonButton:
                try {
                    try {
                        SendDateToEpson();
                    } catch (UnsupportedEncodingException e) {
                        e.printStackTrace();
                    }
                } catch (EposException e) {
                    e.printStackTrace();
                }
                return true;
            case R.id.addButton:
			startActivity(new Intent(this, AddLinkActivity.class));
			return true;
		case R.id.followButton:
			startActivity(new Intent(this, SelectUsersActivity.class));
			return true;
		case R.id.logoutButton:
			/*
			 * Log current user out using ParseUser.logOut()
			 */
			ParseUser.logOut();
			Intent intent = new Intent(this, LoginOrSignupActivity.class);
			intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
			startActivity(intent);
			return true;


		default:
			return super.onOptionsItemSelected(item);
		}
	}

    private void SendDateToEpson() throws EposException, UnsupportedEncodingException {
        Print printer = new Print();
        int[] status = new int[1];
        status[0]=0;
        Builder builder = null;


           builder = new Builder("TM-T88V", Builder.MODEL_TAIWAN);
           builder.addTextLang(Builder.LANG_ZH_TW);
           builder.addTextAlign(Builder.ALIGN_CENTER);
           builder.addTextFont(Builder.FONT_B);
           builder.addTextDouble(Builder.TRUE,Builder.TRUE);
           TextView theFact = (TextView)findViewById(android.R.id.text1);
           String Text = theFact.getText().toString();

        Toast.makeText(getApplicationContext(),TempString, Toast.LENGTH_LONG).show();
        //String strReturn = new String(TempString.getBytes("UTF-8"), "big5");
        builder.addText(TempString);
         builder.addCut(Builder.CUT_FEED);

           Builder confirmBuilder = new Builder("TM-T88V",Builder.MODEL_TAIWAN);
             confirmBuilder.addTextLang(Builder.LANG_ZH_TW);
             confirmBuilder.addTextAlign(Builder.ALIGN_CENTER);
             confirmBuilder.addTextFont(Builder.FONT_B);
             confirmBuilder.addTextDouble(Builder.TRUE,Builder.TRUE);



           printer.openPrinter(Print.DEVTYPE_TCP,"192.168.41.177");
           printer.sendData(confirmBuilder,10000,status);

           if((status[0]&Print.ST_OFF_LINE) !=Print.ST_OFF_LINE){
               printer.sendData(builder,10000,status);
           }

           printer.closePrinter();




    }
}