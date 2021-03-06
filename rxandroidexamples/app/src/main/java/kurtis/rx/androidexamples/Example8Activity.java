package kurtis.rx.androidexamples;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.widget.Button;
import android.widget.Toast;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;

public class Example8Activity extends AppCompatActivity {

  @BindView(R.id.Aboutbtn) Button Aboutbtn;

  @Override protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);

    configureLayout();
  }

  private void configureLayout() {

    setContentView(R.layout.activity_aboutbox);
    ButterKnife.bind(this);
  }

  @Override protected void onDestroy() {
    super.onDestroy();
  }

  @OnClick(R.id.Aboutbtn) public void onClick() {
    Toast.makeText(Example8Activity.this, "Click", Toast.LENGTH_SHORT).show();
    AboutBox.Show(Example8Activity.this);

  }
}
