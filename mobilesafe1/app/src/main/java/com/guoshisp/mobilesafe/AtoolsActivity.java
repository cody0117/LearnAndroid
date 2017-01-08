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
	private TextView tv_atools_address_query;// 當點擊該項目時，要執行覆制號碼歸屬地訊息的資料庫檔案
	private TextView tv_atools_common_num;// 常用號碼
	private TextView tv_atools_applock;//程式鎖
	private ProgressDialog pd;// 覆制資料庫時要顯示的進度指示器
	// 覆制資料庫是一個相對耗時的動作，覆制完成後，給主軸程傳送訊息
	private Handler handler = new Handler() {
		public void handleMessage(android.os.Message msg) {
			// 無論覆制是否成功，都需要關閉進度顯示條
			pd.dismiss();
			switch (msg.what) {
			case COPY_SUCCESS:
				// 覆制資料庫成功後，進入號碼歸屬地查詢的界面
				loadQueryUI();
				break;
			case COPY_COMMON_NUMBER_SUCCESS:
				//覆制資料庫成功後，進入常用號碼顯示的界面
				loadCommNumUI();
				break;
			case COPY_FAILED:
				Toast.makeText(getApplicationContext(), "覆制資料失敗", 0).show();
				break;
			}
		};
	};

	@Override
	protected void onCreate(Bundle savedInstanceState) {

		super.onCreate(savedInstanceState);
		setContentView(R.layout.atools);// 進階工具對應的界面
		tv_atools_address_query = (TextView) findViewById(R.id.tv_atools_address_query);
		tv_atools_address_query.setOnClickListener(this);
		pd = new ProgressDialog(this);
		tv_atools_common_num = (TextView) findViewById(R.id.tv_atools_common_num);
		tv_atools_common_num.setOnClickListener(this);
		tv_atools_applock = (TextView)findViewById(R.id.tv_atools_applock);
		tv_atools_applock.setOnClickListener(this);
		// 設定進度指示器顯示的風格
		pd.setProgressStyle(ProgressDialog.STYLE_HORIZONTAL);
	}

	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.tv_atools_address_query:// 號碼歸屬地查詢
			// 建立出資料庫要覆制到的系統檔案：data\data\套件名稱\files\address.db
			final File file = new File(getFilesDir(), "address.db");
			// 判斷資料庫是否存在，若果存在，則直接進入號碼歸屬地的查詢界面，否則，執行覆制動作
			if (file.exists() && file.length() > 0) {
				// 資料庫檔案覆制成功，進入查詢號碼歸屬地界面
				loadQueryUI();
			} else {
				// 資料庫的覆制.開始覆制時需要開始顯示進度指示器
				pd.show();
				// 覆制資料庫也是一個相對耗時的動作，在子執行緒中執行該動作
				new Thread() {
					public void run() {
						AssetCopyUtil asu = new AssetCopyUtil(
								getApplicationContext());
						// 傳回覆制成功與否的結果
						boolean result = asu.copyFile("naddress.db", file, pd);
						if (result) {// 覆制成功
							Message msg = Message.obtain();
							msg.what = COPY_SUCCESS;
							handler.sendMessage(msg);
						} else {// 覆制失敗
							Message msg = Message.obtain();
							msg.what = COPY_FAILED;
							handler.sendMessage(msg);
						}
					};
				}.start();
			}
			break;
		case R.id.tv_atools_common_num:// 公用號碼查詢
			// 判讀資料庫是否已經覆制到系統目錄（ data/data/套件名稱/files/address.db）
			final File commonnumberfile = new File(getFilesDir(),
					"commonnum.db");
			if (commonnumberfile.exists() && commonnumberfile.length() > 0) {
				loadCommNumUI();// 進入公共號碼的顯示界面
			} else {
				// 資料庫的覆制.
				pd.show();
				// 覆制資料庫是一個相對耗時的工作，我們為其開啟一個子執行緒
				new Thread() {
					public void run() {
						// 將資料庫覆制到手機系統中
						AssetCopyUtil asu = new AssetCopyUtil(
								getApplicationContext());
						boolean result = asu.copyFile("commonnum.db",
								commonnumberfile, pd);
						if (result) {// 覆制成功
							Message msg = Message.obtain();
							msg.what = COPY_COMMON_NUMBER_SUCCESS;
							handler.sendMessage(msg);
						} else {// 覆制失敗
							Message msg = Message.obtain();
							msg.what = COPY_FAILED;
							handler.sendMessage(msg);
						}
					};
				}.start();
			}
			break;
		case R.id.tv_atools_applock://程式鎖
			Intent applockIntent = new Intent(this,AppLockActivity.class);
			startActivity(applockIntent);
			break;
		}
	}

	/**
	 * 進入常用號碼界面
	 */
	private void loadCommNumUI() {
		Intent intent = new Intent(this, CommonNumActivity.class);
		startActivity(intent);
	}

	/**
	 * 進入到號碼歸屬地查詢界面
	 */
	private void loadQueryUI() {
		Intent intent = new Intent(this, NumberQueryActivity.class);
		startActivity(intent);
	}
}
