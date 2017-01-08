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
	// 顯示掃描的進度
	private ProgressBar pd;
	// 提示掃描的狀態
	private TextView tv_clean_cache_status;
	// 系統的包管理器
	private PackageManager pm;
	// 儲存帶有快取的套用的名稱
	private List<String> cachePagenames;
	// 顯示所有帶有快取的套用程式訊息
	private LinearLayout ll_clean;
	// 存放快取訊息
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

	// 掃描出帶有快取的套用程式
	private void scanPackages() {
		// 開啟一個異步工作掃描帶有快取的套用程式
		new AsyncTask<Void, Integer, Void>() {
			// 儲存手機中所有已安裝的套用程式的包訊息
			List<PackageInfo> packinfos;

			@Override
			protected Void doInBackground(Void... params) {
				int i = 0;
				for (PackageInfo info : packinfos) {
					// 取得到套用程式的套件名稱訊息
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
				tv_clean_cache_status.setText("開始掃描...");

				super.onPreExecute();
			}

			@Override
			protected void onPostExecute(Void result) {

				tv_clean_cache_status.setText("掃描完畢..." + "發現有"
						+ cachePagenames.size() + "個快取訊息");
				for (final String packname : cachePagenames) {
					// 取得這些套用程式的圖示，名稱，展現在界面上。
					View child = View.inflate(getApplicationContext(),
							R.layout.cache_item, null);
					// 為child登錄一個監聽器。
					child.setOnClickListener(new OnClickListener() {
						// 點擊child時響應的點擊事件
						@Override
						public void onClick(View v) {
							// 判斷SDK的版本號
							if (Build.VERSION.SDK_INT >= 9) {
								// 跳躍至“清理快取”的界面（可以透過：設定-->套用程式-->點擊任意套用程式後的界面）
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
					// 為child中的控制項設定資料
					ImageView iv_icon = (ImageView) child
							.findViewById(R.id.iv_cache_icon);
					iv_icon.setImageDrawable(getApplicationIcon(packname));
					TextView tv_name = (TextView) child
							.findViewById(R.id.tv_cache_name);
					tv_name.setText(getApplicationName(packname));
					TextView tv_size = (TextView) child
							.findViewById(R.id.tv_cache_size);
					tv_size.setText("快取大小 :"
							+ Formatter.formatFileSize(getApplicationContext(),
									cacheinfo.get(packname)));
					// 將child新增到ll_clean控制項上。
					ll_clean.addView(child);
				}
				super.onPostExecute(result);
			}

			@Override
			protected void onProgressUpdate(Integer... values) {
				pd.setProgress(values[0]);
				tv_clean_cache_status.setText("正在掃描" + values[0] + "項目");
				super.onProgressUpdate(values);
			}
		}.execute();

	}

	// 透過反射的模式呼叫packageManager中的方法
	private void getSize(PackageManager pm, String packname) {

		try {
			// 取得到getPackageSizeInfo。呼叫getPackageSizeInfo方法需要在清單檔案中組態權限訊息：<uses-permission
			// android:name="android.permission.GET_PACKAGE_SIZE"/>
			Method method = pm.getClass().getDeclaredMethod(
					"getPackageSizeInfo",
					new Class[] { String.class, IPackageStatsObserver.class });
			// 執行getPackageSizeInfo方法
			method.invoke(pm,
					new Object[] { packname, new MyObersver(packname) });
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 執行packageManager中的getPackageSizeInfo方法時需要傳入IPackageStatsObserver.Stub接口，該接口透過aidl呼叫。
	private class MyObersver extends IPackageStatsObserver.Stub {
		private String packname;

		public MyObersver(String packname) {
			this.packname = packname;
		}

		@Override
		public void onGetStatsCompleted(PackageStats pStats, boolean succeeded)
				throws RemoteException {
			// 以下是根據ApplicationsState程式碼中的SizeInfo物件中定義的
			// 快取大小
			long cacheSize = pStats.cacheSize;
			// 程式碼大小
			long codeSize = pStats.codeSize;
			// 資料的大小
			long dataSize = pStats.dataSize;
			// 判斷這個套件名稱對應的套用程式是否有快取，若果有，則存入到集合中。
			if (cacheSize > 0) {
				cachePagenames.add(packname);
				cacheinfo.put(packname, cacheSize);
			}
		}
	}

	// 取得到套用程式的名稱
	private String getApplicationName(String packname) {
		try {
			PackageInfo packinfo = pm.getPackageInfo(packname, 0);
			return packinfo.applicationInfo.loadLabel(pm).toString();
		} catch (Exception e) {
			e.printStackTrace();
			return packname;
		}
	}

	// 取得到套用程式的圖示
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