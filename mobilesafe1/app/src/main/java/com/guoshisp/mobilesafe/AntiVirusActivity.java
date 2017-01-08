package com.guoshisp.mobilesafe;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import com.guoshisp.mobilesafe.db.dao.AntiVirusDao;
import com.guoshisp.mobilesafe.utils.Md5Encoder;

public class AntiVirusActivity extends Activity {
	protected static final int SCAN_NOT_VIRUS = 90;
	protected static final int FIND_VIRUS = 91;
	protected static final int SCAN_FINISH = 92;
	// �d���f�r�ɡA�p�F�W�����y����
	private ImageView iv_scan;
	// �M�ε{���]�޲z��
	private PackageManager pm;
	// �ʧ@��Ʈw������
	private AntiVirusDao dao;
	// ���y�i�׫��ܾ�
	private ProgressBar progressBar1;
	// ��ܵo�{���f�r�ƥ�
	private TextView tv_scan_status;
	// ��ܱ��y���{���T��
	private LinearLayout ll_scan_status;
	// �Ω�[�J���y�쪺�f�r�T��
	private List<PackageInfo> virusPackInfos;
	// ����ʵe
	RotateAnimation ra;
	// �s��f�r�����X
	private Map<String, String> virusMap;
	// �Ω�P�l������q�T�A��s�D�b�{�]UI������^
	private Handler handler = new Handler() {
		public void handleMessage(android.os.Message msg) {
			PackageInfo info = (PackageInfo) msg.obj;
			switch (msg.what) {
			case SCAN_NOT_VIRUS:// �S�����f�r
				TextView tv = new TextView(getApplicationContext());
				tv.setText("���y" + info.applicationInfo.loadLabel(pm) + " �w��");
				ll_scan_status.addView(tv, 0);// �s�W��ll_scan_info������̤W��
				break;
			case FIND_VIRUS:// �o�{�f�r
				// �N�f�r�s�W�춰�X��
				virusPackInfos.add(info);
				break;
			case SCAN_FINISH:// ���y����
				// ����ʵe������
				iv_scan.clearAnimation();
				// �P�_�f�r���X���j�p
				if (virusPackInfos.size() == 0) {
					Toast.makeText(getApplicationContext(), "���y����,�A������ܦw��", 0)
							.show();
				}
				break;
			}
		};
	};

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		setContentView(R.layout.anti_virus);
		pm = getPackageManager();
		dao = new AntiVirusDao(this);
		virusPackInfos = new ArrayList<PackageInfo>();
		super.onCreate(savedInstanceState);
		tv_scan_status = (TextView) findViewById(R.id.tv_scan_status2);
		iv_scan = (ImageView) findViewById(R.id.iv_scan);
		// �]�w�@�ӱ��઺�ʵe
		ra = new RotateAnimation(0, 360, Animation.RELATIVE_TO_SELF, 1.0f,
				Animation.RELATIVE_TO_SELF, 1.0f);
		ra.setDuration(1000);
		// �]�w���઺���_���ơ]�@������^
		ra.setRepeatCount(Animation.INFINITE);
		// �]�w���઺�Ҧ��]����@�Ӧ^�X��A���s����^
		ra.setRepeatMode(Animation.RESTART);
		ll_scan_status = (LinearLayout) findViewById(R.id.ll_scan_status);
		progressBar1 = (ProgressBar) findViewById(R.id.progressBar1);
	}

	public void kill(View v) {
		// ���]�ʵe
		ra.reset();
		// �Ұʰʵe
		iv_scan.startAnimation(ra);
		// �}�Ҥ@�u�������A�ˬd������U�ӮM�Ϊ�ñ�W�T��
		new Thread() {
			public void run() {
				// PackageManager.GET_SIGNATURES�M�ε{����ñ�W�T��
				List<PackageInfo> packinfos = pm
						.getInstalledPackages(PackageManager.GET_SIGNATURES);
				progressBar1.setMax(packinfos.size());
				// �p�ƥثe�w�g�ˬd�F�h�ֱ��M�ε{���A�H��ܬd�����i��
				int count = 0;
				// �ˬd�X�U�ӮM�ε{��������ñ�W�T��
				for (PackageInfo info : packinfos) {
					// �N�M�ε{����ñ�W�T���নMD5�ȡA�Ω�P�f�r��Ʈw���
					String md5 = Md5Encoder.encode(info.signatures[0]
							.toCharsString());
					// �b�f�r��Ʈw���d�߸�MD5�ȡA�ӧP�_�ӮM�ε{���O�_��Ưf�r
					String result = dao.getVirusInfo(md5);
					// �Y�G�d�ߪ����G��null�A�h��ܥثe�ˬd���M�Τ��O�f�r
					if (result == null) {
						Message msg = Message.obtain();
						msg.what = SCAN_NOT_VIRUS;
						msg.obj = info;
						handler.sendMessage(msg);
					} else {//�ثe�ˬd�쪺�M���ݩ�f�r
						Message msg = Message.obtain();
						msg.what = FIND_VIRUS;
						msg.obj = info;
						handler.sendMessage(msg);
					}
					count++;
					try {
						Thread.sleep(20);
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
					progressBar1.setProgress(count);
				}
				// �ˬd����
				Message msg = Message.obtain();
				msg.what = SCAN_FINISH;
				handler.sendMessage(msg);

			};
		}.start();

	}

	// "�@��M�z"���s
	public void clean(View v) {
		// �P�_�f�r���X���j�p
		if (virusPackInfos.size() > 0) {
			for (PackageInfo pinfo : virusPackInfos) {
				// �����M�ε{��
				String packname = pinfo.packageName;
				Intent intent = new Intent();
				intent.setAction(Intent.ACTION_DEFAULT);
				intent.setData(Uri.parse("package:" + packname));
				startActivity(intent);
			}
		}else{
			return;
		}
	}
}