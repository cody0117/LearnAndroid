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
	//�O�_�n����ݪ����A�ȡCtrue����~�����Afalse��ܰ������C
	boolean flag;
	//�n�i�J�@�Ӥw�Q��w���M�ε{���e�A�ݭn��J���T���K�X��~�i�H�i�J�C�o�O�@�ӥΩ�Ұʿ�J�K�X���ɭ��C
	private Intent pwdintent;
	//�N�Ҧ��w�Q��w���M�ε{�����M��W�٦s��b�Ӷ��X�֨���
	private List<String> lockPacknames;
	//�ʧ@��Ʈw������
	private AppLockDao dao;
	//�s���{�ɻݭn�Q�O�@���M�ε{���M��W��
	private List<String> tempStopProtectPacknames;
	//�Ǧ^��EnterPwdActivity����ServiceConnection����onServiceConnected(ComponentName name, IBinder service)��k���ĤG�ӰѼ�
	private MyBinder binder;
	//���e�[���
	private MyObserver observer;
	//��̪��s��������
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
	//�{�ɰ���O�@�@�ӳQ��w���M�ε{������k
	public void tempStopProtect(String packname){
		//�N�ݭn�{�ɰ���O�@���{�����M��W�ٷs�W����������X��
		tempStopProtectPacknames.add(packname);
	}
	@Override
	public void onCreate() {
		//�]�w�n��諸Uri���|
		Uri uri = Uri.parse("content://com.guoshisp.applock/");
		observer = new MyObserver(new Handler());
		//�ĤG�ӰѼƭY�G��true�AUri����content://com.guoshisp.applock/��勵�T�Y�i�P����A�᭱���]ADD��DELETE�^�����~��b���U�h
		getContentResolver().registerContentObserver(uri, true, observer);
		//�H�{���X�ʺA�n���@�Ӽs��������
		IntentFilter filter = new IntentFilter();
		filter.setPriority(1000);
		filter.addAction(Intent.ACTION_SCREEN_OFF);
		receiver = new LockScreenReceiver();
		// ���ε{���X�ʺA���n���s��������.
		registerReceiver(receiver, filter);
		
		super.onCreate();
		dao = new AppLockDao(this);
		//�N�ݪ����A�Ȫ��Хܳ]�w��true�A����@���b�I������C
		flag = true;
		tempStopProtectPacknames = new ArrayList<String>();
		//�q�{�����������Ʈw�����X�Ҧ��M�ε{�����M��W�١C
		lockPacknames = dao.findAll();
		pwdintent = new Intent(this,EnterPwdActivity.class);
		//�]���A�ȥ����S���u�@���|�A�Y�G�n�}�Ҥ@�ӻݭn�b�u�@���|�����檺Activity���ܡA�ݭn����Activity�إߤ@�Ӥu�@���|�C
		pwdintent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		//�}�Ҥ@�Ӱ�������_������ݪ����A�ȡC
		new Thread() {
			public void run() {
				//�]�w�@�ӵL�a�j��A�Y�G��true�A�h�@������C
				while (flag){
					//���o�@��Activity���޲z���AActivityManager�i�H�ʺA���[���ثe�s�b���ǰ�����C
					ActivityManager am = (ActivityManager) getSystemService(ACTIVITY_SERVICE);
					//���o��ثe���b���|�����檺Activity�C
					RunningTaskInfo taskinfo = am.getRunningTasks(1).get(0);
					//���o��ثe�u�@���|���{���ҹ������M��W�١C
					String packname = taskinfo.topActivity.getPackageName();
					Log.i(TAG,packname);
					//�P�_�ثe���|���M�ε{���������M��W�٬O�_�O�{�ɳQ�O�@���{��
					if(tempStopProtectPacknames.contains(packname)){
						try {
							//�ݪ����A�ȫD�`�ӹq�A�o�̥Ω����ӪA�ȼȰ�200�@��
							Thread.sleep(200);
						} catch (InterruptedException e) {
							e.printStackTrace();
						}
						//�ثe���|���M�ε{���������M��W�٬O�{�ɳQ�O�@���{���A�h���X�ثe��if�ԭz�A�~�����while�`��
						continue;
					}
					//�N�u�@���|�����{�����M��W�ٰT���s�J�N�Ϥ��]�H��ȹ諸�Φ��s�J�A�i�H�b�Q�Ұʪ�Activity���z�LgetIntent()�Ө��o�ӷN�ϡA�M��A���o�N�Ϫ��󤤪���ơ^�C
					pwdintent.putExtra("packname", packname);
					//�P�_����b���|�����{���ҹ������M��W�٬O�_�O�w��w���M�ε{���C
					if(lockPacknames.contains(packname)){
						//�o�{�ثe�M�ε{�����w��w���M�ε{���A�ݭn�i�J��J�K�X���ɭ��C
						startActivity(pwdintent);
					}
					try {
						//�ݪ����A�ȫD�`�ӹq�A�o�̥Ω����ӪA�ȼȰ�200�@��
						Thread.sleep(200);
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
				}
			};
		}.start();
	}
	//��A�ȳQ����ɡA�ڭ�������ݪ����~�����A�P�ɱN���e�[��̵��ϵn�����A�ϵn�����s��������
	@Override
	public void onDestroy() {
		flag = false;
		//�N���e�[��̤ϵn����
		getContentResolver().unregisterContentObserver(observer);
		observer = null;
		//�ϵn�����s��������
		unregisterReceiver(receiver);
		super.onDestroy();
	}
	private class MyObserver extends ContentObserver{
		public MyObserver(Handler handler) {
			super(handler);
		}
		//�������Uri������Ƶo�ͧ��ܮɩI�s�Ӥ�k
		@Override
		public void onChange(boolean selfChange) {
			//���s�q��Ʈw�����o���
			lockPacknames = dao.findAll();
			super.onChange(selfChange);
		}
	}
	private class LockScreenReceiver extends BroadcastReceiver{

		@Override
		public void onReceive(Context context, Intent intent) {
			Log.i(TAG,"��̤F");
			//�M�z���X�A�~��O�@�C
			tempStopProtectPacknames.clear();
		}
		
	}
}
