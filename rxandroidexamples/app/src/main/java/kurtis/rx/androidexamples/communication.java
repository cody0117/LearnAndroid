package kurtis.rx.androidexamples;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.RelativeLayout;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;

public class communication extends AppCompatActivity {

  @BindView(R.id.btnLaunchToast) Button btnLaunchToast;
  @BindView(R.id.btnLanchSnackBar) Button btnLanchSnackBar;
  @BindView(R.id.btnLanuchDialog) Button btnLanuchDialog;
  @BindView(R.id.btnNotification) Button btnNotification;
  @BindView(R.id.activity_communication) RelativeLayout activityCommunication;

  @Override protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.activity_communication);
    ButterKnife.bind(this);
  }

  @OnClick({
      R.id.btnLaunchToast, R.id.btnLanchSnackBar, R.id.btnLanuchDialog, R.id.btnNotification,
      R.id.activity_communication
  }) public void onClick(View view) {
    switch (view.getId()) {
      case R.id.btnLaunchToast:
          startActivity(new Intent(this,ToastActivity.class ));
        break;
      case R.id.btnLanchSnackBar:
        startActivity(new Intent(this, SnackBarActivity.class));
        break;
      case R.id.btnLanuchDialog:
        break;
      case R.id.btnNotification:
        break;
      case R.id.activity_communication:
        break;
    }
  }
}
