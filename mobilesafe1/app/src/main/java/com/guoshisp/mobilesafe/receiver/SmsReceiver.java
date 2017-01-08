package com.guoshisp.mobilesafe.receiver;

import android.app.admin.DevicePolicyManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.media.MediaPlayer;
import android.telephony.SmsManager;
import android.telephony.SmsMessage;
import android.text.TextUtils;
import android.util.Log;

import com.guoshisp.mobilesafe.R;
import com.guoshisp.mobilesafe.db.dao.BlackNumberDao;
import com.guoshisp.mobilesafe.engine.GPSInfoProvider;

public class SmsReceiver extends BroadcastReceiver {
	private static final String TAG = "SmsReceiver";
	private SharedPreferences sp;
	private BlackNumberDao dao;
	@Override
	public void onReceive(Context context, Intent intent) {
		Log.i(TAG,"簡訊到來了");
		dao = new BlackNumberDao(context);
		sp = context.getSharedPreferences("config", Context.MODE_PRIVATE);
		String safenumber = sp.getString("safemuber", "");
		//取得簡訊中的內容。系統接收到一個訊息廣播時，會將接收到的訊息存放到pdus陣列中
		Object[] objs = (Object[]) intent.getExtras().get("pdus");
		//取得手機裝置管理器
		DevicePolicyManager dm = (DevicePolicyManager) context.getSystemService(Context.DEVICE_POLICY_SERVICE);
		//建立一個與MyAdmin關聯聯的元件
		ComponentName mAdminName = new ComponentName(context, MyAdmin.class);
		//檢查出訊息中的所有內容
		for(Object obj : objs){
			SmsMessage smsMessage = SmsMessage.createFromPdu((byte[]) obj);
			//取得發件人的號碼
			String sender = smsMessage.getOriginatingAddress();
			//判斷簡訊號碼是否是黑名單號碼&簡訊攔截
			int result = dao.findNumberMode(sender);
			if(result==1||result==2){//判斷該黑名單號碼是否需要攔截簡訊
				Log.i(TAG,"攔截黑名單簡訊");
				abortBroadcast();
			}
			//取得簡訊訊息內容
			String body = smsMessage.getMessageBody();
		
			if("#*location*#".equals(body)){
				Log.i(TAG,"傳送位置訊息");
				//取得上次的位置
			    String lastlocation = GPSInfoProvider.getInstance(context).getLocation();
				if(!TextUtils.isEmpty(lastlocation)){
					//得到訊息管理器
					SmsManager smsManager = SmsManager.getDefault();
					//向安全號碼傳送目前的位置訊息
					smsManager.sendTextMessage(safenumber, null, lastlocation, null, null);
				}
				abortBroadcast();
			}else if("#*alarm*#".equals(body)){
				Log.i(TAG,"播放警告音樂");
				//得到音頻播放器
				MediaPlayer player = MediaPlayer.create(context, R.raw.ylzs);//res\raw\ylzs.mp3
				//即使手機是靜音模式也有音樂的音效
				player.setVolume(1.0f, 1.0f);
				//開始播放音樂
				player.start();
				//終止掉傳送過來的訊息，在本機檢視不到該訊息
				abortBroadcast();
			}else if("#*wipedata*#".equals(body)){
				Log.i(TAG,"清除資料");
				//判斷裝置的管理員權限是否被啟動。只有被啟動後，才可以執行鎖頻、清除資料還原至出場設定（類比器不支援該動作）等動作
				if(dm.isAdminActive(mAdminName)){
					dm.wipeData(0);//清除資料還原至出場設定。手機會自動重新啟動
				}
				abortBroadcast();
			}else if("#*lockscreen*#".equals(body)){
				Log.i(TAG,"遠端鎖屏");
				if(dm.isAdminActive(mAdminName)){
					dm.resetPassword("123", 0);//螢幕解鎖時需要的解鎖密碼123
					dm.lockNow();
				}
				abortBroadcast();
			}
		}
	}
}
