package com.example.jessica.myapplication;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import android.app.Activity;
import android.widget.ListView;
import android.os.Bundle;
import android.widget.SimpleAdapter;

public class MainActivity extends Activity {

    // Array of strings storing the recipe titles//
    String[] recipes = new String[] {
            "Easy veggie chilli",
            "Deep fried calamari with garlic and lemon mayo",
            "Best-ever chocolate brownies",
            "Everyday fish pie with cheesy sauce",
            "Seared tuna with stir-fried veggies",
            "American style blueberry pancakes with strawberry and banana",
            "Full English fry up",
            "Kashmiri curry",
            "Red berry pancakes with cream",
            "Sticky sweet and sour prawns",
            "Surf and turf for two"
    };
    // Array of integers points to images stored in the drawable folder//
    int[] images = new int[]{
            R.drawable.chilli,
            R.drawable.calamari,
            R.drawable.brownies,
            R.drawable.pie,
            R.drawable.tuna,
            R.drawable.blueberrypancake,
            R.drawable.fryup,
            R.drawable.kashmiricurry,
            R.drawable.redberrypancake,
            R.drawable.sweetandsourprawns,
            R.drawable.surfandturf
    };



    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);


        List<HashMap<String,String>> aList = new ArrayList<HashMap<String,String>>();

        for(int i=0;i<10;i++){
            HashMap<String, String> myMap = new HashMap<String,String>();
            myMap.put("recipe", recipes[i]);
            myMap.put("images", Integer.toString(images[i]) );
            aList.add(myMap);
        }


        String[] from = { "images","recipe", };


        int[] to = { R.id.images,R.id.recipe};


        SimpleAdapter adapter = new SimpleAdapter(getBaseContext(), aList, R.layout.simple_list_layout, from, to);


        ListView listView = ( ListView ) findViewById(R.id.listview);


        listView.setAdapter(adapter);




    }
}

