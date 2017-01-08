package com.guoshisp.mobilesafe.service;

import java.lang.reflect.Method;

import android.app.Service;
import android.content.Intent;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.IBinder;
import android.provider.CallLog;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.util.Log;

import com.android.internal.telephony.ITelephony;
import com.guoshisp.mobilesafe.db.dao.BlackNumberDao;

public class CallFirewallService extends Service {
	public static final String TAG = "CallFirewallService";
	private TelephonyManager tm;
	private MyPhoneListener listener;
	private BlackNumberDao dao;
//	private long  starttime;
//	private long endtime;
	@Override
	public IBinder onBind(Intent intent) {
		return null;
	}

	/**
	 * 當服務第一次被建立的時候 呼叫
	 */
	@Override
	public void onCreate() {
		super.onCreate();
		dao = new BlackNumberDao(this);
		// 登錄系統的電話狀態改變的監聽器.
		listener = new MyPhoneListener();
		tm = (TelephonyManager) getSystemService(TELEPHONY_SERVICE);
		// 系統的電話服務 就監聽了 電話狀態的變化,
		tm.listen(listener, PhoneStateListener.LISTEN_CALL_STATE);

	}

	private class MyPhoneListener extends PhoneStateListener {
		@Override
		public void onCallStateChanged(int state, String incomingNumber) {
			switch (state) {
			case TelephonyManager.CALL_STATE_RINGING:// 手機鈴聲正在響.
				//starttime = System.currentTimeMillis();
				// 判斷 incomingNumber 是否是黑名單號碼
				int mode = dao.findNumberMode(incomingNumber);
				if (mode == 0 || mode == 2) {
					// 黑名單號碼
					Log.i(TAG, "掛斷電話");
					//掛斷電話
					endcall(incomingNumber);
				}
				break;

			case TelephonyManager.CALL_STATE_IDLE: // 手機的閒置狀態
				/*endtime = System.currentTimeMillis();
				if(dao.find(incomingNumber)){
					break;
				}
				if(endtime - starttime<3000){
					Log.i(TAG,"騷擾電話");
					//showNotification(incomingNumber);
				}*/
				break;

			case TelephonyManager.CALL_STATE_OFFHOOK:// 手機接通通話的狀態

				break;
			}

			super.onCallStateChanged(state, incomingNumber);
		}

	}

	/**
	 * 取消電話狀態的監聽.
	 */
	@Override
	public void onDestroy() {
		super.onDestroy();
		tm.listen(listener, PhoneStateListener.LISTEN_NONE);
		listener = null;
		
	}

	/**
	 * 顯示加入黑名單號碼的notification
	 * @param incomingNumber
	 *//*
	public void showNotification(String incomingNumber) {
		//1.建立一個notification的管理者
		String ns = Context.NOTIFICATION_SERVICE;
		NotificationManager mNotificationManager = (NotificationManager) getSystemService(ns);
		//2.建立一個notification 
		int icon = R.drawable.notification;
		CharSequence tickerText = "攔截到一個一聲響號碼";
		long when = System.currentTimeMillis();

		Notification notification = new Notification(icon, tickerText, when);
		//3.定義notification的實際內容 和點擊事件
		Context context = getApplicationContext();
		CharSequence contentTitle = "發現響一聲號碼";
		CharSequence contentText = "號碼為:"+incomingNumber;
		notification.flags = Notification.FLAG_AUTO_CANCEL;
		
		Intent notificationIntent = new Intent(this, CallSmsSafeActivity.class);
		notificationIntent.putExtra("blacknumber", incomingNumber);
		notificationIntent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		PendingIntent contentIntent = PendingIntent.getActivity(this, 0, notificationIntent, PendingIntent.FLAG_UPDATE_CURRENT );
		notification.setLatestEventInfo(context, contentTitle, contentText, contentIntent);
		
		//4.利用notification的manager 顯示一個notification
		mNotificationManager.notify(0, notification);
		
	}*/

	/**
	 * 掛斷電話
	 * 需要覆制兩個aidl檔案
	 * 加入權限<uses-permission android:name="android.permission.CALL_PHONE" />
	 * @param incomingNumber
	 */
	public void endcall(String incomingNumber) {
		try {
			//使用反射取得系統的service方法
			Method method = Class.forName("android.os.ServiceManager")
					.getMethod("getService", String.class);
			IBinder binder = (IBinder) method.invoke(null,
					new Object[] { TELEPHONY_SERVICE });
			//透過aidl實現方法的呼叫
			ITelephony telephony = ITelephony.Stub.asInterface(binder);
			telephony.endCall();//該方法是一個異步方法，他會新開啟一個執行緒將呼入的號碼存入資料庫中
			
			//deleteCallLog(incomingNumber);

			// 登錄一個內容觀察者 觀察uri資料的變化      
			getContentResolver().registerContentObserver(
					CallLog.Calls.CONTENT_URI, true, new MyObserver(new Handler(), incomingNumber));

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 定義自己的內容觀察者 ,
	 * 在建構方法裡面傳遞 觀察的號碼
	 * @author 
	 *
	 */
	
	private class MyObserver extends ContentObserver {
		private String incomingNumber;
		public MyObserver(Handler handler, String incomingNumber) {
			super(handler);
			this.incomingNumber = incomingNumber;
		}
		/**
		 * 資料庫內容發生改變的時候呼叫的方法
		 */
		@Override
		public void onChange(boolean selfChange) {
			super.onChange(selfChange);
			//立即執行移除動作
			deleteCallLog(incomingNumber);
			//停止資料的觀察
			getContentResolver().unregisterContentObserver(this);
		}
	}

	/**
	 * 移除呼叫記錄
	 * 
	 * @param incomingNumber
	 */
	private void deleteCallLog(String incomingNumber) {
		// 呼叫記錄內容提供者對應的uri
		Uri uri = Uri.parse("content://call_log/calls");
		// CallLog.Calls.CONTENT_URI;
		Cursor cursor = getContentResolver().query(uri, new String[] { "_id" },
				"number=?", new String[] { incomingNumber }, null);
		while (cursor.moveToNext()) {
			String id = cursor.getString(0);
			getContentResolver().delete(uri, "_id=?", new String[] { id });
		}
		cursor.close();
	}
}
