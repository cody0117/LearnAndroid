package com.guoshisp.mobilesafe;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.guoshisp.mobilesafe.service.CallFirewallService;
import com.guoshisp.mobilesafe.service.ShowCallLocationService;
import com.guoshisp.mobilesafe.service.WatchDogService1;
import com.guoshisp.mobilesafe.utils.ServiceStatusUtil;

public class SettingCenterActivity extends Activity implements OnClickListener {
	// 程式的自動更新
	private SharedPreferences sp;// 用於儲存自動更新是否開啟的boolean值
	private TextView tv_setting_autoupdate_status;// 自動更新的是否開啟對應的TextView控制項的顯示文字
	private CheckBox cb_setting_autoupdate;// 顯示自動更新是否開啟的選取框
	// 歸屬地顯示控制項的宣告
	private TextView tv_setting_show_location_status;// 顯示來顯歸屬地是否開啟的狀態
	private CheckBox cb_setting_show_location;// 是否開啟來電歸屬地的Checkbox
	private RelativeLayout rl_setting_show_location;// “來電歸屬地是否開啟”控制項的父控制項
	private Intent showLocationIntent;// 開啟來電歸屬地訊息顯示的意圖
	// 歸屬地顯示背景控制項的宣告
	private RelativeLayout rl_setting_change_bg;// “來電歸屬地風格設定”控制項的父控制項
	private TextView tv_setting_show_bg;// “來電歸屬地風格設定”下用於顯示目前的風格文字
	// 歸屬地提示框的位置
	private RelativeLayout rl_setting_change_location;// “歸屬地提示框的位置”項目
	// 來電黑名單控制項的宣告
	private TextView tv_setting_call_firewall_status;// 來電黑名單攔截是否開啟對應的TextView控制項的顯示文字
	private CheckBox cb_setting_call_firewall;// 顯示來電黑名單攔截否開啟的選取框
	private RelativeLayout rl_setting_call_firewall;// “來電黑名單設定”控制項的父控制項
	private Intent callFirewallIntent;// 開啟來電黑名單攔截的服務意圖
	// 程式鎖控制項的宣告
	private TextView tv_setting_app_lock_status;
	private CheckBox cb_setting_applock;
	private RelativeLayout rl_setting_app_lock;
	private Intent watchDogIntent;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		setContentView(R.layout.setting_center);
		super.onCreate(savedInstanceState);
		// 取得Sdcard下的config.xml檔案，若果該檔案不存在，那麼將會自動建立該檔案，檔案的動作型態為私有型態
		sp = getSharedPreferences("config", MODE_PRIVATE);
		// 標示自動更新狀態是否開啟對應的Checkbox控制項
		cb_setting_autoupdate = (CheckBox) findViewById(R.id.cb_setting_autoupdate);
		// 顯示目前自動更新是否開啟對應的TextView控制項
		tv_setting_autoupdate_status = (TextView) findViewById(R.id.tv_setting_autoupdate_status);
		// 起始化自動更新的ui，預設狀態下是開啟的
		boolean autoupdate = sp.getBoolean("autoupdate", true);
		if (autoupdate) {
			tv_setting_autoupdate_status.setText("自動更新已經開啟");
			// 因為autoupdate變數為true，則表示自動更新開啟，所以，Checkbox的狀態應該是選取狀態的，即為true
			cb_setting_autoupdate.setChecked(true);
		} else {
			tv_setting_autoupdate_status.setText("自動更新已經關閉");
			// 因為autoupdate變數為false，則表示自動更新未開啟，所以，Checkbox的狀態應該是未選取狀態的，即為false
			cb_setting_autoupdate.setChecked(false);
		}
		/**
		 * 當Checkbox的狀態發生改變時執行以下程式碼
		 */
		cb_setting_autoupdate
				.setOnCheckedChangeListener(new OnCheckedChangeListener() {
					// 參數一：目前的Checkbox 第二個參數：目前的Checkbox是否處於選取狀態
					public void onCheckedChanged(CompoundButton buttonView,
							boolean isChecked) {
						// 取得編輯器
						Editor editor = sp.edit();
						// 持久化儲存目前Checkbox的狀態，當下次進入時，依然可以儲存目前設定的狀態
						editor.putBoolean("autoupdate", isChecked);
						// 將資料真正傳送到sp裡面
						editor.commit();
						if (isChecked) {// Checkbox處於勾選效果
							// 當Checkbox處於選取狀態時，表示我們的自動更新已經開啟，同時修改字型彩色
							tv_setting_autoupdate_status
									.setTextColor(Color.WHITE);
							tv_setting_autoupdate_status.setText("自動更新已經開啟");
						} else {// Checkbox處於未選取狀態
								// 當Checkbox未處於選取狀態時，表示我們的自動更新已經開啟，同時修改字型彩色
							tv_setting_autoupdate_status
									.setTextColor(Color.RED);
							tv_setting_autoupdate_status.setText("自動更新已經關閉");
						}
					}
				});
		// 顯示歸屬地訊息的ui起始化
		tv_setting_show_location_status = (TextView) findViewById(R.id.tv_setting_show_location_status);
		cb_setting_show_location = (CheckBox) findViewById(R.id.cb_setting_show_location);
		rl_setting_show_location = (RelativeLayout) findViewById(R.id.rl_setting_show_location);
		showLocationIntent = new Intent(this, ShowCallLocationService.class);

