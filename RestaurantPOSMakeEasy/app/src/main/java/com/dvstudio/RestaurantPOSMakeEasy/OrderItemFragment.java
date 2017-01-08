package com.dvstudio.RestaurantPOSMakeEasy;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.SimpleAdapter;
import android.widget.TextView;

import com.dvstudio.readme.R;
import com.parse.FindCallback;
import com.parse.ParseException;
import com.parse.ParseObject;
import com.parse.ParseQuery;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public final class OrderItemFragment extends Fragment {
    private static final String KEY_CONTENT = "TestFragment:Content";
    public TextView myText;

    public static final String TAG = MainFeedActivity.class.getSimpleName();

    protected ProgressBar mProgressBar;
    private String TempString;
    SimpleAdapter adapter;


    public static OrderItemFragment newInstance(String content) {
        OrderItemFragment fragment = new OrderItemFragment();

        StringBuilder builder = new StringBuilder();
        for (int i = 0; i < 20; i++) {
            builder.append(content).append(" ");
        }
        builder.deleteCharAt(builder.length() - 1);
        fragment.mContent = builder.toString();

        return fragment;
    }

    private String mContent = "???";

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        if ((savedInstanceState != null) && savedInstanceState.containsKey(KEY_CONTENT)) {
            mContent = savedInstanceState.getString(KEY_CONTENT);
        }

        mProgressBar = (ProgressBar)getActivity().findViewById(R.id.progressBar1);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        TextView text = new TextView(getActivity());
        text.setGravity(Gravity.CENTER);
        text.setText(mContent);
        text.setTextSize(20 * getResources().getDisplayMetrics().density);
        text.setPadding(20, 20, 20, 20);

        LinearLayout layout = new LinearLayout(getActivity());
        layout.setLayoutParams(new LinearLayout.LayoutParams(LinearLayout.LayoutParams.FILL_PARENT, LinearLayout.LayoutParams.FILL_PARENT));
        layout.setGravity(Gravity.CENTER);
        layout.addView(text);
        //layout.addView(text);


        return layout;
    }

    @Override
    public void onViewCreated(View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);

//        ListView lv = (ListView) getActivity().findViewById(R.id.list);
//        lv.setAdapter(adapter);
    }

    @Override
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        outState.putString(KEY_CONTENT, mContent);
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
                     adapter = new SimpleAdapter(
                            getActivity(), articles,
                            android.R.layout.simple_list_item_2, new String[] {
                            AddLinkActivity.KEY_NOTES,
                            AddLinkActivity.KEY_URL }, new int[] {
                            android.R.id.text1, android.R.id.text2 });

                    //setListAdapter(adapter);
                } else {
                    Log.e(TAG, "Exception caught!", e);
                }
            }
        });
    }
    public void changeTextProperties(String something)
    {

      myText.setText(something);
    }
}
