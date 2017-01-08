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

public class WatchDogService1 extends Service {
	protected static final String TAG = "WatchDogService";
	//是否要停止掉看門狗服務。true表示繼續執行，false表示停止執行。
	boolean flag;
	//要進入一個已被鎖定的套用程式前，需要輸入正確的密碼後才可以進入。這是一個用於啟動輸入密碼的界面。
	private Intent pwdintent;
	//將所有已被鎖定的套用程式的套件名稱存放在該集合快取中
	private List<String> lockPacknames;
	//動作資料庫的物件
	private AppLockDao dao;
	//存放臨時需要被保護的套用程式套件名稱
	private List<String> tempStopProtectPacknames;
	//傳回到EnterPwdActivity中的ServiceConnection物件中onServiceConnected(ComponentName name, IBinder service)方法的第二個參數
	private MyBinder binder;
	//內容觀察者
	private MyObserver observer;
	//鎖屏的廣播接收者
	private LockScreenReceiver receiver;
	@Override
	public IBinder onBind(Intent intent) {
		binder = new MyBinder();
		return binder;
	}
	private class MyBinder extends Binder implements IService{
		public void callTempStopProtect(String packname) {
			tempStopProtect(packname);
		}
	}
	//臨時停止保護一個被鎖定的套用程式的方法
	public void tempStopProtect(String packname){
		//將需要臨時停止保護的程式的套件名稱新增到對應的集合中
		tempStopProtectPacknames.add(packname);
	}
	@Override
	public void onCreate() {
		//設定要比對的Uri路徑
		Uri uri = Uri.parse("content://com.guoshisp.applock/");
		observer = new MyObserver(new Handler());
		//第二個參數若果為true，Uri中的content://com.guoshisp.applock/比對正確即可感應到，後面的（ADD或DELETE）不用繼續在比對下去
		getContentResolver().registerContentObserver(uri, true, observer);
		//以程式碼動態登錄一個廣播接收者
		IntentFilter filter = new IntentFilter();
		filter.setPriority(1000);
		filter.addAction(Intent.ACTION_SCREEN_OFF);
		receiver = new LockScreenReceiver();
		// 采用程式碼動態的登錄廣播接受者.
		registerReceiver(receiver, filter);
		
		super.onCreate();
		dao = new AppLockDao(this);
		//將看門狗服務的標示設定為true，讓其一直在背景執行。
		flag = true;
		tempStopProtectPacknames = new ArrayList<String>();
		//從程式鎖對應的資料庫中取出所有套用程式的套件名稱。
		lockPacknames = dao.findAll();
		pwdintent = new Intent(this,EnterPwdActivity.class);
		//因為服務本身沒有工作堆疊，若果要開啟一個需要在工作堆疊中執行的Activity的話，需要為該Activity建立一個工作堆疊。
		pwdintent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		//開啟一個執行緒不斷的執行看門狗服務。
		new Thread() {
			public void run() {
				//設定一個無窮迴圈，若果為true，則一直執行。
				while (flag){
					//取得一個Activity的管理器，ActivityManager可以動態的觀察到目前存在哪些執行緒。
					ActivityManager am = (ActivityManager) getSystemService(ACTIVITY_SERVICE);
					//取得到目前正在堆疊頂執行的Activity。
					RunningTaskInfo taskinfo = am.getRunningTasks(1).get(0);
					//取得到目前工作堆疊頂程式所對應的套件名稱。
					String packname = taskinfo.topActivity.getPackageName();
					Log.i(TAG,packname);
					//判斷目前堆疊頂套用程式對應的套件名稱是否是臨時被保護的程式
					if(tempStopProtectPacknames.contains(packname)){
						try {
							//看門狗服務非常耗電，這裡用於讓該服務暫停200毫秒
							Thread.sleep(200);
						} catch (InterruptedException e) {
							e.printStackTrace();
						}
						//目前堆疊頂套用程式對應的套件名稱是臨時被保護的程式，則跳出目前的if敘述，繼續執行while循環
						continue;
					}
					//將工作堆疊頂的程式的套件名稱訊息存入意圖中（以鍵值對的形式存入，可以在被啟動的Activity中透過getIntent()來取得該意圖，然後再取得意圖物件中的資料）。
					pwdintent.putExtra("packname", packname);
					//判斷執行在堆疊頂的程式所對應的套件名稱是否是已鎖定的套用程式。
					if(lockPacknames.contains(packname)){
						//發現目前套用程式為已鎖定的套用程式，需要進入輸入密碼的界面。
						startActivity(pwdintent);
					}
					try {
						//看門狗服務非常耗電，這裡用於讓該服務暫停200毫秒
						Thread.sleep(200);
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
				}
			};
		}.start();
	}
	//當服務被停止時，我們應停止看門狗繼續執行，同時將內容觀察者給反登錄掉，反登錄掉廣播接收者
	@Override
	public void onDestroy() {
		flag = false;
		//將內容觀察者反登錄掉
		getContentResolver().unregisterContentObserver(observer);
		observer = null;
		//反登錄掉廣播接收者
		unregisterReceiver(receiver);
		super.onDestroy();
	}
	private class MyObserver extends ContentObserver{
		public MyObserver(Handler handler) {
			super(handler);
		}
		//當對應的Uri中的資料發生改變時呼叫該方法
		@Override
		public void onChange(boolean selfChange) {
			//重新從資料庫中取得資料
			lockPacknames = dao.findAll();
			super.onChange(selfChange);
		}
	}
	private class LockScreenReceiver extends BroadcastReceiver{

		@Override
		public void onReceive(Context context, Intent intent) {
			Log.i(TAG,"鎖屏了");
			//清理集合，繼續保護。
			tempStopProtectPacknames.clear();
		}
		
	}
}
