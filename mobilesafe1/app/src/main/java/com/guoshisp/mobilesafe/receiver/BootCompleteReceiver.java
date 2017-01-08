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
		Log.i(TAG,"������s�ҰʤF");
		SharedPreferences sp = context.getSharedPreferences("config", Context.MODE_PRIVATE);
		//������s�O�_�}��
		boolean protecting = sp.getBoolean("protecting", false);
		if(protecting){
			//���o�w�����X
			String safemuber = sp.getString("safemuber", "");
			//�P�_ �ثe�����sim�d �M�ڸj�w��sim�O�_�@�P.
			TelephonyManager tm = (TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE);
			//���o�ثesim�d���긹
			String realsim = tm.getSimSerialNumber();
			//���o���e�x�s��sim�d���긹
			String savedSim = sp.getString("simserial", "");
			//�P�_��Ӧ긹�O�_�ۦP
			if(!savedSim.equals(realsim)){
				//�oĵ�i²�T
				Log.i(TAG,"�ǰe²�T");
				SmsManager smsManager = SmsManager.getDefault();
				//1.����²�T���X   2.�o�H������}   3.�T�����e   4.�����N�ϡ]�ثe�ƥ󤣷|�ߧY����^   5.�e�F���i
				smsManager.sendTextMessage(safemuber, null, "sim card changed", null, null);
			
			}
		}
	}
}
