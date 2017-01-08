package com.pluralsight.myapplication;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

/**
 * Created by Jim on 7/6/13.
 */
public class CourseFragment extends Fragment {
  public final static String COURSE_TITLE = "course title";
  public final static String COURSE_DESCRIPTIONS = "course description";
  public final static String TOP_CARD = "top card";
  public final static String COURSE_TYPE_LOGO = "course type logo";

  @Override
  public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
    View theView = inflater.inflate(R.layout.fragment_course_info, container, false);

    Bundle arguments = getArguments();
    if (arguments != null) {
      String courseTitle = arguments.getString(COURSE_TITLE);
      String courseDescription = arguments.getString(COURSE_DESCRIPTIONS);
      int topCardResourceId = arguments.getInt(TOP_CARD);
      int courseTypeLogoResourceId = arguments.getInt(COURSE_TYPE_LOGO);

      displayValues(theView, courseTitle, courseDescription,
          topCardResourceId, courseTypeLogoResourceId);

    }
    return theView;
  }

  private void displayValues(View theView, String courseTitle,
                             String courseDescription, int topCardResourceId, int courseTypeLogoResourceId) {
    TextView courseTitleTextView = (TextView) theView.findViewById(R.id.courseTitle);
    TextView courseDescriptionTextView = (TextView) theView.findViewById(R.id.courseDescription);
    ImageView topCardImageView = (ImageView) theView.findViewById(R.id.topCard);
    ImageView courseTypeLogoImageView = (ImageView) theView.findViewById(R.id.courseTypeLogo);

    courseTitleTextView.setText(courseTitle);
    courseDescriptionTextView.setText(courseDescription);

    topCardImageView.setImageResource(topCardResourceId);
    courseTypeLogoImageView.setImageResource(courseTypeLogoResourceId);
  }
}
