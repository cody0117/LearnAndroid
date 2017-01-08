package com.guoshisp.mobilesafe;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.admin.DevicePolicyManager;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

import com.guoshisp.mobilesafe.receiver.MyAdmin;
public class Setup4Activity extends Activity {
	private CheckBox cb_setup4_protect;
	private SharedPreferences sp;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.setup4);
		sp = getSharedPreferences("config", MODE_PRIVATE);
		cb_setup4_protect = (CheckBox)findViewById(R.id.cb_setup4_protect);
		//用於資料的回應。判斷手機防盜是否開啟，預設情況下沒有開啟
		boolean protecting = sp.getBoolean("protecting", false);
		cb_setup4_protect.setChecked(protecting);
		
		cb_setup4_protect.setOnCheckedChangeListener(new OnCheckedChangeListener() {
			
			public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
				Editor editor = sp.edit();
				if(isChecked){
					editor.putBoolean("protecting", true);
					cb_setup4_protect.setText("防盜保護已經開啟");
				}else{
					cb_setup4_protect.setText("防盜保護沒有開啟");
					editor.putBoolean("protecting", false);
				}
				editor.commit();
			}
		});
	}
	/**
	 * 當點擊設定精靈中的第四個界面中的“點擊啟動deviceadmin...”時所執行的方法。
	 * 啟動手機的裝置管理員權限。啟動後，可以執行遠端鎖屏、清除資料還原至出場設定
	 * @param view
	 */
	public void activeDeviceAdmin(View view){
		//建立出一個與MyAdmin關聯聯的元件
		ComponentName mAdminName = new ComponentName(this, MyAdmin.class);
		///取得手機裝置管理器
		DevicePolicyManager dm = (DevicePolicyManager) getSystemService(DEVICE_POLICY_SERVICE);
		//判斷元件是否已經取得超級管理員的權限
		if (!dm.isAdminActive(mAdminName)) {
			Intent intent = new Intent(
					DevicePolicyManager.ACTION_ADD_DEVICE_ADMIN);
			//將元件的超級管理員權限啟動
			intent.putExtra(DevicePolicyManager.EXTRA_DEVICE_ADMIN, mAdminName);
			startActivity(intent);
		}
	}
	
	
	
	/**
	 * 點擊設定精靈的第四個界面中的“設定完成”時所執行的方法，當執行該方法時，說明設定精靈已經完成
	 * @param view
	 */
	public void next(View view){
		if(!cb_setup4_protect.isChecked()){//若果防盜保護沒有開啟，出現一個交談視窗提示開啟保護
			AlertDialog.Builder builder = new Builder(this);
			builder.setTitle("溫馨提示");
			builder.setMessage("手機防盜極大的保護了你的手機安全,強烈建議開啟!");
			builder.setPositiveButton("開啟", new OnClickListener() {
				
				public void onClick(DialogInterface dialog, int which) {
					//將防盜保護開啟
					cb_setup4_protect.setChecked(true);
					//設定精靈已經完成，在使用者下次進入時判斷時，值為true，說明已經進行過設定精靈
					Editor editor = sp.edit();
					editor.putBoolean("issetup", true);
					editor.commit();
				}
			});
			builder.setNegativeButton("取消", new OnClickListener() {
				
				public void onClick(DialogInterface dialog, int which) {
					finish();
					//設定精靈已經完成，在使用者下次進入時判斷時，值為true，說明已經進行過設定精靈
					Editor editor = sp.edit();
					editor.putBoolean("issetup", true);
					editor.commit();
				}
			});
			builder.create().show();
			
			
			return ;
		}
		//設定精靈已經完成，在使用者下次進入時判斷時，值為true，說明已經進行過設定精靈
		Editor editor = sp.edit();
		editor.putBoolean("issetup", true);
		editor.commit();
		
		Intent intent = new Intent(this,LostProtectedActivity.class);
		startActivity(intent);
		finish();
		//自訂一個平移的動畫效果。參數一：界面進入時的動畫效果 ， 參數二：界面出去時的動畫效果
		overridePendingTransition(R.anim.tran_in, R.anim.tran_out);
	}
	public void pre(View view){
		Intent intent = new Intent(this,Setup3Activity.class);
		startActivity(intent);
		finish();
		//自訂一個透明度變化的動畫效果。參數一：界面進入時的動畫效果 ， 參數二：界面出去時的動畫效果
		overridePendingTransition(R.anim.alpha_in, R.anim.alpha_out);
	}
}
