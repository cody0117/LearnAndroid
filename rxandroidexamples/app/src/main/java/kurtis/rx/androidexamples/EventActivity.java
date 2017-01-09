package kurtis.rx.androidexamples;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.widget.Button;
import android.widget.Toast;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.OnLongClick;

public class EventActivity extends AppCompatActivity {

  @BindView(R.id.button) Button button;


  @Override protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);

    configureLayout();
  }

  private void configureLayout() {

    setContentView(R.layout.events);
    ButterKnife.bind(this);
  }

  @Override protected void onDestroy() {
    super.onDestroy();
  }


  @OnClick(R.id.button) public void onClick() {
    Toast.makeText(EventActivity.this, "onClick Happen", Toast.LENGTH_SHORT).show();
  }





  @OnLongClick(R.id.button) boolean onLongClick() {
    Toast.makeText(EventActivity.this, "OnLong Clikc Happen", Toast.LENGTH_SHORT).show();
    return true;
  }


}
