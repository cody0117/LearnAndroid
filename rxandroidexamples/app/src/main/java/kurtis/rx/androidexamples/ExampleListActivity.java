package kurtis.rx.androidexamples;

import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;

import java.util.ArrayList;
import java.util.List;

public class ExampleListActivity extends AppCompatActivity {

  @Override protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.activity_example_list);
    setupActionBar();
    setupExampleList();
  }

  private void setupActionBar() {
    ActionBar actionBar = getSupportActionBar();
    if (actionBar != null) {
      actionBar.setTitle(R.string.example_list_title);
    }
  }

  private void setupExampleList() {
    RecyclerView exampleList = (RecyclerView) findViewById(R.id.example_list);
    exampleList.setHasFixedSize(true);
    exampleList.setLayoutManager(new LinearLayoutManager(this));
    exampleList.setAdapter(new ExampleAdapter(this, getExamples()));
  }

  private static List<ExampleActivityAndName> getExamples() {
    List<ExampleActivityAndName> exampleActivityAndNames = new ArrayList<>();
    exampleActivityAndNames.add(
        new ExampleActivityAndName(Example1Activity.class, "Example 1: Simple Color List"));
    exampleActivityAndNames.add(
        new ExampleActivityAndName(Example2Activity.class, "Example 2: Favorite Tv Shows"));
    exampleActivityAndNames.add(new ExampleActivityAndName(Example3Activity.class,
        "Example 3: Improved Favorite Tv Shows"));
    exampleActivityAndNames.add(
        new ExampleActivityAndName(Example4Activity.class, "Example 4: Button Counter"));
    exampleActivityAndNames.add(
        new ExampleActivityAndName(Example5Activity.class, "Example 5: Value Display"));
    exampleActivityAndNames.add(
        new ExampleActivityAndName(Example6Activity.class, "Example 6: City Search"));
    exampleActivityAndNames.add(
        new ExampleActivityAndName(Example7Activity.class, "Example 7: Rx Playground"));
    exampleActivityAndNames.add(
        new ExampleActivityAndName(Example8Activity.class, "Example 8: About Box"));
    exampleActivityAndNames.add(
        new ExampleActivityAndName(EventActivity.class, "Example 9: Clicks Events"));
    exampleActivityAndNames.add(
        new ExampleActivityAndName(ButterknifeActivity.class, "Example 10: Butterknife"));
    exampleActivityAndNames.add(
        new ExampleActivityAndName(Fronts.class, "Example 10: Use SP for Fonts"));
    exampleActivityAndNames.add(
        new ExampleActivityAndName(linearlayout.class, "Example 10: Use of Linear Layout"));

    exampleActivityAndNames.add(
        new ExampleActivityAndName(Relativelayout.class, "Example 10: Use of RelativeLayout"));
    exampleActivityAndNames.add(
        new ExampleActivityAndName(tablelayout.class, "Example 10: Use of Table Layout"));
    exampleActivityAndNames.add(
        new ExampleActivityAndName(ScollView.class, "Example 10: Use of ScrollView"));



    return exampleActivityAndNames;
  }
}
