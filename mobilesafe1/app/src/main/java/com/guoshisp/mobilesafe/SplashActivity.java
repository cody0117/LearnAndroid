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
				Toast.makeText(getApplicationContext(), "xml解析錯誤", 1).show();
				loadMainUI();
				break;
			case IO_ERROR:
				Toast.makeText(getApplicationContext(), "I/O錯誤", 1).show();
				loadMainUI();
				break;
			case PROTOCOL_ERROR:
				Toast.makeText(getApplicationContext(), "協定不支援", 1).show();
				loadMainUI();
				break;
			case SERVER_URL_ERROR:
				Toast.makeText(getApplicationContext(), "伺服器路徑不正確", 1).show();
				loadMainUI();
				break;
			case SERVER_ERROR:
				Toast.makeText(getApplicationContext(), "伺服器內定例外", 1).show();
				loadMainUI();
				break;
			case GET_INFO_SUCCESS:
				String serverversion = info.getVersion();
				String currentversion = getVersion();
				if (currentversion.equals(serverversion)) {
					Log.i(TAG, "版本號相同進入主界面");
					loadMainUI();
				} else {
					Log.i(TAG, "版本號不相同,陞級交談視窗");
					showUpdateDialog();
				}
				break;

			case DOWNLOAD_SUCCESS:
				Log.i(TAG, "檔案下載成功");
				File file = (File) msg.obj;
				installApk(file);
				break;
			case DOWNLOAD_ERROR:
				Toast.makeText(getApplicationContext(), "下載資料例外", 1).show();
				loadMainUI();
				break;
			}
		};
	};

	/**
	 * 載入主界面
	 */
	private void loadMainUI() {
		Intent intent = new Intent(this, MainActivity.class);
		startActivity(intent);
		finish();// 把目前的Activity從工作堆疊裡面移除
	}

	/**
	 * 安裝一個apk檔案
	 * 
	 * @param file
	 *            要安裝的完整檔名
	 */
	protected void installApk(File file) {
		// 隱式意圖
		Intent intent = new Intent();
		intent.setAction("android.intent.action.VIEW");// 設定意圖的動作
		intent.addCategory("android.intent.category.DEFAULT");// 為意圖加入額外的資料
		// intent.setType("application/vnd.android.package-archive");
		// intent.setData(Uri.fromFile(file));
		intent.setDataAndType(Uri.fromFile(file),
				"application/vnd.android.package-archive");// 設定意圖的資料與型態
		startActivity(intent);// 啟動該意圖
	}

	/**
	 * 顯示陞級提示的交談視窗
	 */
	protected void showUpdateDialog() {
		// 建立了交談視窗的建構器
		AlertDialog.Builder builder = new Builder(this);
		// 設定交談視窗的提示內容
		builder.setIcon(getResources().getDrawable(R.drawable.notification));
		// 設定陞級標題
		builder.setTitle("陞級提示");
		// 設定陞級提示內容
		builder.setMessage(info.getDescription());
		// 建立下載進度指示器
		pd = new ProgressDialog(SplashActivity.this);
		// 設定進度指示器在顯示時的提示訊息
		pd.setMessage("正在下載");
		// 指定顯示下載進度指示器為水平形狀
		pd.setProgressStyle(ProgressDialog.STYLE_HORIZONTAL);
		// 設定陞級按鈕
		builder.setPositiveButton("陞級", new OnClickListener() {

			public void onClick(DialogInterface dialog, int which) {
				Log.i(TAG, "陞級,下載" + info.getApkurl());
				// 判斷Sdcard是否可用
				if (Environment.MEDIA_MOUNTED.equals(Environment
						.getExternalStorageState())) {
					pd.show();// 顯示下載進度指示器
					// 開啟子執行緒下載apk
					new Thread() {

						public void run() {
							// 取得服務端新版本apk的下載位址
							String path = info.getApkurl();
							// 取得最新apk的檔名
							String filename = DownLoadUtil.getFilename(path);
							// 在Sdcard的根目錄上建立一個檔案。第一個參數是用於取得Sdcard的根目錄，第二個參數是在Sdcard的根目錄上建立的檔案的檔名
							File file = new File(Environment
									.getExternalStorageDirectory(), filename);
							// 得到下載後的apk的完整名稱
							file = DownLoadUtil.getFile(path,
									file.getAbsolutePath(), pd);
							if (file != null) {
								// 向主軸程傳送訊息下載成功的訊息
								Message msg = Message.obtain();
								msg.what = DOWNLOAD_SUCCESS;
								msg.obj = file;
								handler.sendMessage(msg);
							} else {
								// 向主軸程傳送訊息下載失敗的訊息
								Message msg = Message.obtain();
								msg.what = DOWNLOAD_ERROR;
								handler.sendMessage(msg);
							}
							pd.dismiss();// 下載結束後，將下載的進度指示器關閉掉
						};
					}.start();
				} else {
					Toast.makeText(getApplicationContext(), "sd卡不可用", 1).show();
					loadMainUI();// 進入程式主界面
				}
			}
		});
		builder.setNegativeButton("取消", new OnClickListener() {

			public void onClick(DialogInterface dialog, int which) {
				loadMainUI();
			}
		});
		builder.create().show();
	}

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		// 設定為未命名欄
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		// 設定為全螢幕模式
		getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
				WindowManager.LayoutParams.FLAG_FULLSCREEN);

		setContentView(R.layout.activity_splash);
		rl_splash = (RelativeLayout) findViewById(R.id.rl_splash);
		tv_splash_version = (TextView) findViewById(R.id.tv_splash_version);
		tv_splash_version.setText("版本號:" + getVersion());

		AlphaAnimation aa = new AlphaAnimation(0.3f, 1.0f);
		aa.setDuration(2000);
		rl_splash.startAnimation(aa);

		// 1.連線伺服器取得伺服器上的組態訊息.
		new Thread(new CheckVersionTask()) {
		}.start();
		//覆制病毒庫的資料庫檔案
		new Thread() {
			public void run() {
				File file = new File(getFilesDir(), "antivirus.db");
				if (file.exists() && file.length() > 0) {//資料庫檔案已經覆制成功

				} else {
					AssetCopyUtil.copy1(getApplicationContext(),
							"antivirus.db", file.getAbsolutePath(), null);
				}
			};

		}.start();
	}

	/**
	 * 連網檢查套用的版本號與服務端上的版本號是否相同
	 * 
	 * @author Administrator
	 * 
	 */
	private class CheckVersionTask implements Runnable {

		public void run() {
			// 取得Sdcard下的config.xml檔案，若果該檔案不存在，那麼將會自動建立該檔案
			SharedPreferences sp = getSharedPreferences("config", MODE_PRIVATE);
			// 由sp物件來取得autoupdate所對應的boolean值，若果該鍵不存在，預設傳回true
			boolean autoupdate = sp.getBoolean("autoupdate", true);
			// 自動更新沒有開啟
			if (!autoupdate) {
				try {
					// 睡眠2秒鍾的是為了播放動畫
					Thread.sleep(2000);
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				// 睡眠2秒鍾播放動畫完畢後進入程式主界面
				loadMainUI();
			}
			startTime = System.currentTimeMillis();
			Message msg = Message.obtain();
			try {
				// 取得服務端的組態訊息的連線位址
				String serverurl = getResources().getString(R.string.serverurl);
				URL url = new URL(serverurl);
				HttpURLConnection conn = (HttpURLConnection) url
						.openConnection();
				conn.setRequestMethod("GET");// 設定請求模式
				conn.setConnectTimeout(5000);
				int code = conn.getResponseCode();// 取得響應碼
				if (code == 200) {// 響應碼為200時，表示與服務端連線成功
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
					// 伺服器狀態錯誤.
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
	 * 取得目前套用程式的版本號。 版本號存在於我們的APK中對應的清單檔案中（直接解壓APK後，即可看到對應的清單檔案），
	 * 版本號是manifest節點中的android:versionName="1.0" 當一個套用程式被裝到手機後
	 * ，該apk覆制到手機的data/app目錄下（也就是系統中），如圖6。所以想得到版本號，我們需要拿到與系統關聯的服務，就可以得到apk中的訊息了
	 * 
	 * @return
	 */
	private String getVersion() {
		// 得到系統的包管理器。已經得到了apk的面對物件的包裝
		PackageManager pm = this.getPackageManager();
		try {
			// 參數一：目前套用程式的套件名稱 參數二：可選的附加訊息，這裡我們用不到 ，可以定義為0
			PackageInfo info = pm.getPackageInfo(getPackageName(), 0);
			// 傳回目前套用程式的版本號
			return info.versionName;
		} catch (Exception e) {// 套件名稱找不到的例外，理論上， 該例外不可能會發生
			e.printStackTrace();
			return "";
		}
	}
}