		rl_setting_show_location.setOnClickListener(this);
		// 歸屬地顯示背景的宣告
		rl_setting_change_bg = (RelativeLayout) findViewById(R.id.rl_setting_change_bg);
		tv_setting_show_bg = (TextView) findViewById(R.id.tv_setting_show_bg);

		rl_setting_change_bg.setOnClickListener(this);
		// 歸屬地提示框的位置
		rl_setting_change_location = (RelativeLayout) findViewById(R.id.rl_setting_change_location);
		rl_setting_change_location.setOnClickListener(this);
		// 黑名單訊息的ui起始化
		tv_setting_call_firewall_status = (TextView) findViewById(R.id.tv_setting_call_firewall_status);
		cb_setting_call_firewall = (CheckBox) findViewById(R.id.cb_setting_call_firewall);
		rl_setting_call_firewall = (RelativeLayout) findViewById(R.id.rl_setting_call_firewall);
		callFirewallIntent = new Intent(this, CallFirewallService.class);

		rl_setting_call_firewall.setOnClickListener(this);
		// 程式鎖服務ui的起始化
		tv_setting_app_lock_status = (TextView) findViewById(R.id.tv_setting_applock_status);
		cb_setting_applock = (CheckBox) findViewById(R.id.cb_setting_applock);
		rl_setting_app_lock = (RelativeLayout) findViewById(R.id.rl_setting_applock);
		watchDogIntent = new Intent(this, WatchDogService1.class);

