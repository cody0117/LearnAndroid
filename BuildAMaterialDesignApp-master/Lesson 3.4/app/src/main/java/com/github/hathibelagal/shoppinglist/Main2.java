package com.github.hathibelagal.shoppinglist;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;

/**
 * Created by cyber on 2017-01-06.
 */
public class Main2 extends AppCompatActivity {

  private static final String TAG = Main2.class.getSimpleName();

  /**
   * Change the null parameter in {@code setContentView()}
   * to a layout resource {@code R.layout.example}
   */
  @Override protected void onCreate(Bundle savedInstanceState) {
    Log.d(TAG, "onCreate: hit");
    super.onCreate(savedInstanceState);
    setContentView(null);
    boolean yesandno = true;
    if (yesandno) {

    }
  }

  @Override protected void onResume() {
    Log.d(TAG, "onResume: hit");
    super.onResume();
  }

  @Override protected void onPause() {
    Log.d(TAG, "onPause: hit");
    super.onPause();
  }

  @Override protected void onDestroy() {
    Log.d(TAG, "onDestroy: hit");
    super.onDestroy();
  }
}