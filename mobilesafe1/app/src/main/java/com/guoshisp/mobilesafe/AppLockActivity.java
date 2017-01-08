package com.guoshisp.mobilesafe;

import java.util.List;

import android.app.Activity;
import android.content.ContentValues;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;

import com.guoshisp.mobilesafe.db.dao.AppLockDao;
import com.guoshisp.mobilesafe.domain.AppInfo;
import com.guoshisp.mobilesafe.engine.AppInfoProvider;

public class AppLockActivity extends Activity {
	//展示手機中的所有套用
	private ListView lv_applock;
	//ProgressBar和TextView對應的父控制項，用於控制ProgressBar和TextView的顯示
	private LinearLayout ll_loading;
	//取得手機中已安裝的套用程式
	private AppInfoProvider provider;
	//存放目前手機上所有套用程式的訊息
	private List<AppInfo> appinfos;
	//動作存放已鎖定的套用程式的資料庫
	private AppLockDao dao;
	//存放所有已經被鎖定的套用程式的套件名稱訊息
	private List<String> lockedPacknames;
	//處理子執行緒中取得到的目前手機中所有套用程式
	private Handler handler = new Handler(){
		public void handleMessage(android.os.Message msg) {
			ll_loading.setVisibility(View.INVISIBLE);
			//為ListView調配資料
			lv_applock.setAdapter(new AppLockAdapter());
		};
	};
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		setContentView(R.layout.app_lock);
		super.onCreate(savedInstanceState);
		provider = new AppInfoProvider(this);
		lv_applock = (ListView) findViewById(R.id.lv_applock);
		ll_loading = (LinearLayout) findViewById(R.id.ll_applock_loading);
		dao =new AppLockDao(this);
		//從資料庫中取得到所有被鎖定的套用程式套件名稱
		lockedPacknames = dao.findAll();
		//正在從資料庫中取得資料時，應該顯示ProgressBar和TextView對應的“正在載入...”字樣
		ll_loading.setVisibility(View.VISIBLE);
		//開啟一個子執行緒取得手機中所有套用程式的訊息
		new Thread(){
			public void run() {
				appinfos = provider.getInstalledApps();
				//向主軸程中傳送一個空訊息，知會主軸程更新資料
				handler.sendEmptyMessage(0);
			};
		}.start();
		//為ListView中的Item設定點擊事件的監聽器
		lv_applock.setOnItemClickListener(new OnItemClickListener() {

			public void onItemClick(AdapterView<?> parent, View view,
					int position, long id) {
				//取得目前Item的物件
				AppInfo appinfo = (AppInfo) lv_applock.getItemAtPosition(position);
				//取得到目前Item物件的套件名稱訊息
				String packname = appinfo.getPackname();
				//查詢到Item對應的鎖控制項（ImageView）
				ImageView iv = (ImageView) view.findViewById(R.id.iv_applock_status);
				//設定一個左右搬移的動畫
				TranslateAnimation ta = new TranslateAnimation(Animation.RELATIVE_TO_SELF, 0, Animation.RELATIVE_TO_SELF, 0.2f, Animation.RELATIVE_TO_SELF, 0, Animation.RELATIVE_TO_SELF, 0);
				//設定動畫播放的時長（毫秒）
				ta.setDuration(200);
				//判斷目前的Item是否處於鎖定狀態，若果是，則應該解鎖，否則應該加鎖。
				if(lockedPacknames.contains(packname)){//鎖定狀態
					//dao.delete(packname);
					//采用內容提供者來觀察資料庫中的資料變化
					Uri uri = Uri.parse("content://com.guoshisp.applock/DELETE");
					getContentResolver().delete(uri, null, new String[]{packname});
					//解鎖
					iv.setImageResource(R.drawable.unlock);
					//將目前套用程式的套件名稱從集合（存放已鎖定套用程式的套件名稱）中移除，以便界面的更新
					lockedPacknames.remove(packname);
				}else{//未鎖定狀態
					//dao.add(packname);
					Uri uri = Uri.parse("content://com.guoshisp.applock/ADD");
					ContentValues values = new ContentValues();
					values.put("packname", packname);
					getContentResolver().insert(uri, values);
					iv.setImageResource(R.drawable.lock);
					lockedPacknames.add(packname);
				}
				//為目前的Item播放動畫
				view.startAnimation(ta);
			}
		});
		
	}
	//自訂介面卡物件
	private class AppLockAdapter extends BaseAdapter{

		public int getCount() {
			return appinfos.size();
		}

		public Object getItem(int position) {
			return appinfos.get(position);
		}

		public long getItemId(int position) {
			return position;
		}

		public View getView(int position, View convertView, ViewGroup parent) {
			View view;
			ViewHolder holder;
			//復用歷史快取的View物件
			if(convertView==null){
				view = View.inflate(getApplicationContext(),R.layout.app_lock_item, null);
				holder = new ViewHolder();
				holder.iv_icon = (ImageView)view.findViewById(R.id.iv_applock_icon);
				holder.iv_status = (ImageView)view.findViewById(R.id.iv_applock_status);
				holder.tv_name = (TextView)view.findViewById(R.id.tv_applock_appname);
				view.setTag(holder);
			}else{//為View做一個標示，以便復用
				view = convertView;
				holder = (ViewHolder) view.getTag();
			}
			//取得到目前套用程式物件
			AppInfo appInfo = appinfos.get(position);
			holder.iv_icon.setImageDrawable(appInfo.getAppicon());
			holder.tv_name.setText(appInfo.getAppname());
			//檢視被目前的Item是否是被綁定的套用，以此來為Item設定對應的鎖（鎖定或未鎖定）
			if(lockedPacknames.contains(appInfo.getPackname())){
				holder.iv_status.setImageResource(R.drawable.lock);
			}else{
				holder.iv_status.setImageResource(R.drawable.unlock);
			}
			return view;
		}
	}
	//View對應的View物件只會在堆記憶體中存在一份，所有的Item都公用該View
	public static class ViewHolder{
		ImageView iv_icon;
		ImageView iv_status;
		TextView tv_name;
	}
}
