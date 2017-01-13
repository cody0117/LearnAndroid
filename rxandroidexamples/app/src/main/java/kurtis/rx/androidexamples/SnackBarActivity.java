package kurtis.rx.androidexamples;

import android.os.Bundle;
import android.support.design.widget.Snackbar;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;

public class SnackBarActivity extends AppCompatActivity {

  @BindView(R.id.btnShowSnackbar) Button btnShowSnackbar;
  @BindView(R.id.btnShowSnackBarWithAction) Button btnShowSnackBarWithAction;


  @Override protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.activity_snack_bar);
    ButterKnife.bind(this);
  }

  @OnClick({ R.id.btnShowSnackbar, R.id.btnShowSnackBarWithAction })
  public void onClick(View view) {
    switch (view.getId()) {
      case R.id.btnShowSnackbar:
            ShowSnackbar();
        break;
      case R.id.btnShowSnackBarWithAction:
        break;
    }
  }

  private void ShowSnackbar() {
    Snackbar snackbar = Snackbar.make(findViewById(R.id.activity_snack_bar),
        "This is a snackbar", Snackbar.LENGTH_LONG);
    snackbar.show();

  }
}
