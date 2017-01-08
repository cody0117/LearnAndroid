package com.guoshisp.mobilesafe.service;

import java.util.ArrayList;
import java.util.List;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.util.Log;

import com.guoshisp.mobilesafe.EnterPwdActivity;
import com.guoshisp.mobilesafe.IService;
import com.guoshisp.mobilesafe.db.dao.AppLockDao;

public class WatchDogService extends Service {

	protected static final String TAG = "WatchDogService";
	boolean flag;
	private AppLockDao dao;
	private Intent pwdintent;
	private List<String> tempStopProtectPacknames;
	private List<String> lockPacknames;
	private MyObserver observer;
	private LockScreenReceiver receiver;
	private MyBinder binder;

	@Override
	public IBinder onBind(Intent intent) {
		binder = new MyBinder();
		return binder;
	}

	private class MyBinder extends Binder implements IService {

		public void callTempStopProtect(String packname) {

			tempStopProtect(packname);
		}
	}

	public void tempStopProtect(String packname) {
		tempStopProtectPacknames.add(packname);
	}

	@Override
	public void onCreate() {
		Uri uri = Uri.parse("content://cn.itcast.applock/");
		observer = new MyObserver(new Handler());
		getContentResolver().registerContentObserver(uri, true, observer);
		IntentFilter filter = new IntentFilter();
		filter.setPriority(1000);
		filter.addAction(Intent.ACTION_SCREEN_OFF);
		receiver = new LockScreenReceiver();
		// 采用程式碼動態的登錄廣播接受者.
		registerReceiver(receiver, filter);

		super.onCreate();
		dao = new AppLockDao(this);
		lockPacknames = dao.findAll();
		flag = true;
		tempStopProtectPacknames = new ArrayList<String>();
		pwdintent = new Intent(this, EnterPwdActivity.class);
		//服務沒有工作堆疊，開啟Activity需要設定一個新的工作堆疊
		pwdintent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		new Thread() {
			public void run() {
				while (flag)// 看門狗
				{// 開啟看門狗 監視目前系統正在執行的程式訊息
					ActivityManager am = (ActivityManager) getSystemService(ACTIVITY_SERVICE);
					//加入權限<uses-permission android:name="android.permission.GET_TASKS"/>
					RunningTaskInfo taskinfo = am.getRunningTasks(1).get(0);
					String packname = taskinfo.topActivity.getPackageName();
					Log.i(TAG, packname);

					if (tempStopProtectPacknames.contains(packname)) {
						try {
							Thread.sleep(200);
						} catch (InterruptedException e) {
							e.printStackTrace();
						}
						continue;
					}
					pwdintent.putExtra("packname", packname);
					if (lockPacknames.contains(packname)) {
						// 發現目前套用程式為要鎖定的套用程式
						// 啟動輸入密碼的界面
						startActivity(pwdintent);
					}
					try {
						Thread.sleep(200);
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
				}
			};
		}.start();
	}

	@Override
	public void onDestroy() {
		flag = false;
		super.onDestroy();
		getContentResolver().unregisterContentObserver(observer);
		observer = null;
		// 服務停止的時候 需要把廣播接受者給反登錄掉.
		unregisterReceiver(receiver);
		binder = null;
	}

	private class MyObserver extends ContentObserver {
		public MyObserver(Handler handler) {
			super(handler);
		}

		@Override
		public void onChange(boolean selfChange) {
			lockPacknames = dao.findAll();
			super.onChange(selfChange);
		}
	}

	private class LockScreenReceiver extends BroadcastReceiver {

		@Override
		public void onReceive(Context context, Intent intent) {
			Log.i(TAG, "鎖屏了");
			tempStopProtectPacknames.clear();
		}
	}
}
