package com.guoshisp.mobilesafe;

import java.io.File;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import android.widget.Toast;

import com.guoshisp.mobilesafe.utils.AssetCopyUtil;

public class AtoolsActivity extends Activity implements OnClickListener {
	protected static final int COPY_SUCCESS = 30;
	protected static final int COPY_FAILED = 31;
	protected static final int COPY_COMMON_NUMBER_SUCCESS = 32;
	private TextView tv_atools_address_query;// ���I���Ӷ��خɡA�n�����Ш�X�k�ݦa�T������Ʈw�ɮ�
	private TextView tv_atools_common_num;// �`�θ��X
	private TextView tv_atools_applock;//�{����
	private ProgressDialog pd;// �Ш��Ʈw�ɭn��ܪ��i�׫��ܾ�
	// �Ш��Ʈw�O�@�Ӭ۹�Ӯɪ��ʧ@�A�Ш����A���D�b�{�ǰe�T��
	private Handler handler = new Handler() {
		public void handleMessage(android.os.Message msg) {
			// �L���Ш�O�_���\�A���ݭn�����i����ܱ�
			pd.dismiss();
			switch (msg.what) {
			case COPY_SUCCESS:
				// �Ш��Ʈw���\��A�i�J���X�k�ݦa�d�ߪ��ɭ�
				loadQueryUI();
				break;
			case COPY_COMMON_NUMBER_SUCCESS:
				//�Ш��Ʈw���\��A�i�J�`�θ��X��ܪ��ɭ�
				loadCommNumUI();
				break;
			case COPY_FAILED:
				Toast.makeText(getApplicationContext(), "�Ш��ƥ���", 0).show();
				break;
			}
		};
	};

	@Override
	protected void onCreate(Bundle savedInstanceState) {

		super.onCreate(savedInstanceState);
		setContentView(R.layout.atools);// �i���u��������ɭ�
		tv_atools_address_query = (TextView) findViewById(R.id.tv_atools_address_query);
		tv_atools_address_query.setOnClickListener(this);
		pd = new ProgressDialog(this);
		tv_atools_common_num = (TextView) findViewById(R.id.tv_atools_common_num);
		tv_atools_common_num.setOnClickListener(this);
		tv_atools_applock = (TextView)findViewById(R.id.tv_atools_applock);
		tv_atools_applock.setOnClickListener(this);
		// �]�w�i�׫��ܾ���ܪ�����
		pd.setProgressStyle(ProgressDialog.STYLE_HORIZONTAL);
	}

	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.tv_atools_address_query:// ���X�k�ݦa�d��
			// �إߥX��Ʈw�n�Ш�쪺�t���ɮסGdata\data\�M��W��\files\address.db
			final File file = new File(getFilesDir(), "address.db");
			// �P�_��Ʈw�O�_�s�b�A�Y�G�s�b�A�h�����i�J���X�k�ݦa���d�߬ɭ��A�_�h�A�����Ш�ʧ@
			if (file.exists() && file.length() > 0) {
				// ��Ʈw�ɮ��Ш�\�A�i�J�d�߸��X�k�ݦa�ɭ�
				loadQueryUI();
			} else {
				// ��Ʈw���Ш�.�}�l�Ш�ɻݭn�}�l��ܶi�׫��ܾ�
				pd.show();
				// �Ш��Ʈw�]�O�@�Ӭ۹�Ӯɪ��ʧ@�A�b�l�����������Ӱʧ@
				new Thread() {
					public void run() {
						AssetCopyUtil asu = new AssetCopyUtil(
								getApplicationContext());
						// �Ǧ^�Ш�\�P�_�����G
						boolean result = asu.copyFile("naddress.db", file, pd);
						if (result) {// �Ш�\
							Message msg = Message.obtain();
							msg.what = COPY_SUCCESS;
							handler.sendMessage(msg);
						} else {// �Ш��
							Message msg = Message.obtain();
							msg.what = COPY_FAILED;
							handler.sendMessage(msg);
						}
					};
				}.start();
			}
			break;
		case R.id.tv_atools_common_num:// ���θ��X�d��
			// �PŪ��Ʈw�O�_�w�g�Ш��t�Υؿ��] data/data/�M��W��/files/address.db�^
			final File commonnumberfile = new File(getFilesDir(),
					"commonnum.db");
			if (commonnumberfile.exists() && commonnumberfile.length() > 0) {
				loadCommNumUI();// �i�J���@���X����ܬɭ�
			} else {
				// ��Ʈw���Ш�.
				pd.show();
				// �Ш��Ʈw�O�@�Ӭ۹�Ӯɪ��u�@�A�ڭ̬���}�Ҥ@�Ӥl�����
				new Thread() {
					public void run() {
						// �N��Ʈw�Ш�����t�Τ�
						AssetCopyUtil asu = new AssetCopyUtil(
								getApplicationContext());
						boolean result = asu.copyFile("commonnum.db",
								commonnumberfile, pd);
						if (result) {// �Ш�\
							Message msg = Message.obtain();
							msg.what = COPY_COMMON_NUMBER_SUCCESS;
							handler.sendMessage(msg);
						} else {// �Ш��
							Message msg = Message.obtain();
							msg.what = COPY_FAILED;
							handler.sendMessage(msg);
						}
					};
				}.start();
			}
			break;
		case R.id.tv_atools_applock://�{����
			Intent applockIntent = new Intent(this,AppLockActivity.class);
			startActivity(applockIntent);
			break;
		}
	}

	/**
	 * �i�J�`�θ��X�ɭ�
	 */
	private void loadCommNumUI() {
		Intent intent = new Intent(this, CommonNumActivity.class);
		startActivity(intent);
	}

	/**
	 * �i�J�츹�X�k�ݦa�d�߬ɭ�
	 */
	private void loadQueryUI() {
		Intent intent = new Intent(this, NumberQueryActivity.class);
		startActivity(intent);
	}
}
