package com.pluralsight.exerciseactivities;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.app.Activity;
import android.view.Menu;
import android.view.View;

public class MainActivity extends Activity {

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.activity_main);

    setupButtonHandlers();
  }

  private void setupButtonHandlers() {
    findViewById(R.id.makeCallButton).setOnClickListener(new View.OnClickListener() {
      @Override
      public void onClick(View view) {
        doMakeCall();
      }
    });
    findViewById(R.id.showPSWebPage).setOnClickListener(new View.OnClickListener() {
      @Override
      public void onClick(View view) {
        doShowWebPage();
      }
    });
    findViewById(R.id.browsePSCourses).setOnClickListener(new View.OnClickListener() {
      @Override
      public void onClick(View view) {
        doBrowsePSCourses();
      }
    });
  }

  @Override
  public boolean onCreateOptionsMenu(Menu menu) {
    // Inflate the menu; this adds items to the action bar if it is present.
    getMenuInflater().inflate(R.menu.main, menu);
    return true;
  }


  private void doMakeCall() {
    Intent intent = new Intent(Intent.ACTION_DIAL);
    intent.setData(Uri.parse("tel:212.555.1212"));
    startActivity(intent);

  }

  private void doShowWebPage() {
    Intent intent = new Intent(Intent.ACTION_VIEW);
    intent.setData(Uri.parse("http://pluralsight.com"));
    startActivity(intent);
  }

  private void doBrowsePSCourses() {
    Intent intent = new Intent("com.pluralsight.action.BROWSE_COURSES");
    intent.putExtra("course lib", 2);
    startActivity(intent);

  }
}
