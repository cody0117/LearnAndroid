package com.guoshisp.mobilesafe;

import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.guoshisp.mobilesafe.db.dao.NumberAddressDao;

public class NumberQueryActivity extends Activity {
	private EditText et_number_query;// ��J�n�d�ߪ����X
	private TextView tv_number_address;// ��ܸ��X�k�ݦa��m

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		setContentView(R.layout.number_query);
		super.onCreate(savedInstanceState);
		et_number_query = (EditText) findViewById(R.id.et_number_query);
		tv_number_address = (TextView) findViewById(R.id.tv_number_address);
	}

	/**
	 * �I�����d�ߡ��ɰ��檺��ť��k
	 * 
	 * @param view
	 */
	public void query(View view) {
		// �d�߫e�A�ݭn�N���X�e�᪺�Ů�M�z��
		String number = et_number_query.getText().toString().trim();
		// �P�_�n�d�ߪ����X�O�_����
		if (TextUtils.isEmpty(number)) {
			Toast.makeText(this, "���X���ର��", 1).show();
			// �ϥΰʵe�u��Ӹ��J�@�Ӱʵe�귽�@�Ӱʵe�귽
			Animation shake = AnimationUtils.loadAnimation(this, R.anim.shake);
			// ���X��J�ؤ��S����J���X���I�����d�ߡ��ɼ���@�Ӱʵe�A�ΨӴ��ܨϥΪ̿�J���X��~�i�H����d�߰ʧ@�C
			et_number_query.startAnimation(shake);
			return;
		} else {// ���X�����Ůɭn�Ǧ^�k�ݦa�T��
				// �Ǧ^�d�ߨ쪺�k�ݦa�T��
			String address = NumberAddressDao.getAddress(number);
			// �N�k�ݦa�T����ܦb�ù��W
			tv_number_address.setText(address);
		}
	}
}
