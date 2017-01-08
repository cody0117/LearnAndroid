package com.pluralsight.myapplication;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;

/**
 * Created by Jim on 7/6/13.
 */
public class CoursePagerAdapter extends FragmentPagerAdapter {
  String[] mCourseTitles;
  String[] mCourseTitlesShort;
  String[] mCourseDescriptions;

  public CoursePagerAdapter(FragmentManager fm, Context context) {
    super(fm);

    Resources resources = context.getResources();
    mCourseTitles = resources.getStringArray(R.array.course_titles);
    mCourseTitlesShort = resources.getStringArray(R.array.course_titles_short);
    mCourseDescriptions = resources.getStringArray(R.array.course_descriptions);
  }

  @Override
  public Fragment getItem(int i) {
    Bundle arguments = new Bundle();
    arguments.putString(CourseFragment.COURSE_TITLE, mCourseTitles[i]);
    arguments.putString(CourseFragment.COURSE_DESCRIPTIONS, mCourseDescriptions[i]);
    arguments.putInt(CourseFragment.TOP_CARD, translateTopCardIndex(i));
    arguments.putInt(CourseFragment.COURSE_TYPE_LOGO, R.drawable.ps_android_logo);

    CourseFragment courseFragment = new CourseFragment();
    courseFragment.setArguments(arguments);
    return courseFragment;
  }

  private int translateTopCardIndex(int i) {
    int resourceId = 0;
    switch (i) {
      case 0:
        resourceId = R.drawable.ps_top_card_01;
        break;
      case 1:
        resourceId = R.drawable.ps_top_card_02;
        break;
      case 2:
        resourceId = R.drawable.ps_top_card_03;
        break;
      case 3:
        resourceId = R.drawable.ps_top_card_04;
        break;
      case 4:
        resourceId = R.drawable.ps_top_card_05;
        break;
      case 5:
        resourceId = R.drawable.ps_top_card_06;
        break;
      case 6:
        resourceId = R.drawable.ps_top_card_07;
        break;
    }

    return resourceId;
  }

  @Override
  public CharSequence getPageTitle(int position) {
    return mCourseTitlesShort[position];
  }

  @Override
  public int getCount() {
    return mCourseTitles.length;
  }
}
