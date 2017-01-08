package com.guoshisp.mobilesafe;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

public class Setup3Activity extends Activity {
	private EditText et_setup3_number;//�]�w�j�w���w�����X
	private SharedPreferences sp;//�Ω��x�s�w�����X�Φw�����X���^��
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.setup3);
		et_setup3_number = (EditText) findViewById(R.id.et_setup3_number);
		sp = getSharedPreferences("config", MODE_PRIVATE);
		//��ƪ��^���C�Y�G�S���x�s�L�w�����X�A�^�����O��
		String number = sp.getString("safemuber", "");
		et_setup3_number.setText(number);
	}
	/**
	 * �b�ĤT�Ӭɭ���������pô�H�����s�W�]�w���ݩʡGandroid:onClick="selectContact"�A�ҥH�A���I��������pô�H���ɷ|����Ӥ�k
	 * @param view
	 */
	public void selectContact(View view){
		Intent intent = new Intent(this,SelectContactActivity.class);
		//�Ұʤ@�ӱa�Ǧ^�Ȫ�activity�C�ѼƤG�G�ШD�X
		startActivityForResult(intent, 0);
	}
	/**
	 * �Q�Ұʪ�Activity�N�Ǧ^�����G��Ʀs��bIntent���A�o�̪�Intent�M�Q�Ұʪ�Activity�Ǧ^
	 * ��ƮɩҨϥΪ��O�P�@��Intent�C
	 * �`�N�G�Y�G�Ʊ��Ư���зǶǦ^�AActivity���ҰʼҦ�������]�w��singletask�Ҧ�
	 */
	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		if(data!=null){
			//���o��Ǧ^�����
			String number = data.getStringExtra("number");
			//�N�Ǧ^�������ܦbEditText��
			et_setup3_number.setText(number);
		}
		super.onActivityResult(requestCode, resultCode, data);
	}
	//�I�����U�@�B�����檺��k
	public void next(View view){
		String number = et_setup3_number.getText().toString().trim();
		if(TextUtils.isEmpty(number)){
			Toast.makeText(this, "�w�����X���ର��", 0).show();
			return;
		}
		//�NEditText�����w�����X���[�ư_�ӡA�]��K��ƪ��^��
		Editor editor = sp.edit();
		editor.putString("safemuber", number);
		editor.commit();
		
		Intent intent = new Intent(this,Setup4Activity.class);
		startActivity(intent);
		finish();
		//�ۭq�@�ӥ������ʵe�ĪG�C�ѼƤ@�G�ɭ��i�J�ɪ��ʵe�ĪG �A �ѼƤG�G�ɭ��X�h�ɪ��ʵe�ĪG
		overridePendingTransition(R.anim.tran_in, R.anim.tran_out);
	}
	//�I�����W�@�B�����檺��k
	public void pre(View view){
		Intent intent = new Intent(this,Setup2Activity.class);
		startActivity(intent);
		finish();
		//�ۭq�@�ӳz�����ܤƪ��ʵe�ĪG�C�ѼƤ@�G�ɭ��i�J�ɪ��ʵe�ĪG �A �ѼƤG�G�ɭ��X�h�ɪ��ʵe�ĪG
		overridePendingTransition(R.anim.alpha_in, R.anim.alpha_out);
	}
}
