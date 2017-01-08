package com.guoshisp.mobilesafe;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;

import org.xmlpull.v1.XmlPullParserException;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.AlphaAnimation;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.guoshisp.mobilesafe.domain.UpdateInfo;
import com.guoshisp.mobilesafe.engine.UpdateInfoParser;
import com.guoshisp.mobilesafe.utils.AssetCopyUtil;
import com.guoshisp.mobilesafe.utils.DownLoadUtil;

public class SplashActivity extends Activity {
	private TextView tv_splash_version;
	private UpdateInfo info;

	private static final int GET_INFO_SUCCESS = 10;
	private static final int SERVER_ERROR = 11;
	private static final int SERVER_URL_ERROR = 12;
	private static final int PROTOCOL_ERROR = 13;
	private static final int IO_ERROR = 14;
	private static final int XML_PARSE_ERROR = 15;
	private static final int DOWNLOAD_SUCCESS = 16;
	private static final int DOWNLOAD_ERROR = 17;
	protected static final String TAG = "SplashActivity";
	private long startTime;
	private RelativeLayout rl_splash;
	private long endTime;
	private ProgressDialog pd;
	private Handler handler = new Handler() {
		public void handleMessage(android.os.Message msg) {
			switch (msg.what) {
			case XML_PARSE_ERROR:
				Toast.makeText(getApplicationContext(), "xml�ѪR���~", 1).show();
				loadMainUI();
				break;
			case IO_ERROR:
				Toast.makeText(getApplicationContext(), "I/O���~", 1).show();
				loadMainUI();
				break;
			case PROTOCOL_ERROR:
				Toast.makeText(getApplicationContext(), "��w���䴩", 1).show();
				loadMainUI();
				break;
			case SERVER_URL_ERROR:
				Toast.makeText(getApplicationContext(), "���A�����|�����T", 1).show();
				loadMainUI();
				break;
			case SERVER_ERROR:
				Toast.makeText(getApplicationContext(), "���A�����w�ҥ~", 1).show();
				loadMainUI();
				break;
			case GET_INFO_SUCCESS:
				String serverversion = info.getVersion();
				String currentversion = getVersion();
				if (currentversion.equals(serverversion)) {
					Log.i(TAG, "�������ۦP�i�J�D�ɭ�");
					loadMainUI();
				} else {
					Log.i(TAG, "���������ۦP,���ť�͵���");
					showUpdateDialog();
				}
				break;

			case DOWNLOAD_SUCCESS:
				Log.i(TAG, "�ɮפU�����\");
				File file = (File) msg.obj;
				installApk(file);
				break;
			case DOWNLOAD_ERROR:
				Toast.makeText(getApplicationContext(), "�U����ƨҥ~", 1).show();
				loadMainUI();
				break;
			}
		};
	};

	/**
	 * ���J�D�ɭ�
	 */
	private void loadMainUI() {
		Intent intent = new Intent(this, MainActivity.class);
		startActivity(intent);
		finish();// ��ثe��Activity�q�u�@���|�̭�����
	}

	/**
	 * �w�ˤ@��apk�ɮ�
	 * 
	 * @param file
	 *            �n�w�˪������ɦW
	 */
	protected void installApk(File file) {
		// �����N��
		Intent intent = new Intent();
		intent.setAction("android.intent.action.VIEW");// �]�w�N�Ϫ��ʧ@
		intent.addCategory("android.intent.category.DEFAULT");// ���N�ϥ[�J�B�~�����
		// intent.setType("application/vnd.android.package-archive");
		// intent.setData(Uri.fromFile(file));
		intent.setDataAndType(Uri.fromFile(file),
				"application/vnd.android.package-archive");// �]�w�N�Ϫ���ƻP���A
		startActivity(intent);// �ҰʸӷN��
	}

	/**
	 * ��ܰ��Ŵ��ܪ���͵���
	 */
	protected void showUpdateDialog() {
		// �إߤF��͵������غc��
		AlertDialog.Builder builder = new Builder(this);
		// �]�w��͵��������ܤ��e
		builder.setIcon(getResources().getDrawable(R.drawable.notification));
		// �]�w���ż��D
		builder.setTitle("���Ŵ���");
		// �]�w���Ŵ��ܤ��e
		builder.setMessage(info.getDescription());
		// �إߤU���i�׫��ܾ�
		pd = new ProgressDialog(SplashActivity.this);
		// �]�w�i�׫��ܾ��b��ܮɪ����ܰT��
		pd.setMessage("���b�U��");
		// ���w��ܤU���i�׫��ܾ��������Ϊ�
		pd.setProgressStyle(ProgressDialog.STYLE_HORIZONTAL);
		// �]�w���ū��s
		builder.setPositiveButton("����", new OnClickListener() {

			public void onClick(DialogInterface dialog, int which) {
				Log.i(TAG, "����,�U��" + info.getApkurl());
				// �P�_Sdcard�O�_�i��
				if (Environment.MEDIA_MOUNTED.equals(Environment
						.getExternalStorageState())) {
					pd.show();// ��ܤU���i�׫��ܾ�
					// �}�Ҥl������U��apk
					new Thread() {

						public void run() {
							// ���o�A�Ⱥݷs����apk���U����}
							String path = info.getApkurl();
							// ���o�̷sapk���ɦW
							String filename = DownLoadUtil.getFilename(path);
							// �bSdcard���ڥؿ��W�إߤ@���ɮסC�Ĥ@�ӰѼƬO�Ω���oSdcard���ڥؿ��A�ĤG�ӰѼƬO�bSdcard���ڥؿ��W�إߪ��ɮת��ɦW
							File file = new File(Environment
									.getExternalStorageDirectory(), filename);
							// �o��U���᪺apk������W��
							file = DownLoadUtil.getFile(path,
									file.getAbsolutePath(), pd);
							if (file != null) {
								// �V�D�b�{�ǰe�T���U�����\���T��
								Message msg = Message.obtain();
								msg.what = DOWNLOAD_SUCCESS;
								msg.obj = file;
								handler.sendMessage(msg);
							} else {
								// �V�D�b�{�ǰe�T���U�����Ѫ��T��
								Message msg = Message.obtain();
								msg.what = DOWNLOAD_ERROR;
								handler.sendMessage(msg);
							}
							pd.dismiss();// �U��������A�N�U�����i�׫��ܾ�������
						};
					}.start();
				} else {
					Toast.makeText(getApplicationContext(), "sd�d���i��", 1).show();
					loadMainUI();// �i�J�{���D�ɭ�
				}
			}
		});
		builder.setNegativeButton("����", new OnClickListener() {

			public void onClick(DialogInterface dialog, int which) {
				loadMainUI();
			}
		});
		builder.create().show();
	}

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		// �]�w�����R�W��
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		// �]�w�����ù��Ҧ�
		getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
				WindowManager.LayoutParams.FLAG_FULLSCREEN);

