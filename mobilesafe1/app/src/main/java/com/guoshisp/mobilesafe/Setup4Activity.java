package com.guoshisp.mobilesafe;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.admin.DevicePolicyManager;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

import com.guoshisp.mobilesafe.receiver.MyAdmin;
public class Setup4Activity extends Activity {
	private CheckBox cb_setup4_protect;
	private SharedPreferences sp;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.setup4);
		sp = getSharedPreferences("config", MODE_PRIVATE);
		cb_setup4_protect = (CheckBox)findViewById(R.id.cb_setup4_protect);
		//�Ω��ƪ��^���C�P�_������s�O�_�}�ҡA�w�]���p�U�S���}��
		boolean protecting = sp.getBoolean("protecting", false);
		cb_setup4_protect.setChecked(protecting);
		
		cb_setup4_protect.setOnCheckedChangeListener(new OnCheckedChangeListener() {
			
			public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
				Editor editor = sp.edit();
				if(isChecked){
					editor.putBoolean("protecting", true);
					cb_setup4_protect.setText("���s�O�@�w�g�}��");
				}else{
					cb_setup4_protect.setText("���s�O�@�S���}��");
					editor.putBoolean("protecting", false);
				}
				editor.commit();
			}
		});
	}
	/**
	 * ���I���]�w���F�����ĥ|�Ӭɭ��������I���Ұ�deviceadmin...���ɩҰ��檺��k�C
	 * �Ұʤ�����˸m�޲z���v���C�Ұʫ�A�i�H���滷����̡B�M������٭�ܥX���]�w
	 * @param view
	 */
	public void activeDeviceAdmin(View view){
		//�إߥX�@�ӻPMyAdmin���p�p������
		ComponentName mAdminName = new ComponentName(this, MyAdmin.class);
		///���o����˸m�޲z��
		DevicePolicyManager dm = (DevicePolicyManager) getSystemService(DEVICE_POLICY_SERVICE);
		//�P�_����O�_�w�g���o�W�ź޲z�����v��
		if (!dm.isAdminActive(mAdminName)) {
			Intent intent = new Intent(
					DevicePolicyManager.ACTION_ADD_DEVICE_ADMIN);
			//�N���󪺶W�ź޲z���v���Ұ�
			intent.putExtra(DevicePolicyManager.EXTRA_DEVICE_ADMIN, mAdminName);
			startActivity(intent);
		}
	}
	
	
	
	/**
	 * �I���]�w���F���ĥ|�Ӭɭ��������]�w�������ɩҰ��檺��k�A�����Ӥ�k�ɡA�����]�w���F�w�g����
	 * @param view
	 */
	public void next(View view){
		if(!cb_setup4_protect.isChecked()){//�Y�G���s�O�@�S���}�ҡA�X�{�@�ӥ�͵������ܶ}�ҫO�@
			AlertDialog.Builder builder = new Builder(this);
			builder.setTitle("���ɴ���");
			builder.setMessage("������s���j���O�@�F�A������w��,�j�P��ĳ�}��!");
			builder.setPositiveButton("�}��", new OnClickListener() {
				
				public void onClick(DialogInterface dialog, int which) {
					//�N���s�O�@�}��
					cb_setup4_protect.setChecked(true);
					//�]�w���F�w�g�����A�b�ϥΪ̤U���i�J�ɧP�_�ɡA�Ȭ�true�A�����w�g�i��L�]�w���F
					Editor editor = sp.edit();
					editor.putBoolean("issetup", true);
					editor.commit();
				}
			});
			builder.setNegativeButton("����", new OnClickListener() {
				
				public void onClick(DialogInterface dialog, int which) {
					finish();
					//�]�w���F�w�g�����A�b�ϥΪ̤U���i�J�ɧP�_�ɡA�Ȭ�true�A�����w�g�i��L�]�w���F
					Editor editor = sp.edit();
					editor.putBoolean("issetup", true);
					editor.commit();
				}
			});
			builder.create().show();
			
			
			return ;
		}
		//�]�w���F�w�g�����A�b�ϥΪ̤U���i�J�ɧP�_�ɡA�Ȭ�true�A�����w�g�i��L�]�w���F
		Editor editor = sp.edit();
		editor.putBoolean("issetup", true);
		editor.commit();
		
		Intent intent = new Intent(this,LostProtectedActivity.class);
		startActivity(intent);
		finish();
		//�ۭq�@�ӥ������ʵe�ĪG�C�ѼƤ@�G�ɭ��i�J�ɪ��ʵe�ĪG �A �ѼƤG�G�ɭ��X�h�ɪ��ʵe�ĪG
		overridePendingTransition(R.anim.tran_in, R.anim.tran_out);
	}
	public void pre(View view){
		Intent intent = new Intent(this,Setup3Activity.class);
		startActivity(intent);
		finish();
		//�ۭq�@�ӳz�����ܤƪ��ʵe�ĪG�C�ѼƤ@�G�ɭ��i�J�ɪ��ʵe�ĪG �A �ѼƤG�G�ɭ��X�h�ɪ��ʵe�ĪG
		overridePendingTransition(R.anim.alpha_in, R.anim.alpha_out);
	}
}
