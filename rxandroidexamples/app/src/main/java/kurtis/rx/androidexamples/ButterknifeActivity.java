package kurtis.rx.androidexamples;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;

public class ButterknifeActivity extends AppCompatActivity  {

  @BindView(R.id.editText) EditText editText;
  @BindView(R.id.editText2) EditText editText2;
  @BindView(R.id.button_confirm) Button buttonConfirm;
  //@BindString(R.xcxccc) String Title:
  //@DindDrawable(R.xxxxx) Drawable graphic
  //@BindColor(R.) int red;
  //@BindDimen(R.) Float spacer.


  @Override protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);

    configureLayout();
  }


  private void configureLayout() {

    setContentView(R.layout.butterknifeactivity);
    ButterKnife.bind(this);

  }

  @Override protected void onDestroy() {
    super.onDestroy();
  }

   @OnClick(R.id.button_confirm)
   void onClick() {
       Toast.makeText(ButterknifeActivity.this, "Click happen", Toast.LENGTH_SHORT).show();
   }

    //There is lot other approach

  //@OnCheckedChanged()
  //@OnClick
   //OnEditorAction
   //OnFocusChange
   //@OnItemClick
  //@OnItemLongClick
   //@OnitemSelected
   //@OnLongClick
   //@OnpageChange
   //@OnTextChanged
   //OnTouch
}
