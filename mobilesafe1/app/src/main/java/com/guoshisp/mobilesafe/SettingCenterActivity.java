package com.guoshisp.mobilesafe;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.guoshisp.mobilesafe.service.CallFirewallService;
import com.guoshisp.mobilesafe.service.ShowCallLocationService;
import com.guoshisp.mobilesafe.service.WatchDogService1;
import com.guoshisp.mobilesafe.utils.ServiceStatusUtil;

public class SettingCenterActivity extends Activity implements OnClickListener {
	// �{�����۰ʧ�s
	private SharedPreferences sp;// �Ω��x�s�۰ʧ�s�O�_�}�Ҫ�boolean��
	private TextView tv_setting_autoupdate_status;// �۰ʧ�s���O�_�}�ҹ�����TextView�������ܤ�r
	private CheckBox cb_setting_autoupdate;// ��ܦ۰ʧ�s�O�_�}�Ҫ������
	// �k�ݦa��ܱ�����ŧi
	private TextView tv_setting_show_location_status;// ��ܨ����k�ݦa�O�_�}�Ҫ����A
	private CheckBox cb_setting_show_location;// �O�_�}�Ҩӹq�k�ݦa��Checkbox
	private RelativeLayout rl_setting_show_location;// ���ӹq�k�ݦa�O�_�}�ҡ�����������
	private Intent showLocationIntent;// �}�Ҩӹq�k�ݦa�T����ܪ��N��
	// �k�ݦa��ܭI��������ŧi
	private RelativeLayout rl_setting_change_bg;// ���ӹq�k�ݦa����]�w������������
	private TextView tv_setting_show_bg;// ���ӹq�k�ݦa����]�w���U�Ω���ܥثe�������r
	// �k�ݦa���ܮت���m
	private RelativeLayout rl_setting_change_location;// ���k�ݦa���ܮت���m������
	// �ӹq�¦W�汱����ŧi
	private TextView tv_setting_call_firewall_status;// �ӹq�¦W���d�I�O�_�}�ҹ�����TextView�������ܤ�r
	private CheckBox cb_setting_call_firewall;// ��ܨӹq�¦W���d�I�_�}�Ҫ������
	private RelativeLayout rl_setting_call_firewall;// ���ӹq�¦W��]�w������������
	private Intent callFirewallIntent;// �}�Ҩӹq�¦W���d�I���A�ȷN��
	// �{���걱����ŧi
	private TextView tv_setting_app_lock_status;
	private CheckBox cb_setting_applock;
	private RelativeLayout rl_setting_app_lock;
	private Intent watchDogIntent;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		setContentView(R.layout.setting_center);
		super.onCreate(savedInstanceState);
		// ���oSdcard�U��config.xml�ɮסA�Y�G���ɮפ��s�b�A����N�|�۰ʫإ߸��ɮסA�ɮת��ʧ@���A���p�����A
		sp = getSharedPreferences("config", MODE_PRIVATE);
		// �Хܦ۰ʧ�s���A�O�_�}�ҹ�����Checkbox���
		cb_setting_autoupdate = (CheckBox) findViewById(R.id.cb_setting_autoupdate);
		// ��ܥثe�۰ʧ�s�O�_�}�ҹ�����TextView���
		tv_setting_autoupdate_status = (TextView) findViewById(R.id.tv_setting_autoupdate_status);
		// �_�l�Ʀ۰ʧ�s��ui�A�w�]���A�U�O�}�Ҫ�
		boolean autoupdate = sp.getBoolean("autoupdate", true);
		if (autoupdate) {
			tv_setting_autoupdate_status.setText("�۰ʧ�s�w�g�}��");
			// �]��autoupdate�ܼƬ�true�A�h��ܦ۰ʧ�s�}�ҡA�ҥH�ACheckbox�����A���ӬO������A���A�Y��true
			cb_setting_autoupdate.setChecked(true);
		} else {
			tv_setting_autoupdate_status.setText("�۰ʧ�s�w�g����");
			// �]��autoupdate�ܼƬ�false�A�h��ܦ۰ʧ�s���}�ҡA�ҥH�ACheckbox�����A���ӬO��������A���A�Y��false
			cb_setting_autoupdate.setChecked(false);
		}
		/**
		 * ��Checkbox�����A�o�ͧ��ܮɰ���H�U�{���X
		 */
		cb_setting_autoupdate
				.setOnCheckedChangeListener(new OnCheckedChangeListener() {
					// �ѼƤ@�G�ثe��Checkbox �ĤG�ӰѼơG�ثe��Checkbox�O�_�B�������A
					public void onCheckedChanged(CompoundButton buttonView,
							boolean isChecked) {
						// ���o�s�边
						Editor editor = sp.edit();
						// ���[���x�s�ثeCheckbox�����A�A��U���i�J�ɡA�̵M�i�H�x�s�ثe�]�w�����A
						editor.putBoolean("autoupdate", isChecked);
						// �N��Ưu���ǰe��sp�̭�
						editor.commit();
						if (isChecked) {// Checkbox�B��Ŀ�ĪG
							// ��Checkbox�B�������A�ɡA��ܧڭ̪��۰ʧ�s�w�g�}�ҡA�P�ɭק�r���m��
							tv_setting_autoupdate_status
									.setTextColor(Color.WHITE);
							tv_setting_autoupdate_status.setText("�۰ʧ�s�w�g�}��");
						} else {// Checkbox�B�󥼿�����A
								// ��Checkbox���B�������A�ɡA��ܧڭ̪��۰ʧ�s�w�g�}�ҡA�P�ɭק�r���m��
							tv_setting_autoupdate_status
									.setTextColor(Color.RED);
							tv_setting_autoupdate_status.setText("�۰ʧ�s�w�g����");
						}
					}
				});
		// ����k�ݦa�T����ui�_�l��
		tv_setting_show_location_status = (TextView) findViewById(R.id.tv_setting_show_location_status);
		cb_setting_show_location = (CheckBox) findViewById(R.id.cb_setting_show_location);
		rl_setting_show_location = (RelativeLayout) findViewById(R.id.rl_setting_show_location);
		showLocationIntent = new Intent(this, ShowCallLocationService.class);

