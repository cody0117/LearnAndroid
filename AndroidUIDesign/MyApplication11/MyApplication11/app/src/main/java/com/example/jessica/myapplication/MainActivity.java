package com.example.jessica.myapplication;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.Toast;
import android.view.View;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main); }

        public void buttonClicked(View v) {

            Toast.makeText(this, "The button has been clicked!", Toast.LENGTH_LONG).show();
        }


    }

