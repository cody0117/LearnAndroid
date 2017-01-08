package com.guoshisp.mobilesafe.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.telephony.SmsManager;
import android.telephony.TelephonyManager;
import android.util.Log;

public class BootCompleteReceiver extends BroadcastReceiver {

	private static final String TAG = "BootCompleteReceiver";

	@Override
	public void onReceive(Context context, Intent intent) {
		Log.i(TAG,"手機重新啟動了");
		SharedPreferences sp = context.getSharedPreferences("config", Context.MODE_PRIVATE);
		//手機防盜是否開啟
		boolean protecting = sp.getBoolean("protecting", false);
		if(protecting){
			//取得安全號碼
			String safemuber = sp.getString("safemuber", "");
			//判斷 目前手機的sim卡 和我綁定的sim是否一致.
			TelephonyManager tm = (TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE);
			//取得目前sim卡的串號
			String realsim = tm.getSimSerialNumber();
			//取得之前儲存的sim卡的串號
			String savedSim = sp.getString("simserial", "");
			//判斷兩個串號是否相同
			if(!savedSim.equals(realsim)){
				//發警告簡訊
				Log.i(TAG,"傳送簡訊");
				SmsManager smsManager = SmsManager.getDefault();
				//1.接收簡訊號碼   2.發信的源位址   3.訊息內容   4.延期意圖（目前事件不會立即執行）   5.送達報告
				smsManager.sendTextMessage(safemuber, null, "sim card changed", null, null);
			
			}
		}
	}
}
