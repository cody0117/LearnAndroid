package com.guoshisp.mobilesafe;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.IBinder;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.guoshisp.mobilesafe.service.WatchDogService1;

public class EnterPwdActivity extends Activity {
	//密碼輸入框
	private EditText et_password;
	//套用名稱
	private TextView tv_name;
	//套用圖示
	private ImageView iv_icon;
	//用於啟動看門狗服務的意圖物件
	private Intent serviceIntent;
	//停止保護一個套用程式（接口）
	private IService iService;
	//連線服務時的一個物件（在綁定服務時需要傳入）
	private MyConn conn;
	//套用套件名稱
	private String packname;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.enter_pwd);
		et_password = (EditText) findViewById(R.id.et_password);
		//取得到啟動目前Activity的意圖（WatchDogService1中的pwdintent）
		Intent intent = getIntent();
		//取得到意圖中存入的資料（要進入被鎖定的套用的套件名稱）
		packname = intent.getStringExtra("packname");
		tv_name = (TextView) findViewById(R.id.tv_enterpwd_name);
		iv_icon = (ImageView) findViewById(R.id.iv_enterpwd_icon);
		serviceIntent = new Intent(this,WatchDogService1.class);
		conn = new MyConn();
		//綁定服務（非startService()）。執行服務中的onCreate-->onBind方法（該方法的傳回值不能為null）。
		bindService(serviceIntent, conn, BIND_AUTO_CREATE);
		
		try {
			//根據套件名稱取得到包訊息物件
			PackageInfo info = getPackageManager().getPackageInfo(packname, 0);
			//info.applicationInfo.loadLabel(getPackageManager())取得到該套件名稱的套用程式所對應的套用名稱
			tv_name.setText(info.applicationInfo.loadLabel(getPackageManager()));
			//info.applicationInfo.loadIcon(getPackageManager())取得到該套件名稱的套用程式所對應的套用圖示
			iv_icon.setImageDrawable(info.applicationInfo.loadIcon(getPackageManager()));
			
		} catch (NameNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	private class MyConn implements ServiceConnection{
		//在動作者在連線一個服務成功時被呼叫。IBinder物件就是onBind(Intent intent)傳回的IBinder物件。
		public void onServiceConnected(ComponentName name, IBinder service) {
			//因為傳回的IBinder實現了iService接口（向上轉型）
			iService = (IService) service;
		}
		//在服務崩潰或被殺死導致的連線中斷時被呼叫，而若果我們自己解除綁定時則不會被呼叫
		public void onServiceDisconnected(ComponentName name) {
			
		}
	}
	
	@Override
	protected void onDestroy() {
		super.onDestroy();
		//解除綁定
		unbindService(conn);
	}
	/**
	 * 點擊“確定”按鈕是執行的方法
	 */
	public void enterPassword(View view){
		//取得到輸入框中的密碼，並將密碼前後的空格清除掉。
		String pwd = et_password.getText().toString().trim();
		//判斷輸入的密碼是否為空
		if(TextUtils.isEmpty(pwd)){
			Toast.makeText(this, "密碼不能為空", 0).show();
			return ;
		}
		//判斷密碼是否為123（正確密碼，沒有提供設定密碼的界面，這裡簡單的處理一下）。
		if("123".equals(pwd)){
			//知會看門狗 臨時的停止對 packname的保護
			iService.callTempStopProtect(packname);
			/*Intent intent = new Intent();
			intent.setAction("cn.itcast.mobilesafe.stopprotect");
			intent.putExtra("packname", packname);
			sendBroadcast(intent);*/
			finish();
			
		}else{
			Toast.makeText(this, "密碼不正確", 0).show();
			return ;
		}
	}
	
	/**
	 * 當進入目前的界面後，屏蔽掉Back鍵
	 */
	@Override
	public boolean onKeyDown(int keyCode, KeyEvent event) {
		if(event.getAction()==KeyEvent.ACTION_DOWN&&event.getKeyCode()==KeyEvent.KEYCODE_BACK){
			return true;//消費掉目前的Back鍵
		}
		return super.onKeyDown(keyCode, event);
	}
}
