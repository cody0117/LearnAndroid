package com.example.victor888.contact;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import butterknife.BindView;
import butterknife.ButterKnife;

public class MainActivity extends AppCompatActivity {

  @BindView(R.id.student_list_ListView) ListView mStudentListListView;

  @Override protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.activity_main);
    ButterKnife.bind(this);

    String[] s = { "Student1", "Student2", "Student3" };

    ArrayAdapter<String> studentAdapter =
        new ArrayAdapter<String>(this, android.R.layout.simple_list_item_1, s);
    mStudentListListView.setAdapter(studentAdapter);
  }
}
