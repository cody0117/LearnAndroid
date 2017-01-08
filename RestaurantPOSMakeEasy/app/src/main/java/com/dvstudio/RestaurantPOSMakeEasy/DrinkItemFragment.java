package com.dvstudio.RestaurantPOSMakeEasy;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;

import com.dvstudio.readme.R;

public final class DrinkItemFragment extends Fragment {
    private static final String KEY_CONTENT = "TestFragment:Content";

    public static DrinkItemFragment newInstance(String content) {
        DrinkItemFragment menuItemFragment = new DrinkItemFragment();


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



        if ((savedInstanceState != null) && savedInstanceState.containsKey(KEY_CONTENT)) {
            mContent = savedInstanceState.getString(KEY_CONTENT);
        }
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {

        View rootView = inflater.inflate(R.layout.tablefragment, container, false);
        LinearLayout layout = (LinearLayout)rootView.findViewById(R.id.fragment_main_layout);
        layout.setOrientation(LinearLayout.VERTICAL);  //Can also be done in xml by android:orientation="vertical"

        //            LinearLayout row = new LinearLayout(this);
        String [] menu = new String[]{"凍奶茶","熱奶茶","凍咖啡","熱咖啡","凍檸茶","熱檸茶","凍檸水","熱檸水","凍好立克","熱好立克","凍華田","熱華田","凍朱古力","熱朱古力","凍菜蜜","熱菜蜜","凍檸蜜","熱檸蜜","凍菊花蜜","熱菊花蜜","可樂","無糖可樂","忌廉","芬達","雪碧","凍齋啡","熱齋啡","凍鴛鴦","熱鴛鴦","凍檸七","凍檸樂"};


        //layout.setLayoutParams(new ViewGroup.LayoutParams(ViewGroup.LayoutParams.FILL_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        for (int j = 0; j < menu.length; j++) {
            final Button btnTag = new Button(getActivity());

            btnTag.setLayoutParams(new ViewGroup.LayoutParams(ViewGroup.LayoutParams.FILL_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
            btnTag.setText(menu[j]);
            btnTag.setId(j);
            btnTag.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {

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

    @Override
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        outState.putString(KEY_CONTENT, mContent);
    }
}
