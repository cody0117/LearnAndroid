package com.guoshisp.mobilesafe;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;

public class Setup2Activity extends Activity implements OnClickListener {
	private RelativeLayout rl_setup2_bind;//���I���j�wsim�d����������A�ӱ�����s�b��Ӥl����A���o�ӱ�����ت��b�󬰨�]�w�I���ƥ�A�K���I���ӱ����������@�ӱ�����T�����I���ƥ�
	private ImageView iv_setup2_bind_status;//rl_setup2_bind�����@�Ӥl����A�Ω����sim�d�O�_�Q�j�w�ɪ����P���A
	private SharedPreferences sp;//�Ω��x�ssim�d�O�_�Q�j�w���T���A�H�K�{���U�����J�ɨϥ�
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.setup2);
		rl_setup2_bind = (RelativeLayout) findViewById(R.id.rl_setup2_bind);
		rl_setup2_bind.setOnClickListener(this);
		iv_setup2_bind_status = (ImageView) findViewById(R.id.iv_setup2_bind_status);
		sp = getSharedPreferences("config", MODE_PRIVATE);
		//�_�l�ƪ��޿�-�P�_sim�d�O�_�Q�j�w
		String simseral = sp.getString("simserial", "");
		if(TextUtils.isEmpty(simseral)){
			iv_setup2_bind_status.setImageResource(R.drawable.switch_off_normal);
		}else{
			iv_setup2_bind_status.setImageResource(R.drawable.switch_on_normal);
		}
	}
	/**
	 * �b�]�w���F���ĤG�Ӭɭ����I�����I���j�wsim�d���ɰ��檺�I���ƥ�
	 */
	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.rl_setup2_bind:
			//�P�_�ثesim�d�����A
			String simseral = sp.getString("simserial", "");
			if(TextUtils.isEmpty(simseral)){//sim�d���j�w
				Editor editor = sp.edit();
				editor.putString("simserial", getSimSerial());
				editor.commit();
				//�]��sim�d�����A�O���Q�j�w�A�ҥH�A�I�����ث����ӳ]�w���j�w�����A
				iv_setup2_bind_status.setImageResource(R.drawable.switch_on_normal);
			}else{
				Editor editor = sp.edit();
				editor.putString("simserial", "");
				editor.commit();
				iv_setup2_bind_status.setImageResource(R.drawable.switch_off_normal);
			}
			
			break;
		}
	}
	
	/**
	 * ���o�����sim�d�긹
	 */
	private String getSimSerial(){
		//sim�d�O�P�q�����p���C�ݭn�b�M���ɮפ��պA�v���G<uses-permission android:name="android.permission.READ_PHONE_STATE" />
		TelephonyManager tm = (TelephonyManager) getSystemService(TELEPHONY_SERVICE);
		//�Ǧ^sim�d���긹
		return tm.getSimSerialNumber();
	}
	/**
	 * �I���ɭ����k�U�������U�@�B�����s�ҭn���檺��k
	 * @param view
	 */
	public void next(View view){
		
		Intent intent = new Intent(this,Setup3Activity.class);
		startActivity(intent);
		finish();
		//�ۭq�@�ӥ������ʵe�ĪG�C�ѼƤ@�G�ɭ��i�J�ɪ��ʵe�ĪG �A �ѼƤG�G�ɭ��X�h�ɪ��ʵe�ĪG
		overridePendingTransition(R.anim.tran_in, R.anim.tran_out);
	}
	/**
	 * �I���ɭ����U�������W�@�B���ҭn���檺��k
	 * @param view
	 */
	public void pre(View view){
		Intent intent = new Intent(this,Setup1Activity.class);
		startActivity(intent);
		finish();
		//�ۭq�@�ӳz�����ܤƪ��ʵe�ĪG�C�ѼƤ@�G�ɭ��i�J�ɪ��ʵe�ĪG �A �ѼƤG�G�ɭ��X�h�ɪ��ʵe�ĪG
		overridePendingTransition(R.anim.alpha_in, R.anim.alpha_out);
	}
}