		setContentView(R.layout.activity_splash);
		rl_splash = (RelativeLayout) findViewById(R.id.rl_splash);
		tv_splash_version = (TextView) findViewById(R.id.tv_splash_version);
		tv_splash_version.setText("������:" + getVersion());

		AlphaAnimation aa = new AlphaAnimation(0.3f, 1.0f);
		aa.setDuration(2000);
		rl_splash.startAnimation(aa);

		// 1.�s�u���A�����o���A���W���պA�T��.
		new Thread(new CheckVersionTask()) {
		}.start();
		//�Ш�f�r�w����Ʈw�ɮ�
		new Thread() {
			public void run() {
				File file = new File(getFilesDir(), "antivirus.db");
				if (file.exists() && file.length() > 0) {//��Ʈw�ɮפw�g�Ш�\

				} else {
					AssetCopyUtil.copy1(getApplicationContext(),
							"antivirus.db", file.getAbsolutePath(), null);
				}
			};

		}.start();
	}

	/**
	 * �s���ˬd�M�Ϊ��������P�A�ȺݤW���������O�_�ۦP
	 * 
	 * @author Administrator
	 * 
	 */
	private class CheckVersionTask implements Runnable {

		public void run() {
			// ���oSdcard�U��config.xml�ɮסA�Y�G���ɮפ��s�b�A����N�|�۰ʫإ߸��ɮ�
			SharedPreferences sp = getSharedPreferences("config", MODE_PRIVATE);
			// ��sp����Ө��oautoupdate�ҹ�����boolean�ȡA�Y�G���䤣�s�b�A�w�]�Ǧ^true
			boolean autoupdate = sp.getBoolean("autoupdate", true);
			// �۰ʧ�s�S���}��
			if (!autoupdate) {
				try {
					// �ίv2���骺�O���F����ʵe
					Thread.sleep(2000);
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				// �ίv2���鼽��ʵe������i�J�{���D�ɭ�
				loadMainUI();
			}
			startTime = System.currentTimeMillis();
			Message msg = Message.obtain();
			try {
				// ���o�A�Ⱥݪ��պA�T�����s�u��}
				String serverurl = getResources().getString(R.string.serverurl);
				URL url = new URL(serverurl);
				HttpURLConnection conn = (HttpURLConnection) url
						.openConnection();
				conn.setRequestMethod("GET");// �]�w�ШD�Ҧ�
				conn.setConnectTimeout(5000);
				int code = conn.getResponseCode();// ���o�T���X
				if (code == 200) {// �T���X��200�ɡA��ܻP�A�Ⱥݳs�u���\
					InputStream is = conn.getInputStream();
					info = UpdateInfoParser.getUpdateInfo(is);
					endTime = System.currentTimeMillis();
					long resulttime = endTime - startTime;
					if (resulttime < 2000) {
						try {
							Thread.sleep(2000 - resulttime);
						} catch (InterruptedException e) {
							e.printStackTrace();
						}
					}

					msg.what = GET_INFO_SUCCESS;
					handler.sendMessage(msg);
				} else {
					// ���A�����A���~.
					msg.what = SERVER_ERROR;
					handler.sendMessage(msg);
					endTime = System.currentTimeMillis();
					long resulttime = endTime - startTime;
					if (resulttime < 2000) {
						try {
							Thread.sleep(2000 - resulttime);
						} catch (InterruptedException e) {
							e.printStackTrace();
						}
					}
				}

			} catch (MalformedURLException e) {
				e.printStackTrace();
				msg.what = SERVER_URL_ERROR;
				handler.sendMessage(msg);
			} catch (ProtocolException e) {
				msg.what = PROTOCOL_ERROR;
				handler.sendMessage(msg);
				e.printStackTrace();
			} catch (IOException e) {
				msg.what = IO_ERROR;
				handler.sendMessage(msg);
				e.printStackTrace();
			} catch (XmlPullParserException e) {
				msg.what = XML_PARSE_ERROR;
				handler.sendMessage(msg);
				e.printStackTrace();
			}
		}
	}

	/**
	 * ���o�ثe�M�ε{�����������C �������s�b��ڭ̪�APK���������M���ɮפ��]��������APK��A�Y�i�ݨ�������M���ɮס^�A
	 * �������Omanifest�`�I����android:versionName="1.0" ��@�ӮM�ε{���Q�˨�����
	 * �A��apk�Ш������data/app�ؿ��U�]�]�N�O�t�Τ��^�A�p��6�C�ҥH�Q�o�쪩�����A�ڭ̻ݭn����P�t�����p���A�ȡA�N�i�H�o��apk�����T���F
	 * 
	 * @return
	 */
	private String getVersion() {
		// �o��t�Ϊ��]�޲z���C�w�g�o��Fapk�����磌�󪺥]��
		PackageManager pm = this.getPackageManager();
		try {
			// �ѼƤ@�G�ثe�M�ε{�����M��W�� �ѼƤG�G�i�諸���[�T���A�o�̧ڭ̥Τ��� �A�i�H�w�q��0
			PackageInfo info = pm.getPackageInfo(getPackageName(), 0);
			// �Ǧ^�ثe�M�ε{����������
			return info.versionName;
		} catch (Exception e) {// �M��W�٧䤣�쪺�ҥ~�A�z�פW�A �Өҥ~���i��|�o��
			e.printStackTrace();
			return "";
		}
	}
}
