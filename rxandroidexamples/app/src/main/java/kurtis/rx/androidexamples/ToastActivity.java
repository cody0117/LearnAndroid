package kurtis.rx.androidexamples;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;

public class ToastActivity extends AppCompatActivity {

  @BindView(R.id.toastduration_text) TextView toastdurationText;
  @BindView(R.id.rbShort) RadioButton rbShort;
  @BindView(R.id.rbLong) RadioButton rbLong;
  @BindView(R.id.toastradiogroup) RadioGroup toastradiogroup;
  @BindView(R.id.btnShowToast) Button btnShowToast;
  @BindView(R.id.btnShowCustomToast) Button btnShowCustomToast;
  @BindView(R.id.activity_toast) RelativeLayout activityToast;

  @Override protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.activity_toast);
    ButterKnife.bind(this);
  }

  @OnClick({ R.id.btnShowToast, R.id.btnShowCustomToast }) public void onClick(View view) {
    switch (view.getId()) {
      case R.id.btnShowToast:
        showToast();
        break;
      case R.id.btnShowCustomToast:
        showCustomToast();
        break;
    }
  }

  private void showCustomToast() {

    int toastduration;
    if (rbShort.isChecked()) {
      toastduration = Toast.LENGTH_SHORT;
    } else {

      toastduration=Toast.LENGTH_LONG ;
    }

    //Get the layout inflater
    LayoutInflater inflater = getLayoutInflater();
    View customLayout = inflater.inflate(R.layout.custom_toast_layout,(ViewGroup)findViewById(R.id.customToastLayout));

    //Build the message that use the custom layout
     TextView tv = (TextView) customLayout.findViewById(R.id.customToast_text);

    tv.setText("This is a custom Toast");
     Toast toast = new Toast(getApplicationContext());

    toast.setDuration(toastduration);
    toast.setGravity(Gravity.BOTTOM |Gravity.START,250,100);
    toast.setView(customLayout);
    toast.show();

  }

  private void showToast() {
    int toastDuration;
    if (rbShort.isChecked()) {
      toastDuration = Toast.LENGTH_SHORT;
    } else {
      toastDuration=Toast.LENGTH_LONG;
    }

    Toast toast=Toast.makeText(ToastActivity.this, "This is a Toast", toastDuration);
    toast.setGravity(Gravity.CENTER,0,0);
    toast.show();


  }
}
