package com.guoshisp.mobilesafe.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

import com.guoshisp.mobilesafe.LostProtectedActivity;

public class OutCallReceiver extends BroadcastReceiver {

	@Override
	public void onReceive(Context context, Intent intent) {
		//���o��s���ǰe�Ӫ����G���
		String outnumber = getResultData();
		//�]�w�ڭ̼����i�J������s�����X
		String enterPhoneBakNumber = "110";
		//�P�_�]�w�����X�O�_�P�s���L�Ӫ���ƬۦP
		if (enterPhoneBakNumber.equals(outnumber)) {
			//�i�J������s�ɭ�
			Intent lostIntent = new Intent(context, LostProtectedActivity.class);
			//��������s������Activity�]�w�@�ӷs���u�@���|
			lostIntent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
			context.startActivity(lostIntent);
			// �d�I���~�����q�ܸ��X�A�b�����O�������|��ܸӸ��X
			setResultData(null);
		}
	}
}
