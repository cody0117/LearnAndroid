package com.guoshisp.mobilesafe;

import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.guoshisp.mobilesafe.db.dao.NumberAddressDao;

public class NumberQueryActivity extends Activity {
	private EditText et_number_query;// 輸入要查詢的號碼
	private TextView tv_number_address;// 顯示號碼歸屬地位置

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		setContentView(R.layout.number_query);
		super.onCreate(savedInstanceState);
		et_number_query = (EditText) findViewById(R.id.et_number_query);
		tv_number_address = (TextView) findViewById(R.id.tv_number_address);
	}

	/**
	 * 點擊“查詢”時執行的監聽方法
	 * 
	 * @param view
	 */
	public void query(View view) {
		// 查詢前，需要將號碼前後的空格清理掉
		String number = et_number_query.getText().toString().trim();
		// 判斷要查詢的號碼是否為空
		if (TextUtils.isEmpty(number)) {
			Toast.makeText(this, "號碼不能為空", 1).show();
			// 使用動畫工具來載入一個動畫資源一個動畫資源
			Animation shake = AnimationUtils.loadAnimation(this, R.anim.shake);
			// 當號碼輸入框中沒有輸入號碼而點擊“查詢”時播放一個動畫，用來提示使用者輸入號碼後才可以執行查詢動作。
			et_number_query.startAnimation(shake);
			return;
		} else {// 號碼不為空時要傳回歸屬地訊息
				// 傳回查詢到的歸屬地訊息
			String address = NumberAddressDao.getAddress(number);
			// 將歸屬地訊息顯示在螢幕上
			tv_number_address.setText(address);
		}
	}
}
