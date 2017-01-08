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
	// 查殺病毒時，雷達上的掃描指標
	private ImageView iv_scan;
	// 套用程式包管理器
	private PackageManager pm;
	// 動作資料庫的物件
	private AntiVirusDao dao;
	// 掃描進度指示器
	private ProgressBar progressBar1;
	// 顯示發現的病毒數目
	private TextView tv_scan_status;
	// 顯示掃描的程式訊息
	private LinearLayout ll_scan_status;
	// 用於加入掃描到的病毒訊息
	private List<PackageInfo> virusPackInfos;
	// 旋轉動畫
	RotateAnimation ra;
	// 存放病毒的集合
	private Map<String, String> virusMap;
	// 用於與子執行緒通訊，更新主軸程（UI執行緒）
	private Handler handler = new Handler() {
		public void handleMessage(android.os.Message msg) {
			PackageInfo info = (PackageInfo) msg.obj;
			switch (msg.what) {
			case SCAN_NOT_VIRUS:// 沒有找到病毒
				TextView tv = new TextView(getApplicationContext());
				tv.setText("掃描" + info.applicationInfo.loadLabel(pm) + " 安全");
				ll_scan_status.addView(tv, 0);// 新增到ll_scan_info控制項的最上面
				break;
			case FIND_VIRUS:// 發現病毒
				// 將病毒新增到集合中
				virusPackInfos.add(info);
				break;
			case SCAN_FINISH:// 掃描完成
				// 停止動畫的播放
				iv_scan.clearAnimation();
				// 判斷病毒集合的大小
				if (virusPackInfos.size() == 0) {
					Toast.makeText(getApplicationContext(), "掃描完畢,你的手機很安全", 0)
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
		// 設定一個旋轉的動畫
		ra = new RotateAnimation(0, 360, Animation.RELATIVE_TO_SELF, 1.0f,
				Animation.RELATIVE_TO_SELF, 1.0f);
		ra.setDuration(1000);
		// 設定旋轉的重復次數（一直旋轉）
		ra.setRepeatCount(Animation.INFINITE);
		// 設定旋轉的模式（旋轉一個回合後，重新旋轉）
		ra.setRepeatMode(Animation.RESTART);
		ll_scan_status = (LinearLayout) findViewById(R.id.ll_scan_status);
		progressBar1 = (ProgressBar) findViewById(R.id.progressBar1);
	}

	public void kill(View v) {
		// 重設動畫
		ra.reset();
		// 啟動動畫
		iv_scan.startAnimation(ra);
		// 開啟一短函執行緒，檢查手機中各個套用的簽名訊息
		new Thread() {
			public void run() {
				// PackageManager.GET_SIGNATURES套用程式的簽名訊息
				List<PackageInfo> packinfos = pm
						.getInstalledPackages(PackageManager.GET_SIGNATURES);
				progressBar1.setMax(packinfos.size());
				// 計數目前已經檢查了多少條套用程式，以顯示查殺的進度
				int count = 0;
				// 檢查出各個套用程式對應的簽名訊息
				for (PackageInfo info : packinfos) {
					// 將套用程式的簽名訊息轉成MD5值，用於與病毒資料庫比對
					String md5 = Md5Encoder.encode(info.signatures[0]
							.toCharsString());
					// 在病毒資料庫中查詢該MD5值，來判斷該套用程式是否資料病毒
					String result = dao.getVirusInfo(md5);
					// 若果查詢的結果為null，則表示目前檢查的套用不是病毒
					if (result == null) {
						Message msg = Message.obtain();
						msg.what = SCAN_NOT_VIRUS;
						msg.obj = info;
						handler.sendMessage(msg);
					} else {//目前檢查到的套用屬於病毒
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
				// 檢查結束
				Message msg = Message.obtain();
				msg.what = SCAN_FINISH;
				handler.sendMessage(msg);

			};
		}.start();

	}

	// "一鍵清理"按鈕
	public void clean(View v) {
		// 判斷病毒集合的大小
		if (virusPackInfos.size() > 0) {
			for (PackageInfo pinfo : virusPackInfos) {
				// 移除套用程式
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