package com.dvstudio.RestaurantPOSMakeEasy;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.Toast;

import com.dvstudio.readme.R;
import com.firebase.client.Firebase;

import java.util.Random;

public final class MenuItemFragment extends Fragment {
    private static final String KEY_CONTENT = "TestFragment:Content";

    private Firebase mFirebaseRef;
    private static final String FIREBASE_URL = "https://vivid-heat-248.firebaseio.com/";
    public String mUsername;

    public static MenuItemFragment newInstance(String content) {
        MenuItemFragment menuItemFragment = new MenuItemFragment();


        StringBuilder builder = new StringBuilder();
        for (int i = 0; i < 20; i++) {
            builder.append(content).append(" ");
        }
        builder.deleteCharAt(builder.length() - 1);
        menuItemFragment.mContent = builder.toString();

        return menuItemFragment;
    }

    private String mContent = "???";

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        String tableName = getActivity().getIntent().getExtras().getString("tableName");
        mFirebaseRef = new Firebase(FIREBASE_URL).child(tableName);
        Toast.makeText(getActivity(), tableName,
                Toast.LENGTH_LONG).show();
        setupUsername();

        if ((savedInstanceState != null) && savedInstanceState.containsKey(KEY_CONTENT)) {
            mContent = savedInstanceState.getString(KEY_CONTENT);
        }
    }

    private void setupUsername() {

        SharedPreferences prefs = getActivity().getSharedPreferences("ChatPrefs", 0);
        mUsername = prefs.getString("username", null);
        if (mUsername == null) {
            Random r = new Random();
            // Assign a random user name if we don't have one saved.
            mUsername = "JavaUser" + r.nextInt(100000);
            prefs.edit().putString("username", mUsername).commit();
        }
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {

        View rootView = inflater.inflate(R.layout.menufragment, container, false);
        LinearLayout layout = (LinearLayout)rootView.findViewById(R.id.menu_main_layout);
        layout.setOrientation(LinearLayout.VERTICAL);  //Can also be done in xml by android:orientation="vertical"

        //            LinearLayout row = new LinearLayout(this);
           String [] menu = new String[]{"叉燒"," 燒肉","鹽香雞"," 頭抽豉","油雞"," 紅腸,","燒鴨","單拼","雙拼","四寶飯","海南雞"," 醬油雞"};

             //layout.setLayoutParams(new ViewGroup.LayoutParams(ViewGroup.LayoutParams.FILL_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
            for (int j = 0; j < menu.length; j++) {
                final Button btnTag = new Button(getActivity());

                btnTag.setLayoutParams(new ViewGroup.LayoutParams(ViewGroup.LayoutParams.FILL_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
                btnTag.setText(menu[j]);
                btnTag.setId(j);
                btnTag.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                 ChangeText(btnTag);//Function for Query
                        Button b = (Button)v;
                        String text = b.getText().toString();
                        b.setText(text+" x ");
                    }
                });
                layout.addView(btnTag);

        }





//        //Find the layout with the id you gave in on the xml
//        RelativeLayout rl = (RelativeLayout) rootView.findViewById(R.id.fragment_main_layout);
//
//        //And now you can add the buttons you need, because it's a fragment, use getActivity() as context
//        Button bt = new Button(getActivity());
//        //You can add LayoutParams to put the button where you want it and the just add it
//        rl.addView(bt);




        return rootView;
    }

    private void ChangeText(Button btnTag) {

        //String input = inputText.getText().toString();
        String input= (String) btnTag.getText();

        if (!input.equals("")) {
            // Create our 'model', a Chat object

            Chat chat = new Chat(input,mUsername,randInt(20,50) );
            // Create a new, auto-generated child of that chat location, and save our chat data there
            mFirebaseRef.push().setValue(chat);
            //inputText.setText("");
        }

//         String KEY_URL = "url";  //working in Parse
//         String KEY_NOTES = "notes";
//        String POSTS = "Post";
//
//        ParseObject post = new ParseObject(POSTS);
//        post.put(KEY_URL,btnTag.getText());
//        post.put(KEY_NOTES,randInt(1,50));
//        post.saveInBackground();


     //   OrderItemFragment orderItemFragment = (OrderItemFragment)getActivity().getSupportFragmentManager().findFragmentById(R.id.OrderedTextViewed);

       // orderItemFragment.changeTextProperties("Something");
        // OrderItemFragment.changeTextProperties("Something");


        // DummyContent.setContext();
        // ((OrderItemFragment)getActivity().getSupportFragmentManager().findFragmentById(R.id.)).notifyDataSetChanged();


    }

    public static String randInt(int min, int max) {

        // NOTE: Usually this should be a field rather than a method
        // variable so that it is not re-seeded every call.
        Random rand = new Random();

        // nextInt is normally exclusive of the top value,
        // so add 1 to make it inclusive
        int randomNum = rand.nextInt((max - min) + 1) + min;


        return String.valueOf(randomNum);
    }

    @Override
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        outState.putString(KEY_CONTENT, mContent);
    }
}
