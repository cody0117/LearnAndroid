package com.guoshisp.mobilesafe;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;

public class Setup1Activity extends Activity {
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		//進入到設定精靈的第一個界面
		setContentView(R.layout.setup1);
	}
	/**
	 * 當點擊設定精靈的第一個界面中右下角按鈕-下一步時所要執行的方法，
	 * 因為在該Button中設定有屬性android:onClick=next，在下面的程式碼中省去該解釋
	 * @param view
	 */
	public void next(View view){
		Intent intent = new Intent(this,Setup2Activity.class);
		startActivity(intent);
		finish();
		//Activity切換時播放動畫。自訂一個透明度變化的動畫效果，且該方法必須寫在startActivity(intent)或是finish()方法之後才會生效。
		//參數一：界面進入時的動畫效果 ， 參數二：界面出去時的動畫效果。
		overridePendingTransition(R.anim.alpha_in, R.anim.alpha_out);
	}
}
