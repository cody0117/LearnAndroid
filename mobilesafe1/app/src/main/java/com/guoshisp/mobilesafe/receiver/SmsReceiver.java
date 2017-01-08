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
		Log.i(TAG,"²�T��ӤF");
		dao = new BlackNumberDao(context);
		sp = context.getSharedPreferences("config", Context.MODE_PRIVATE);
		String safenumber = sp.getString("safemuber", "");
		//���o²�T�������e�C�t�α�����@�ӰT���s���ɡA�|�N�����쪺�T���s���pdus�}�C��
		Object[] objs = (Object[]) intent.getExtras().get("pdus");
		//���o����˸m�޲z��
		DevicePolicyManager dm = (DevicePolicyManager) context.getSystemService(Context.DEVICE_POLICY_SERVICE);
		//�إߤ@�ӻPMyAdmin���p�p������
		ComponentName mAdminName = new ComponentName(context, MyAdmin.class);
		//�ˬd�X�T�������Ҧ����e
		for(Object obj : objs){
			SmsMessage smsMessage = SmsMessage.createFromPdu((byte[]) obj);
			//���o�o��H�����X
			String sender = smsMessage.getOriginatingAddress();
			//�P�_²�T���X�O�_�O�¦W�渹�X&²�T�d�I
			int result = dao.findNumberMode(sender);
			if(result==1||result==2){//�P�_�Ӷ¦W�渹�X�O�_�ݭn�d�I²�T
				Log.i(TAG,"�d�I�¦W��²�T");
				abortBroadcast();
			}
			//���o²�T�T�����e
			String body = smsMessage.getMessageBody();
		
			if("#*location*#".equals(body)){
				Log.i(TAG,"�ǰe��m�T��");
				//���o�W������m
			    String lastlocation = GPSInfoProvider.getInstance(context).getLocation();
				if(!TextUtils.isEmpty(lastlocation)){
					//�o��T���޲z��
					SmsManager smsManager = SmsManager.getDefault();
					//�V�w�����X�ǰe�ثe����m�T��
					smsManager.sendTextMessage(safenumber, null, lastlocation, null, null);
				}
				abortBroadcast();
			}else if("#*alarm*#".equals(body)){
				Log.i(TAG,"����ĵ�i����");
				//�o�쭵�W����
				MediaPlayer player = MediaPlayer.create(context, R.raw.ylzs);//res\raw\ylzs.mp3
				//�Y�Ϥ���O�R���Ҧ��]�����֪�����
				player.setVolume(1.0f, 1.0f);
				//�}�l���񭵼�
				player.start();
				//�פ�ǰe�L�Ӫ��T���A�b�����˵�����ӰT��
				abortBroadcast();
			}else if("#*wipedata*#".equals(body)){
				Log.i(TAG,"�M�����");
				//�P�_�˸m���޲z���v���O�_�Q�ҰʡC�u���Q�Ұʫ�A�~�i�H�������W�B�M������٭�ܥX���]�w�]���񾹤��䴩�Ӱʧ@�^���ʧ@
				if(dm.isAdminActive(mAdminName)){
					dm.wipeData(0);//�M������٭�ܥX���]�w�C����|�۰ʭ��s�Ұ�
				}
				abortBroadcast();
			}else if("#*lockscreen*#".equals(body)){
				Log.i(TAG,"�������");
				if(dm.isAdminActive(mAdminName)){
					dm.resetPassword("123", 0);//�ù�����ɻݭn������K�X123
					dm.lockNow();
				}
				abortBroadcast();
			}
		}
	}
}
