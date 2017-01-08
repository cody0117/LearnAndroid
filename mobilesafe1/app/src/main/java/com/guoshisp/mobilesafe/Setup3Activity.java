package com.guoshisp.mobilesafe;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

public class Setup3Activity extends Activity {
	private EditText et_setup3_number;//設定綁定的安全號碼
	private SharedPreferences sp;//用於儲存安全號碼及安全號碼的回應
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.setup3);
		et_setup3_number = (EditText) findViewById(R.id.et_setup3_number);
		sp = getSharedPreferences("config", MODE_PRIVATE);
		//資料的回應。若果沒有儲存過安全號碼，回應的是空
		String number = sp.getString("safemuber", "");
		et_setup3_number.setText(number);
	}
	/**
	 * 在第三個界面的“選取聯繫人”按鈕上設定有屬性：android:onClick="selectContact"，所以，當點擊“選取聯繫人”時會執行該方法
	 * @param view
	 */
	public void selectContact(View view){
		Intent intent = new Intent(this,SelectContactActivity.class);
		//啟動一個帶傳回值的activity。參數二：請求碼
		startActivityForResult(intent, 0);
	}
	/**
	 * 被啟動的Activity將傳回的結果資料存放在Intent中，這裡的Intent和被啟動的Activity傳回
	 * 資料時所使用的是同一個Intent。
	 * 注意：若果希望資料能夠標準傳回，Activity的啟動模式不能夠設定為singletask模式
	 */
	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		if(data!=null){
			//取得到傳回的資料
			String number = data.getStringExtra("number");
			//將傳回的資料顯示在EditText中
			et_setup3_number.setText(number);
		}
		super.onActivityResult(requestCode, resultCode, data);
	}
	//點擊“下一步”執行的方法
	public void next(View view){
		String number = et_setup3_number.getText().toString().trim();
		if(TextUtils.isEmpty(number)){
			Toast.makeText(this, "安全號碼不能為空", 0).show();
			return;
		}
		//將EditText中的安全號碼持久化起來，也方便資料的回應
		Editor editor = sp.edit();
		editor.putString("safemuber", number);
		editor.commit();
		
		Intent intent = new Intent(this,Setup4Activity.class);
		startActivity(intent);
		finish();
		//自訂一個平移的動畫效果。參數一：界面進入時的動畫效果 ， 參數二：界面出去時的動畫效果
		overridePendingTransition(R.anim.tran_in, R.anim.tran_out);
	}
	//點擊“上一步”執行的方法
	public void pre(View view){
		Intent intent = new Intent(this,Setup2Activity.class);
		startActivity(intent);
		finish();
		//自訂一個透明度變化的動畫效果。參數一：界面進入時的動畫效果 ， 參數二：界面出去時的動畫效果
		overridePendingTransition(R.anim.alpha_in, R.anim.alpha_out);
	}
}
