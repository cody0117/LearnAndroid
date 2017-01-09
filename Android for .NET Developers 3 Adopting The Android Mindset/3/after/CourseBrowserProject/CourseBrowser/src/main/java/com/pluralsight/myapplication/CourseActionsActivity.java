package com.pluralsight.myapplication;

import android.app.ActionBar;
import android.content.Intent;
import android.os.Bundle;
import android.app.Activity;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

public class CourseActionsActivity extends Activity {
  public final static String COURSE_ACTION = "course action";
  public final static String COURSE_TITLE = CourseFragment.COURSE_TITLE;
  public final static String TOP_CARD = CourseFragment.TOP_CARD;

  private final static int TOP_CARD_RESOURCE_ID = -1;

  String mCourseAction;
  String mCourseTitle;
  int mTopCardResourceId;
  boolean mIsCourseView = false;

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.activity_course_actions);

    Intent startIntent = getIntent();

    mCourseAction = startIntent.getStringExtra(COURSE_ACTION);
    mCourseTitle = startIntent.getStringExtra(COURSE_TITLE);
    mTopCardResourceId =
        startIntent.getIntExtra(TOP_CARD, TOP_CARD_RESOURCE_ID);

    configureActionBar(mCourseAction);

    TextView courseTitleTextView = (TextView) findViewById(R.id.courseTitle);
    ImageView topCardImageView = (ImageView) findViewById(R.id.topCard);

    courseTitleTextView.setText(mCourseTitle);
    topCardImageView.setImageResource(mTopCardResourceId);

    // Are we acting as the course video view page
    mIsCourseView = mCourseAction.equalsIgnoreCase(getString(R.string.title_action_view));
    if(mIsCourseView){
      // Change background color so view page stands out
      View rootLayout = findViewById(R.id.rootView);
      rootLayout.setBackgroundColor(getResources().getColor(android.R.color.holo_orange_light));
    }

  }

  private void configureActionBar(String courseAction) {
    ActionBar actionBar = getActionBar();
    actionBar.setTitle(courseAction);
    actionBar.setDisplayHomeAsUpEnabled(true);

  }


  @Override
  public boolean onCreateOptionsMenu(Menu menu) {
    // Our only menu option is to view the course, so only show
    //  the menu if we're not already on the view screen
    if(!mIsCourseView)
      getMenuInflater().inflate(R.menu.course_info, menu);
    return true;
  }

  @Override
  public boolean onOptionsItemSelected(MenuItem item) {
    boolean handled = true;

    switch (item.getItemId()) {
      case R.id.action_view:
        showVideoActionActivity();
        break;
      default:
        handled = super.onOptionsItemSelected(item);

    }


    return handled;
  }

  private void showVideoActionActivity() {
    Intent intent = new Intent(this, CourseActionsActivity.class);
    intent.putExtra(CourseActionsActivity.COURSE_ACTION, getString(R.string.title_action_view));
    intent.putExtra(CourseActionsActivity.COURSE_TITLE, mCourseTitle);
    intent.putExtra(CourseActionsActivity.TOP_CARD, mTopCardResourceId);

    startActivity(intent);
  }
}