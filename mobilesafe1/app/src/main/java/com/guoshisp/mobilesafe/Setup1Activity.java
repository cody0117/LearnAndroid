package com.guoshisp.mobilesafe;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;

public class Setup1Activity extends Activity {
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		//�i�J��]�w���F���Ĥ@�Ӭɭ�
		setContentView(R.layout.setup1);
	}
	/**
	 * ���I���]�w���F���Ĥ@�Ӭɭ����k�U�����s-�U�@�B�ɩҭn���檺��k�A
	 * �]���b��Button���]�w���ݩ�android:onClick=next�A�b�U�����{���X���٥h�Ӹ���
	 * @param view
	 */
	public void next(View view){
		Intent intent = new Intent(this,Setup2Activity.class);
		startActivity(intent);
		finish();
		//Activity�����ɼ���ʵe�C�ۭq�@�ӳz�����ܤƪ��ʵe�ĪG�A�B�Ӥ�k�����g�bstartActivity(intent)�άOfinish()��k����~�|�ͮġC
		//�ѼƤ@�G�ɭ��i�J�ɪ��ʵe�ĪG �A �ѼƤG�G�ɭ��X�h�ɪ��ʵe�ĪG�C
		overridePendingTransition(R.anim.alpha_in, R.anim.alpha_out);
	}
}