		rl_setting_show_location.setOnClickListener(this);
		// �k�ݦa��ܭI�����ŧi
		rl_setting_change_bg = (RelativeLayout) findViewById(R.id.rl_setting_change_bg);
		tv_setting_show_bg = (TextView) findViewById(R.id.tv_setting_show_bg);

		rl_setting_change_bg.setOnClickListener(this);
		// �k�ݦa���ܮت���m
		rl_setting_change_location = (RelativeLayout) findViewById(R.id.rl_setting_change_location);
		rl_setting_change_location.setOnClickListener(this);
		// �¦W��T����ui�_�l��
		tv_setting_call_firewall_status = (TextView) findViewById(R.id.tv_setting_call_firewall_status);
		cb_setting_call_firewall = (CheckBox) findViewById(R.id.cb_setting_call_firewall);
		rl_setting_call_firewall = (RelativeLayout) findViewById(R.id.rl_setting_call_firewall);
		callFirewallIntent = new Intent(this, CallFirewallService.class);

		rl_setting_call_firewall.setOnClickListener(this);
		// �{����A��ui���_�l��
		tv_setting_app_lock_status = (TextView) findViewById(R.id.tv_setting_applock_status);
		cb_setting_applock = (CheckBox) findViewById(R.id.cb_setting_applock);
		rl_setting_app_lock = (RelativeLayout) findViewById(R.id.rl_setting_applock);
		watchDogIntent = new Intent(this, WatchDogService1.class);

