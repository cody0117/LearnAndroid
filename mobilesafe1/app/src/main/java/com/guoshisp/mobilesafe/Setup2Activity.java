package com.guoshisp.mobilesafe;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;

public class Setup2Activity extends Activity implements OnClickListener {
	private RelativeLayout rl_setup2_bind;//“點擊綁定sim卡”的父控制項，該控制項中存在兩個子控制項，取得該控制項的目的在於為其設定點擊事件，便於點擊該控制項中的任何一個控制項都響應到點擊事件
	private ImageView iv_setup2_bind_status;//rl_setup2_bind中的一個子控制項，用於顯示sim卡是否被綁定時的不同狀態
	private SharedPreferences sp;//用於儲存sim卡是否被綁定的訊息，以便程式下次載入時使用
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.setup2);
		rl_setup2_bind = (RelativeLayout) findViewById(R.id.rl_setup2_bind);
		rl_setup2_bind.setOnClickListener(this);
		iv_setup2_bind_status = (ImageView) findViewById(R.id.iv_setup2_bind_status);
		sp = getSharedPreferences("config", MODE_PRIVATE);
		//起始化的邏輯-判斷sim卡是否被綁定
		String simseral = sp.getString("simserial", "");
		if(TextUtils.isEmpty(simseral)){
			iv_setup2_bind_status.setImageResource(R.drawable.switch_off_normal);
		}else{
			iv_setup2_bind_status.setImageResource(R.drawable.switch_on_normal);
		}
	}
	/**
	 * 在設定精靈的第二個界面中點擊”點擊綁定sim卡“時執行的點擊事件
	 */
	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.rl_setup2_bind:
			//判斷目前sim卡的狀態
			String simseral = sp.getString("simserial", "");
			if(TextUtils.isEmpty(simseral)){//sim卡未綁定
				Editor editor = sp.edit();
				editor.putString("simserial", getSimSerial());
				editor.commit();
				//因為sim卡的狀態是未被綁定，所以，點擊項目後應該設定為綁定的狀態
				iv_setup2_bind_status.setImageResource(R.drawable.switch_on_normal);
			}else{
				Editor editor = sp.edit();
				editor.putString("simserial", "");
				editor.commit();
				iv_setup2_bind_status.setImageResource(R.drawable.switch_off_normal);
			}
			
			break;
		}
	}
	
	/**
	 * 取得手機的sim卡串號
	 */
	private String getSimSerial(){
		//sim卡是與電話關聯的。需要在清單檔案中組態權限：<uses-permission android:name="android.permission.READ_PHONE_STATE" />
		TelephonyManager tm = (TelephonyManager) getSystemService(TELEPHONY_SERVICE);
		//傳回sim卡的串號
		return tm.getSimSerialNumber();
	}
	/**
	 * 點擊界面的右下角的”下一步“按鈕所要執行的方法
	 * @param view
	 */
	public void next(View view){
		
		Intent intent = new Intent(this,Setup3Activity.class);
		startActivity(intent);
		finish();
		//自訂一個平移的動畫效果。參數一：界面進入時的動畫效果 ， 參數二：界面出去時的動畫效果
		overridePendingTransition(R.anim.tran_in, R.anim.tran_out);
	}
	/**
	 * 點擊界面左下角的”上一步“所要執行的方法
	 * @param view
	 */
	public void pre(View view){
		Intent intent = new Intent(this,Setup1Activity.class);
		startActivity(intent);
		finish();
		//自訂一個透明度變化的動畫效果。參數一：界面進入時的動畫效果 ， 參數二：界面出去時的動畫效果
		overridePendingTransition(R.anim.alpha_in, R.anim.alpha_out);
	}
}
