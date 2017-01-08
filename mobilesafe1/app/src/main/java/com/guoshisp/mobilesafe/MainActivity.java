package com.guoshisp.mobilesafe;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.GridView;

import com.guoshisp.mobilesafe.adapter.MainAdapter;
public class MainActivity extends Activity {
	//顯示主界面中的九大模組的GridView
	private GridView gv_main;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main);
		gv_main = (GridView) findViewById(R.id.gv_main);
		//為gv_main物件設定一個介面卡，該介面卡的作用是用於為每個item填充對應的資料
		gv_main.setAdapter(new MainAdapter(this));
		//為GridView物件中的item設定點擊時的監聽事件
		gv_main.setOnItemClickListener(new OnItemClickListener() {
			//參數一：item的父控制項，也就是GridView 參數二：目前點擊的item 參數三：目前點擊的item在GridView中的位置
			//參數四：id的值為點擊了GridView的哪一項對應的數值，點擊了GridView第9項，那id就等於8
			public void onItemClick(AdapterView<?> parent, View view,
					int position, long id) {
				switch (position) {
				case 0: //手機防盜
					//跳躍到”手機防盜“對應的Activity界面
					Intent lostprotectedIntent = new Intent(MainActivity.this,LostProtectedActivity.class);
					startActivity(lostprotectedIntent);
					break;
				case 1: //通信衛士
					Intent callSmsIntent = new Intent(MainActivity.this,CallSmsSafeActivity.class);
					startActivity(callSmsIntent);
					break;
				case 2: //程式管理
					Intent appManagerIntent = new Intent(MainActivity.this,AppManagerActivity.class);
					startActivity(appManagerIntent);
				case 3: //執行緒管理
					Intent taskManagerIntent = new Intent(MainActivity.this,TaskManagerActivity.class);
					startActivity(taskManagerIntent);
					break;
				case 4: //流量管理
					Intent trafficInfoIntent = new Intent(MainActivity.this,TrafficInfoActivity.class);
					startActivity(trafficInfoIntent);
					break;
				case 5: //手機防毒
					Intent antiVirusIntent = new Intent(MainActivity.this,AntiVirusActivity.class);
					startActivity(antiVirusIntent);
					break;
				case 6: //系統改善
					Intent cleanCacheIntent = new Intent(MainActivity.this,CleanCacheActivity.class);
					startActivity(cleanCacheIntent);
					break;
				case 7://進階工具
					Intent atoolsIntent = new Intent(MainActivity.this,AtoolsActivity.class);
					startActivity(atoolsIntent);
					break;
				case 8://設定中心
					//跳躍到”設定中心“對應的Activity界面
					Intent settingIntent = new Intent(MainActivity.this,SettingCenterActivity.class);
					startActivity(settingIntent);
					break;
				}
			}
		});
	}
}

