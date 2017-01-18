package kurtis.rx.androidexamples;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;

public class BasicElement extends AppCompatActivity {

  @BindView(R.id.activity_basic_element_edittext) EditText activityBasicElementEdittext;
  @BindView(R.id.activity_basic_element_sendbtn) Button activityBasicElementSendbtn;
  @BindView(R.id.activity_basic_element) LinearLayout activityBasicElement;

  @Override protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.activity_basic_element);
    ButterKnife.bind(this);
  }

  @OnClick(R.id.activity_basic_element_sendbtn) public void onClick() {

  }
}
