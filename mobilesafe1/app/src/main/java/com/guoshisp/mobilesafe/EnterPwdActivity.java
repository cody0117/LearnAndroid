package com.guoshisp.mobilesafe;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.IBinder;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.guoshisp.mobilesafe.service.WatchDogService1;

public class EnterPwdActivity extends Activity {
	//�K�X��J��
	private EditText et_password;
	//�M�ΦW��
	private TextView tv_name;
	//�M�ιϥ�
	private ImageView iv_icon;
	//�Ω�Ұʬݪ����A�Ȫ��N�Ϫ���
	private Intent serviceIntent;
	//����O�@�@�ӮM�ε{���]���f�^
	private IService iService;
	//�s�u�A�Ȯɪ��@�Ӫ���]�b�j�w�A�Ȯɻݭn�ǤJ�^
	private MyConn conn;
	//�M�ήM��W��
	private String packname;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.enter_pwd);
		et_password = (EditText) findViewById(R.id.et_password);
		//���o��ҰʥثeActivity���N�ϡ]WatchDogService1����pwdintent�^
		Intent intent = getIntent();
		//���o��N�Ϥ��s�J����ơ]�n�i�J�Q��w���M�Ϊ��M��W�١^
		packname = intent.getStringExtra("packname");
		tv_name = (TextView) findViewById(R.id.tv_enterpwd_name);
		iv_icon = (ImageView) findViewById(R.id.iv_enterpwd_icon);
		serviceIntent = new Intent(this,WatchDogService1.class);
		conn = new MyConn();
		//�j�w�A�ȡ]�DstartService()�^�C����A�Ȥ���onCreate-->onBind��k�]�Ӥ�k���Ǧ^�Ȥ��ରnull�^�C
		bindService(serviceIntent, conn, BIND_AUTO_CREATE);
		
		try {
			//�ھڮM��W�٨��o��]�T������
			PackageInfo info = getPackageManager().getPackageInfo(packname, 0);
			//info.applicationInfo.loadLabel(getPackageManager())���o��ӮM��W�٪��M�ε{���ҹ������M�ΦW��
			tv_name.setText(info.applicationInfo.loadLabel(getPackageManager()));
			//info.applicationInfo.loadIcon(getPackageManager())���o��ӮM��W�٪��M�ε{���ҹ������M�ιϥ�
			iv_icon.setImageDrawable(info.applicationInfo.loadIcon(getPackageManager()));
			
		} catch (NameNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	private class MyConn implements ServiceConnection{
		//�b�ʧ@�̦b�s�u�@�ӪA�Ȧ��\�ɳQ�I�s�CIBinder����N�OonBind(Intent intent)�Ǧ^��IBinder����C
		public void onServiceConnected(ComponentName name, IBinder service) {
			//�]���Ǧ^��IBinder��{�FiService���f�]�V�W�૬�^
			iService = (IService) service;
		}
		//�b�A�ȱY��γQ�����ɭP���s�u���_�ɳQ�I�s�A�ӭY�G�ڭ̦ۤv�Ѱ��j�w�ɫh���|�Q�I�s
		public void onServiceDisconnected(ComponentName name) {
			
		}
	}
	
	@Override
	protected void onDestroy() {
		super.onDestroy();
		//�Ѱ��j�w
		unbindService(conn);
	}
	/**
	 * �I�����T�w�����s�O���檺��k
	 */
	public void enterPassword(View view){
		//���o���J�ؤ����K�X�A�ñN�K�X�e�᪺�Ů�M�����C
		String pwd = et_password.getText().toString().trim();
		//�P�_��J���K�X�O�_����
		if(TextUtils.isEmpty(pwd)){
			Toast.makeText(this, "�K�X���ର��", 0).show();
			return ;
		}
		//�P�_�K�X�O�_��123�]���T�K�X�A�S�����ѳ]�w�K�X���ɭ��A�o��²�檺�B�z�@�U�^�C
		if("123".equals(pwd)){
			//���|�ݪ��� �{�ɪ������ packname���O�@
			iService.callTempStopProtect(packname);
			/*Intent intent = new Intent();
			intent.setAction("cn.itcast.mobilesafe.stopprotect");
			intent.putExtra("packname", packname);
			sendBroadcast(intent);*/
			finish();
			
		}else{
			Toast.makeText(this, "�K�X�����T", 0).show();
			return ;
		}
	}
	
	/**
	 * ��i�J�ثe���ɭ���A�̽���Back��
	 */
	@Override
	public boolean onKeyDown(int keyCode, KeyEvent event) {
		if(event.getAction()==KeyEvent.ACTION_DOWN&&event.getKeyCode()==KeyEvent.KEYCODE_BACK){
			return true;//���O���ثe��Back��
		}
		return super.onKeyDown(keyCode, event);
	}
}