		rl_setting_app_lock.setOnClickListener(this);
	}
	/**
	 * ��ɭ���ܦb�e���ɡA�ߧY�]�wCheckbox�����A
	 */
	@Override
	protected void onResume() {
		if (ServiceStatusUtil.isServiceRunning(this,
				"com.guoshisp.mobilesafe.service.CallFirewallService")) {
			cb_setting_call_firewall.setChecked(true);
			tv_setting_call_firewall_status.setText("�ӹq�¦W���d�I�w�g�}��");
		} else {
			cb_setting_call_firewall.setChecked(false);
			tv_setting_call_firewall_status.setText("�ӹq�¦W���d�I�S���}��");
		}
		if (ServiceStatusUtil.isServiceRunning(this,
				"com.guoshisp.mobilesafe.service.ShowCallLocationService")) {
			cb_setting_show_location.setChecked(true);
			tv_setting_show_location_status.setText("�ӹq�k�ݦa��ܤw�g�}��");
		} else {
			cb_setting_show_location.setChecked(false);
			tv_setting_show_location_status.setText("�ӹq�k�ݦa��ܨS���}��");
		}

		if (ServiceStatusUtil.isServiceRunning(this,
				"com.guoshisp.mobilesafe.service.WatchDogService1")) {
			cb_setting_applock.setChecked(true);
			tv_setting_app_lock_status.setText("�{����A�Ȥw�g�}��");
		} else {
			cb_setting_applock.setChecked(false);
			tv_setting_app_lock_status.setText("�{����A�ȨS���}��");
		}
		super.onResume();
	}

	// �T���I���ƥ�
	@Override
	public void onClick(View v) {
		// TODO Auto-generated method stub
		switch (v.getId()) {
		case R.id.rl_setting_show_location:// �ӹq�k�ݦa�O�_�}��
			if (cb_setting_show_location.isChecked()) {
				tv_setting_show_location_status.setText("�ӹq�k�ݦa��ܨS���}��");
				stopService(showLocationIntent);
				cb_setting_show_location.setChecked(false);
			} else {
				tv_setting_show_location_status.setText("�ӹq�k�ݦa��ܤw�g�}��");
				startService(showLocationIntent);
				cb_setting_show_location.setChecked(true);
			}
			break;
		case R.id.rl_setting_change_bg:// �ӹq�k�ݦa����]�w
			showChooseBgDialog();
			break;
		case R.id.rl_setting_change_location:// �}�Ҥ@�ӷs���ɭ�,�Ω��{View���즲
			Intent intent = new Intent(this, DragViewActivity.class);
			startActivity(intent);
			break;
		case R.id.rl_setting_call_firewall://���I�¦W���d�I

			if (cb_setting_call_firewall.isChecked()) {
				tv_setting_call_firewall_status.setText("�ӹq�¦W���d�I�S���}��");
				stopService(callFirewallIntent);
				cb_setting_call_firewall.setChecked(false);
			} else {
				tv_setting_call_firewall_status.setText("�ӹq�¦W���d�I�w�g�}��");
				startService(callFirewallIntent);
				cb_setting_call_firewall.setChecked(true);
			}
			break;
		case R.id.rl_setting_applock://�{����

			if (cb_setting_applock.isChecked()) {
				tv_setting_app_lock_status.setText("�{����A�ȨS���}��");
				stopService(watchDogIntent);
				cb_setting_applock.setChecked(false);
			} else {
				tv_setting_app_lock_status.setText("�{����A�Ȥw�g�}��");
				startService(watchDogIntent);
				cb_setting_applock.setChecked(true);
			}

			break;
		}
	}

	/**
	 * �ܧ�I���m�⪺��͵���
	 */

	private void showChooseBgDialog() {
		// ���o�@�ӥ�͵����غc��
		AlertDialog.Builder builder = new Builder(this);
		// �]�w��͵������D���ϥ�
		builder.setIcon(R.drawable.notification);
		// �]�w��͵��������D
		builder.setTitle("�k�ݦa���ܮح���");
		// ��͵�����item��������ܤ�r
		final String[] items = { "�b�z��", "���O��", "�äh��", "ī�G��", "���ݦ�" };
		// �Ω���ܥ�͵��������@�Ӷ��سQ�Ŀ�C�w�]���O�Ĥ@�Ӷ���
		int which = sp.getInt("which", 0);
		// �]�w��@������ءCItem���A�u�঳�@�ӳB��Ŀ窱�A
		builder.setSingleChoiceItems(items, which,
				new DialogInterface.OnClickListener() {
					// �B�zItem���I���ƥ�
					public void onClick(DialogInterface dialog, int which) {
						// �N���ت�id�s�Jsp��
						Editor editor = sp.edit();
						editor.putInt("which", which);
						editor.commit();
						// �]�wItem����r�T��
						tv_setting_show_bg.setText(items[which]);
						// ������͵���
						dialog.dismiss();
					}
				});
		builder.setNegativeButton("����", new DialogInterface.OnClickListener() {

			public void onClick(DialogInterface dialog, int which) {

			}
		});
		// �إߨ���ܥX��͵���
		builder.create().show();
	}
}