		rl_setting_app_lock.setOnClickListener(this);
	}
	/**
	 * 當界面顯示在前景時，立即設定Checkbox的狀態
	 */
	@Override
	protected void onResume() {
		if (ServiceStatusUtil.isServiceRunning(this,
				"com.guoshisp.mobilesafe.service.CallFirewallService")) {
			cb_setting_call_firewall.setChecked(true);
			tv_setting_call_firewall_status.setText("來電黑名單攔截已經開啟");
		} else {
			cb_setting_call_firewall.setChecked(false);
			tv_setting_call_firewall_status.setText("來電黑名單攔截沒有開啟");
		}
		if (ServiceStatusUtil.isServiceRunning(this,
				"com.guoshisp.mobilesafe.service.ShowCallLocationService")) {
			cb_setting_show_location.setChecked(true);
			tv_setting_show_location_status.setText("來電歸屬地顯示已經開啟");
		} else {
			cb_setting_show_location.setChecked(false);
			tv_setting_show_location_status.setText("來電歸屬地顯示沒有開啟");
		}

		if (ServiceStatusUtil.isServiceRunning(this,
				"com.guoshisp.mobilesafe.service.WatchDogService1")) {
			cb_setting_applock.setChecked(true);
			tv_setting_app_lock_status.setText("程式鎖服務已經開啟");
		} else {
			cb_setting_applock.setChecked(false);
			tv_setting_app_lock_status.setText("程式鎖服務沒有開啟");
		}
		super.onResume();
	}

	// 響應點擊事件
	@Override
	public void onClick(View v) {
		// TODO Auto-generated method stub
		switch (v.getId()) {
		case R.id.rl_setting_show_location:// 來電歸屬地是否開啟
			if (cb_setting_show_location.isChecked()) {
				tv_setting_show_location_status.setText("來電歸屬地顯示沒有開啟");
				stopService(showLocationIntent);
				cb_setting_show_location.setChecked(false);
			} else {
				tv_setting_show_location_status.setText("來電歸屬地顯示已經開啟");
				startService(showLocationIntent);
				cb_setting_show_location.setChecked(true);
			}
			break;
		case R.id.rl_setting_change_bg:// 來電歸屬地風格設定
			showChooseBgDialog();
			break;
		case R.id.rl_setting_change_location:// 開啟一個新的界面,用於實現View的拖曳
			Intent intent = new Intent(this, DragViewActivity.class);
			startActivity(intent);
			break;
		case R.id.rl_setting_call_firewall://來點黑名單攔截

			if (cb_setting_call_firewall.isChecked()) {
				tv_setting_call_firewall_status.setText("來電黑名單攔截沒有開啟");
				stopService(callFirewallIntent);
				cb_setting_call_firewall.setChecked(false);
			} else {
				tv_setting_call_firewall_status.setText("來電黑名單攔截已經開啟");
				startService(callFirewallIntent);
				cb_setting_call_firewall.setChecked(true);
			}
			break;
		case R.id.rl_setting_applock://程式鎖

			if (cb_setting_applock.isChecked()) {
				tv_setting_app_lock_status.setText("程式鎖服務沒有開啟");
				stopService(watchDogIntent);
				cb_setting_applock.setChecked(false);
			} else {
				tv_setting_app_lock_status.setText("程式鎖服務已經開啟");
				startService(watchDogIntent);
				cb_setting_applock.setChecked(true);
			}

			break;
		}
	}

	/**
	 * 變更背景彩色的交談視窗
	 */

	private void showChooseBgDialog() {
		// 取得一個交談視窗建構器
		AlertDialog.Builder builder = new Builder(this);
		// 設定交談視窗標題的圖示
		builder.setIcon(R.drawable.notification);
		// 設定交談視窗的標題
		builder.setTitle("歸屬地提示框風格");
		// 交談視窗中item的對應顯示文字
		final String[] items = { "半透明", "活力橙", "衛士藍", "蘋果綠", "金屬灰" };
		// 用於顯示交談視窗中那一個項目被勾選。預設的是第一個項目
		int which = sp.getInt("which", 0);
		// 設定單一選取項目。Item中，只能有一個處於勾選狀態
		builder.setSingleChoiceItems(items, which,
				new DialogInterface.OnClickListener() {
					// 處理Item的點擊事件
					public void onClick(DialogInterface dialog, int which) {
						// 將項目的id存入sp中
						Editor editor = sp.edit();
						editor.putInt("which", which);
						editor.commit();
						// 設定Item的文字訊息
						tv_setting_show_bg.setText(items[which]);
						// 關閉交談視窗
						dialog.dismiss();
					}
				});
		builder.setNegativeButton("取消", new DialogInterface.OnClickListener() {

			public void onClick(DialogInterface dialog, int which) {

			}
		});
		// 建立並顯示出交談視窗
		builder.create().show();
	}
}
