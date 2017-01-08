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
	 * ��A�ȲĤ@���Q�إߪ��ɭ� �I�s
	 */
	@Override
	public void onCreate() {
		super.onCreate();
		dao = new BlackNumberDao(this);
		// �n���t�Ϊ��q�ܪ��A���ܪ���ť��.
		listener = new MyPhoneListener();
		tm = (TelephonyManager) getSystemService(TELEPHONY_SERVICE);
		// �t�Ϊ��q�ܪA�� �N��ť�F �q�ܪ��A���ܤ�,
		tm.listen(listener, PhoneStateListener.LISTEN_CALL_STATE);

	}

	private class MyPhoneListener extends PhoneStateListener {
		@Override
		public void onCallStateChanged(int state, String incomingNumber) {
			switch (state) {
			case TelephonyManager.CALL_STATE_RINGING:// ����a�n���b�T.
				//starttime = System.currentTimeMillis();
				// �P�_ incomingNumber �O�_�O�¦W�渹�X
				int mode = dao.findNumberMode(incomingNumber);
				if (mode == 0 || mode == 2) {
					// �¦W�渹�X
					Log.i(TAG, "���_�q��");
					//���_�q��
					endcall(incomingNumber);
				}
				break;

			case TelephonyManager.CALL_STATE_IDLE: // ��������m���A
				/*endtime = System.currentTimeMillis();
				if(dao.find(incomingNumber)){
					break;
				}
				if(endtime - starttime<3000){
					Log.i(TAG,"���Z�q��");
					//showNotification(incomingNumber);
				}*/
				break;

			case TelephonyManager.CALL_STATE_OFFHOOK:// ������q�q�ܪ����A

				break;
			}

			super.onCallStateChanged(state, incomingNumber);
		}

	}

	/**
	 * �����q�ܪ��A����ť.
	 */
	@Override
	public void onDestroy() {
		super.onDestroy();
		tm.listen(listener, PhoneStateListener.LISTEN_NONE);
		listener = null;
		
	}

	/**
	 * ��ܥ[�J�¦W�渹�X��notification
	 * @param incomingNumber
	 *//*
	public void showNotification(String incomingNumber) {
		//1.�إߤ@��notification���޲z��
		String ns = Context.NOTIFICATION_SERVICE;
		NotificationManager mNotificationManager = (NotificationManager) getSystemService(ns);
		//2.�إߤ@��notification 
		int icon = R.drawable.notification;
		CharSequence tickerText = "�d�I��@�Ӥ@�n�T���X";
		long when = System.currentTimeMillis();

		Notification notification = new Notification(icon, tickerText, when);
		//3.�w�qnotification����ڤ��e �M�I���ƥ�
		Context context = getApplicationContext();
		CharSequence contentTitle = "�o�{�T�@�n���X";
		CharSequence contentText = "���X��:"+incomingNumber;
		notification.flags = Notification.FLAG_AUTO_CANCEL;
		
		Intent notificationIntent = new Intent(this, CallSmsSafeActivity.class);
		notificationIntent.putExtra("blacknumber", incomingNumber);
		notificationIntent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		PendingIntent contentIntent = PendingIntent.getActivity(this, 0, notificationIntent, PendingIntent.FLAG_UPDATE_CURRENT );
		notification.setLatestEventInfo(context, contentTitle, contentText, contentIntent);
		
		//4.�Q��notification��manager ��ܤ@��notification
		mNotificationManager.notify(0, notification);
		
	}*/

	/**
	 * ���_�q��
	 * �ݭn�Ш���aidl�ɮ�
	 * �[�J�v��<uses-permission android:name="android.permission.CALL_PHONE" />
	 * @param incomingNumber
	 */
	public void endcall(String incomingNumber) {
		try {
			//�ϥΤϮg���o�t�Ϊ�service��k
			Method method = Class.forName("android.os.ServiceManager")
					.getMethod("getService", String.class);
			IBinder binder = (IBinder) method.invoke(null,
					new Object[] { TELEPHONY_SERVICE });
			//�z�Laidl��{��k���I�s
			ITelephony telephony = ITelephony.Stub.asInterface(binder);
			telephony.endCall();//�Ӥ�k�O�@�Ӳ��B��k�A�L�|�s�}�Ҥ@�Ӱ�����N�I�J�����X�s�J��Ʈw��
			
			//deleteCallLog(incomingNumber);

			// �n���@�Ӥ��e�[��� �[��uri��ƪ��ܤ�      
			getContentResolver().registerContentObserver(
					CallLog.Calls.CONTENT_URI, true, new MyObserver(new Handler(), incomingNumber));

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * �w�q�ۤv�����e�[��� ,
	 * �b�غc��k�̭��ǻ� �[����X
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
		 * ��Ʈw���e�o�ͧ��ܪ��ɭԩI�s����k
		 */
		@Override
		public void onChange(boolean selfChange) {
			super.onChange(selfChange);
			//�ߧY���沾���ʧ@
			deleteCallLog(incomingNumber);
			//�����ƪ��[��
			getContentResolver().unregisterContentObserver(this);
		}
	}

	/**
	 * �����I�s�O��
	 * 
	 * @param incomingNumber
	 */
	private void deleteCallLog(String incomingNumber) {
		// �I�s�O�����e���Ѫ̹�����uri
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