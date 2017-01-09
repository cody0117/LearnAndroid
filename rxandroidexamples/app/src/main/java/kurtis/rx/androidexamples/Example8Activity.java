package kurtis.rx.androidexamples;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.widget.Button;
import butterknife.BindView;
import butterknife.OnClick;

public class Example8Activity extends AppCompatActivity {

  @BindView(R.id.Aboutbtn) Button Aboutbtn;

  @Override protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);

    configureLayout();
  }

  private void configureLayout() {

    setContentView(R.layout.activity_aboutbox);
  }

  @Override protected void onDestroy() {
    super.onDestroy();
  }

  @OnClick(R.id.Aboutbtn) public void onClick() {

    AboutBox.Show(Example8Activity.this);

  }
}
