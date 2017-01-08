package com.dvstudio.RestaurantPOSMakeEasy;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;

import com.dvstudio.readme.R;

public final class TableFragment extends Fragment {
    private static final String KEY_CONTENT = "TestFragment:Content";

    public static TableFragment newInstance(String content) {
        TableFragment tablefragment = new TableFragment();


        StringBuilder builder = new StringBuilder();
        for (int i = 0; i < 20; i++) {
            builder.append(content).append(" ");
        }
        builder.deleteCharAt(builder.length() - 1);
        tablefragment.mContent = builder.toString();

        return tablefragment;
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

        //layout.setLayoutParams(new LinearLayout.LayoutParams(FILL_PARENT,
              //  WRAP_CONTENT,0.5f));
        //layout.setWeightSum(0.5f);
        //LinearLayout.LayoutParams lay = (LinearLayout.LayoutParams) layout.getLayoutParams();
        //lay.weight = 0.5f;
        //layout.setWeightSum(2f);

        //            LinearLayout row = new LinearLayout(this);

        for (int i = 0; i < 3; i++) {
            //layout.setLayoutParams(new ViewGroup.LayoutParams(ViewGroup.LayoutParams.FILL_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
            for (int j = 0; j < 5; j++) {
                LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
                        LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT,0.5f);
                Button btnTag = new Button(getActivity());

               //btnTag.setLayoutParams(new ViewGroup.LayoutParams(ViewGroup.LayoutParams.FILL_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT)); //Working well


                //params.weight = 1.0f;
                //Button button = new Button(this);
                btnTag.setLayoutParams(params);
                btnTag.setHeight(150);
                btnTag.setWidth(300);

                btnTag.setText(" 堂食 (" + (j + 1 + (i * 5)) + ") ");
                btnTag.setId(j + 1 + (i * 5));

                btnTag.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                            Intent myIntent = new Intent(getActivity(), TempOrderMain.class);
                             Button b = (Button)v;
                            String tableName = b.getText().toString();
                        //Toast.makeText(getActivity(), tableName,
                              //  Toast.LENGTH_LONG).show();
                           myIntent.putExtra("tableName",tableName);

                           startActivity(myIntent);

                    }
                });
                layout.addView(btnTag);
            }
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
