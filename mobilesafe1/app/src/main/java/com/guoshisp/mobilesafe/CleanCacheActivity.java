package com.guoshisp.mobilesafe;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.IPackageStatsObserver;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageStats;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.format.Formatter;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;

public class CleanCacheActivity extends Activity {
	// ��ܱ��y���i��
	private ProgressBar pd;
	// ���ܱ��y�����A
	private TextView tv_clean_cache_status;
	// �t�Ϊ��]�޲z��
	private PackageManager pm;
	// �x�s�a���֨����M�Ϊ��W��
	private List<String> cachePagenames;
	// ��ܩҦ��a���֨����M�ε{���T��
	private LinearLayout ll_clean;
	// �s��֨��T��
	private Map<String, Long> cacheinfo;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.ceanl_ce);
		pd = (ProgressBar) findViewById(R.id.progressBar1);
		ll_clean = (LinearLayout) findViewById(R.id.ll_clean_cache_cont);
		tv_clean_cache_status = (TextView) findViewById(R.id.tv_clean_cache_status);
		pm = getPackageManager();
		scanPackages();
	}

	// ���y�X�a���֨����M�ε{��
	private void scanPackages() {
		// �}�Ҥ@�Ӳ��B�u�@���y�a���֨����M�ε{��
		new AsyncTask<Void, Integer, Void>() {
			// �x�s������Ҧ��w�w�˪��M�ε{�����]�T��
			List<PackageInfo> packinfos;

			@Override
			protected Void doInBackground(Void... params) {
				int i = 0;
				for (PackageInfo info : packinfos) {
					// ���o��M�ε{�����M��W�ٰT��
					String packname = info.packageName;
					getSize(pm, packname);
					i++;
					try {
						Thread.sleep(100);
					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					publishProgress(i);
				}
				return null;
			}

			@Override
			protected void onPreExecute() {
				cachePagenames = new ArrayList<String>();
				cacheinfo = new HashMap<String, Long>();
				packinfos = pm.getInstalledPackages(0);
				pd.setMax(packinfos.size());
				tv_clean_cache_status.setText("�}�l���y...");

				super.onPreExecute();
			}

			@Override
			protected void onPostExecute(Void result) {

				tv_clean_cache_status.setText("���y����..." + "�o�{��"
						+ cachePagenames.size() + "�ӧ֨��T��");
				for (final String packname : cachePagenames) {
					// ���o�o�ǮM�ε{�����ϥܡA�W�١A�i�{�b�ɭ��W�C
					View child = View.inflate(getApplicationContext(),
							R.layout.cache_item, null);
					// ��child�n���@�Ӻ�ť���C
					child.setOnClickListener(new OnClickListener() {
						// �I��child���T�����I���ƥ�
						@Override
						public void onClick(View v) {
							// �P�_SDK��������
							if (Build.VERSION.SDK_INT >= 9) {
								// ���D�ܡ��M�z�֨������ɭ��]�i�H�z�L�G�]�w-->�M�ε{��-->�I�����N�M�ε{���᪺�ɭ��^
								Intent intent = new Intent();
								intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
								intent.addCategory(Intent.CATEGORY_DEFAULT);
								intent.setData(Uri.parse("package:" + packname));
								startActivity(intent);
							} else {
								Intent intent = new Intent();
								intent.setAction("android.intent.action.VIEW");
								intent.addCategory(Intent.CATEGORY_DEFAULT);
								intent.addCategory("android.intent.category.VOICE_LAUNCH");
								intent.putExtra("pkg", packname);
								startActivity(intent);
							}
						}
					});
					// ��child��������]�w���
					ImageView iv_icon = (ImageView) child
							.findViewById(R.id.iv_cache_icon);
					iv_icon.setImageDrawable(getApplicationIcon(packname));
					TextView tv_name = (TextView) child
							.findViewById(R.id.tv_cache_name);
					tv_name.setText(getApplicationName(packname));
					TextView tv_size = (TextView) child
							.findViewById(R.id.tv_cache_size);
					tv_size.setText("�֨��j�p :"
							+ Formatter.formatFileSize(getApplicationContext(),
									cacheinfo.get(packname)));
					// �Nchild�s�W��ll_clean����W�C
					ll_clean.addView(child);
				}
				super.onPostExecute(result);
			}

			@Override
			protected void onProgressUpdate(Integer... values) {
				pd.setProgress(values[0]);
				tv_clean_cache_status.setText("���b���y" + values[0] + "����");
				super.onProgressUpdate(values);
			}
		}.execute();

	}

	// �z�L�Ϯg���Ҧ��I�spackageManager������k
	private void getSize(PackageManager pm, String packname) {

		try {
			// ���o��getPackageSizeInfo�C�I�sgetPackageSizeInfo��k�ݭn�b�M���ɮפ��պA�v���T���G<uses-permission
			// android:name="android.permission.GET_PACKAGE_SIZE"/>
			Method method = pm.getClass().getDeclaredMethod(
					"getPackageSizeInfo",
					new Class[] { String.class, IPackageStatsObserver.class });
			// ����getPackageSizeInfo��k
			method.invoke(pm,
					new Object[] { packname, new MyObersver(packname) });
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// ����packageManager����getPackageSizeInfo��k�ɻݭn�ǤJIPackageStatsObserver.Stub���f�A�ӱ��f�z�Laidl�I�s�C
	private class MyObersver extends IPackageStatsObserver.Stub {
		private String packname;

		public MyObersver(String packname) {
			this.packname = packname;
		}

		@Override
		public void onGetStatsCompleted(PackageStats pStats, boolean succeeded)
				throws RemoteException {
			// �H�U�O�ھ�ApplicationsState�{���X����SizeInfo���󤤩w�q��
			// �֨��j�p
			long cacheSize = pStats.cacheSize;
			// �{���X�j�p
			long codeSize = pStats.codeSize;
			// ��ƪ��j�p
			long dataSize = pStats.dataSize;
			// �P�_�o�ӮM��W�ٹ������M�ε{���O�_���֨��A�Y�G���A�h�s�J�춰�X���C
			if (cacheSize > 0) {
				cachePagenames.add(packname);
				cacheinfo.put(packname, cacheSize);
			}
		}
	}

	// ���o��M�ε{�����W��
	private String getApplicationName(String packname) {
		try {
			PackageInfo packinfo = pm.getPackageInfo(packname, 0);
			return packinfo.applicationInfo.loadLabel(pm).toString();
		} catch (Exception e) {
			e.printStackTrace();
			return packname;
		}
	}

	// ���o��M�ε{�����ϥ�
	private Drawable getApplicationIcon(String packname) {
		try {
			PackageInfo packinfo = pm.getPackageInfo(packname, 0);
			return packinfo.applicationInfo.loadIcon(pm);

		} catch (Exception e) {
			e.printStackTrace();
			return getResources().getDrawable(R.drawable.ic_launcher);
		}
	}
}
