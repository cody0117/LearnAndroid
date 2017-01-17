package com.example.victor888.contact;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RatingBar;
import android.widget.Toast;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;

public class StudentForm extends AppCompatActivity {

  @BindView(R.id.ratingBar) RatingBar mRatingBar;
  @BindView(R.id.studentFormSave) Button mStudentFormSave;
  @BindView(R.id.activity_student_form) LinearLayout mActivityStudentForm;

  @Override protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.activity_student_form);
    ButterKnife.bind(this);


  }

  @OnClick(R.id.studentFormSave) public void onClick() {
    Toast.makeText(this, "Click Yeah", Toast.LENGTH_SHORT).show();
  }
}
