package com.dvstudio.RestaurantPOSMakeEasy;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.ListFragment;
import android.util.Log;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.SimpleAdapter;
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

public class MainFeedFragment extends ListFragment {

    public static final String TAG = MainFeedActivity.class.getSimpleName();

    protected ProgressBar mProgressBar;
    private String TempString;
    private static final String KEY_CONTENT = "TestFragment:Content";
    private String mContent = "???";
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        //getActivity().setContentView(R.layout.activity_main);

        mProgressBar = (ProgressBar) getActivity().findViewById(R.id.progressBar1);

        if ((savedInstanceState != null) && savedInstanceState.containsKey(KEY_CONTENT)) {
            mContent = savedInstanceState.getString(KEY_CONTENT);
        }

        getLatestPosts();
    }
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {

       setHasOptionsMenu(true);
        LinearLayout layout = new LinearLayout(getActivity());
        layout.setLayoutParams(new LinearLayout.LayoutParams(LinearLayout.LayoutParams.FILL_PARENT, LinearLayout.LayoutParams.FILL_PARENT));
        layout.setGravity(Gravity.CENTER);

       // layout.setId(R.id.id_ListView);

        View rootView = inflater.inflate(R.layout.activity_main2, container, false);
        return rootView;
    }

    @Override
    public void onResume() {
        super.onResume();
       getLatestPosts();
    }

    protected void getLatestPosts() {
//        mProgressBar.setVisibility(View.VISIBLE);
      final ListView querylist = (ListView)this.getActivity().findViewById(android.R.id.list);
		/*
		 * Use ParseQuery to get latest posts
		 */
        ParseQuery query = new ParseQuery(AddLinkActivity.POSTS);
        query.setLimit(100);
        query.orderByAscending("createAt");
        query.findInBackground(new FindCallback() {
            public void done(List<ParseObject> results, ParseException e) {
               // mProgressBar.setVisibility(View.INVISIBLE);

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
                            getActivity(), articles,
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


    public void onListItemClick(ListView l, View v, int position, long id) {
//		TextView urlLabel = (TextView) v.findViewById(android.R.id.text2);
//		Intent intent = new Intent(Intent.ACTION_VIEW);
//		intent.setData(Uri.parse(urlLabel.getText().toString()));
//		startActivity(intent);
    }

    @Override
    public void onCreateOptionsMenu(Menu menu, MenuInflater inflater) {
        super.onCreateOptionsMenu(menu, inflater);
        inflater = getActivity().getMenuInflater();
        inflater.inflate(R.menu.activity_main_list, menu);
    }




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
                startActivity(new Intent(getActivity(), AddLinkActivity.class));
                return true;
            case R.id.followButton:
                startActivity(new Intent(getActivity(), SelectUsersActivity.class));
                return true;
            case R.id.logoutButton:
			/*
			 * Log current user out using ParseUser.logOut()
			 */
                ParseUser.logOut();
                Intent intent = new Intent(getActivity(), LoginOrSignupActivity.class);
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
       // TextView theFact = (TextView)getActivity().findViewById(android.R.id.text1);
       // String Text = theFact.getText().toString();

        Toast.makeText(getActivity().getApplicationContext(),TempString, Toast.LENGTH_LONG).show();
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