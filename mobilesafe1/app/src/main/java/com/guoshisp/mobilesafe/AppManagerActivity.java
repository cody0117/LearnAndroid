package com.guoshisp.mobilesafe;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.os.StatFs;
import android.text.format.Formatter;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.ScaleAnimation;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.widget.Toast;

import com.guoshisp.mobilesafe.domain.AppInfo;
import com.guoshisp.mobilesafe.engine.AppInfoProvider;
import com.guoshisp.mobilesafe.utils.DensityUtil;

public class AppManagerActivity extends Activity implements OnClickListener{
	protected static final int LOAD_APP_FINSISH = 50;
	private static final String TAG = "AppManagerActivity";
	private TextView tv_appmanager_mem_avail;//顯示手機可用記憶體
	private TextView tv_appmanager_sd_avail;//顯示Sdcard可用記憶體
	private ListView lv_appmanager;//展示使用者程式、系統程式
	private LinearLayout ll_loading;//ProgressBar的父控制項，用於控制該控制項中的子控制項的顯示
	private PackageManager pm; // 相當於windows系統下面的程式管理器（可以取得手機中所有的套用程式）
	private List<AppInfo> appinfos;//存放手機中所有的套用程式（使用者程式+系統程式）
	private List<AppInfo> userappInfos;//存放使用者程式
	private List<AppInfo> systemappInfos;//存放系統程式
	//PopupWindow中contentView對應的三個控制項
	private LinearLayout ll_uninstall;//移除
	private LinearLayout ll_start;//啟動
	private LinearLayout ll_share;//分享

	private PopupWindow popupWindow;

	private String clickedpackname;
	//當套用程式在子執行緒中全部載入成功後，知會主軸程顯示資料
	private Handler handler = new Handler() {
		public void handleMessage(android.os.Message msg) {
			switch (msg.what) {
			case LOAD_APP_FINSISH:
				ll_loading.setVisibility(View.INVISIBLE);
				lv_appmanager.setAdapter(new AppManagerAdapter());
				break;
			}
		};
	};

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		setContentView(R.layout.app_manager);
		super.onCreate(savedInstanceState);
		tv_appmanager_mem_avail = (TextView) findViewById(R.id.tv_appmanager_mem_avail);
		tv_appmanager_sd_avail = (TextView) findViewById(R.id.tv_appmanager_sd_avail);
		ll_loading = (LinearLayout) findViewById(R.id.ll_appmanager_loading);
		lv_appmanager = (ListView) findViewById(R.id.lv_appmanager);
		tv_appmanager_sd_avail.setText("SD卡可用" + getAvailSDSize());
		tv_appmanager_mem_avail.setText("記憶體可用:" + getAvailROMSize());

		pm = getPackageManager();
		//載入所有套用程式的資料
		fillData();
		//為ListView設定點擊事件
		lv_appmanager.setOnItemClickListener(new OnItemClickListener() {

			public void onItemClick(AdapterView<?> parent, View view,
					int position, long id) {
				//當使用者點擊下一個Item時，需要關閉已經存在的PopupWindow
				dismissPopupWindow();
				//將佈局檔案轉成view，該view用於顯示PopupWindow中的內容
				View contentView = View.inflate(getApplicationContext(),
						R.layout.popup_item, null);
				//分別取得到PopupWindow窗體中的"移除、啟動、分享"控制項所對應的父控制項
				ll_uninstall = (LinearLayout) contentView
						.findViewById(R.id.ll_popup_uninstall);
				ll_start = (LinearLayout) contentView
						.findViewById(R.id.ll_popup_start);
				ll_share = (LinearLayout) contentView
						.findViewById(R.id.ll_popup_share);
				//為"移除、啟動、分享"設定點擊事件
				ll_share.setOnClickListener(AppManagerActivity.this);
				ll_start.setOnClickListener(AppManagerActivity.this);
				ll_uninstall.setOnClickListener(AppManagerActivity.this);
				//取得用於顯示PopupWindow內容的View的根佈局，這裡是要為該佈局設定動畫（相當於為PopupWindow設定動畫）
				LinearLayout ll_popup_container = (LinearLayout) contentView
						.findViewById(R.id.ll_popup_container);
				//設定一個縮放的動畫效果
				ScaleAnimation sa = new ScaleAnimation(0.0f, 1.0f, 0.0f, 1.0f);
				//設定動畫執行的時間
				sa.setDuration(300);
				//取得到目前Item的物件
				Object obj = lv_appmanager.getItemAtPosition(position);
				//當Item為系統套用時，此時為PopupWindow中的"移除"設定一個標示，在移除時判斷該標示，禁止移除系統套用
				if (obj instanceof AppInfo) {
					AppInfo appinfo = (AppInfo) obj;
					clickedpackname = appinfo.getPackname();
					if (appinfo.isUserapp()) {
						ll_uninstall.setTag(true);
					} else {
						ll_uninstall.setTag(false);
					}
				} else {
					return;
				}
				//取得到目前Item離頂部、底部的距離
				int top = view.getTop();
				int bottom = view.getBottom();            
				//建立PopupWindow窗體時必須要指定窗體的大小，否則不會顯示在界面上。參數一：窗體中用於顯示內容的viewContent，參數二、三：表示PopupWindow窗體的寬和高
				popupWindow = new PopupWindow(contentView, DensityUtil.dip2px(getApplicationContext(), 200), bottom - top
						+ DensityUtil.dip2px(getApplicationContext(), 20));
				// 注意:一定要給popwindow設定背景圖片或背景資源,若果不設定背景資源 , 動畫、 焦點的處理 都會產生問題。
				popupWindow.setBackgroundDrawable(new ColorDrawable(
						Color.TRANSPARENT));
				//取得到Item在窗體中顯示的位置
				int[] location = new int[2];
				view.getLocationInWindow(location);
				//參數一：PopupWindow掛載在那個View上，參數二：設定PopupWindow顯示的重心位置
				//參數三：PopupWindow在View上X軸的偏移量，參數四：PopupWindow在View上Y軸的偏移量。X、Y軸的偏移量是相對於目前Activity所在的窗體，參照點為（0，0）
				popupWindow.showAtLocation(view, Gravity.TOP | Gravity.LEFT,
						location[0] + 20, location[1]);
				// 播放一個縮放的動畫.
				ll_popup_container.startAnimation(sa);
			}
		});

		/**
		 * 當使用者滑動窗體的時候,需要關閉已經存在的PopupWindow
		 */
		lv_appmanager.setOnScrollListener(new OnScrollListener() {

			// 當listview的卷動狀態發生改變的時候 呼叫的方法.
			public void onScrollStateChanged(AbsListView view, int scrollState) {
			}

			// 當listview處於卷動狀態的時候 呼叫的方法
			public void onScroll(AbsListView view, int firstVisibleItem,
					int visibleItemCount, int totalItemCount) {
				   dismissPopupWindow();
			}
		});

	}

	/**	
	 * 將手機中的套用程式全部取得出來
	 */
	private void fillData() {
		//載入資料時，ll_loading控制項中的ProgressBar以及TextView對應的“正在載入資料...”顯示出來
		ll_loading.setVisibility(View.VISIBLE);
		new Thread() {
			public void run() {
				AppInfoProvider provider = new AppInfoProvider(
						AppManagerActivity.this);
				appinfos = provider.getInstalledApps();
				initAppInfo();
				//向主軸程傳送訊息
				Message msg = Message.obtain();
				msg.what = LOAD_APP_FINSISH;
				handler.sendMessage(msg);
			};

		}.start();
	}

	/**
	 * 起始化系統和使用者appinfos的集合
	 */
	protected void initAppInfo() {
		systemappInfos = new ArrayList<AppInfo>();
		userappInfos = new ArrayList<AppInfo>();
		for (AppInfo appinfo : appinfos) {
			//區分出使用者程式和系統程式
			if (appinfo.isUserapp()) {
				userappInfos.add(appinfo);
			} else {
				systemappInfos.add(appinfo);
			}
		}
	}
	/**
	 * 當Activity銷毀時，需要關閉PopupWindow，因為PopupWindow掛載有TextView，
	 * 若果不關閉該窗體的話，並不影響程式的執行，但Log中會出現"AppManagerActivity has leaked window"的紅色錯誤提示。
	 */
	@Override
	protected void onDestroy() {
		dismissPopupWindow();
		super.onDestroy();
	}

	//介面卡物件
	private class AppManagerAdapter extends BaseAdapter {
		//取得ListView中Item的資料
		public int getCount() {
			// 因為listview要多顯示兩個項目（使用者程式和系統程式）
			return userappInfos.size() + 1 + systemappInfos.size() + 1;
		}
		//取得到Item所對應的物件
		public Object getItem(int position) {
			//當position == 0則對應的是“使用者程式”項目
			if (position == 0) {
				return position;
			} else if (position <= userappInfos.size()) {//當position <= userappInfos.size()則對應的是手機中所有使用者程式項目
				// 要顯示的使用者程式的項目在集合中的位置（因為使用者程式對應的Item是從1開始的，而集合中的角標是從0開始的）
				int newpostion = position - 1;
				return userappInfos.get(newpostion);
			} else if (position == (userappInfos.size() + 1)) {//當position == (userappInfos.size() + 1)則對應的是“系統程式”項目
				return position;
			} else {//所有系統套用項目
				int newpostion = position - userappInfos.size() - 2;
				return systemappInfos.get(newpostion);
			}
		}
		//取得Item所對應的id
		public long getItemId(int position) {
			return position;
		}
		//將View顯示在Item上，每顯示一個Item，呼叫一次該方法
		public View getView(int position, View convertView, ViewGroup parent) {
			if (position == 0) {//當position == 0則對應的是“使用者程式”項目，我們建立出該項目對應的View
				TextView tv = new TextView(getApplicationContext());
				tv.setTextSize(20);
				tv.setText("使用者程式 (" + userappInfos.size() + ")");
				return tv;
			} else if (position <= userappInfos.size()) {//當position <= userappInfos.size()則對應的是手機中所有使用者程式項目
				// 要顯示的使用者程式的項目在集合中的位置（因為使用者程式對應的Item是從1開始的，而集合中的角標是從0開始的）
				int newpostion = position - 1;
				View view;
				ViewHolder holder;
				//復用歷史快取
				if (convertView == null || convertView instanceof TextView) {
					view = View.inflate(getApplicationContext(),
							R.layout.app_manager_item, null);
					holder = new ViewHolder();
					holder.iv_icon = (ImageView) view
							.findViewById(R.id.iv_appmanger_icon);
					holder.tv_name = (TextView) view
							.findViewById(R.id.tv_appmanager_appname);
					holder.tv_version = (TextView) view
							.findViewById(R.id.tv_appmanager_appversion);
					view.setTag(holder);
				} else {
					view = convertView;
					holder = (ViewHolder) view.getTag();
				}
				//為使用者套用程式調配資料
				AppInfo appInfo = userappInfos.get(newpostion); // 從使用者程式集合裡面取得資料的項目
				holder.iv_icon.setImageDrawable(appInfo.getAppicon());
				holder.tv_name.setText(appInfo.getAppname());
				holder.tv_version.setText("版本號:" + appInfo.getVersion());
				return view;

			} else if (position == (userappInfos.size() + 1)) {//當position == (userappInfos.size() + 1)則對應的是“系統程式”項目
				TextView tv = new TextView(getApplicationContext());
				tv.setTextSize(20);
				tv.setText("系統程式 (" + systemappInfos.size() + ")");
				return tv;
			} else {//所有系統套用的Item
				int newpostion = position - userappInfos.size() - 2;
				View view;
				ViewHolder holder;
				if (convertView == null || convertView instanceof TextView) {
					view = View.inflate(getApplicationContext(),
							R.layout.app_manager_item, null);
					holder = new ViewHolder();
					holder.iv_icon = (ImageView) view
							.findViewById(R.id.iv_appmanger_icon);
					holder.tv_name = (TextView) view
							.findViewById(R.id.tv_appmanager_appname);
					holder.tv_version = (TextView) view
							.findViewById(R.id.tv_appmanager_appversion);
					view.setTag(holder);
				} else {
					view = convertView;
					holder = (ViewHolder) view.getTag();
				}
				//為系統套用程式調配資料
				AppInfo appInfo = systemappInfos.get(newpostion); // 從系統程式集合裡面取得資料的項目
				holder.iv_icon.setImageDrawable(appInfo.getAppicon());
				holder.tv_name.setText(appInfo.getAppname());
				holder.tv_version.setText("版本號:" + appInfo.getVersion());
				return view;

			}
		}

		/**
		 * 屏蔽掉兩個TextView（使用者程式和系統程式）被點擊時的焦點
		 */
		@Override
		public boolean isEnabled(int position) {
			if (position == 0 || position == (userappInfos.size() + 1)) {
				return false;
			}
			return super.isEnabled(position);
		}
	}
	//將Item中的控制項使用static修飾，被static修飾的類別的位元組碼在JVM中只會存在一份。iv_icon，tv_name與tv_version在堆疊中也會只存在一份
	private static class ViewHolder {
		ImageView iv_icon;
		TextView tv_name;
		TextView tv_version;
	}

	/**
	 * 取得sd卡可用的記憶體大小
	 * 
	 * @return
	 */
	private String getAvailSDSize() {
		//取得Sdcard根目錄所在的檔案物件
		File path = Environment.getExternalStorageDirectory();
		//狀態空間物件
		StatFs stat = new StatFs(path.getPath());
		// 取得Sdcard卡中有多少塊分區（整個Sdcard的空間被分為多塊）
		long totalBlocks = stat.getBlockCount();
		// 取得Sdcard卡可用的分區數量
		long availableBlocks = stat.getAvailableBlocks();
		// 取得Sdcard卡每一塊分區可以存放的byte數量
		long blockSize = stat.getBlockSize();
		//計算中整體byte
		long availSDsize = availableBlocks * blockSize;
		//借助Formatter來將其轉為M
		return Formatter.formatFileSize(this, availSDsize);
	}

	/**
	 * 取得手機剩余可用的記憶體空間
	 * 
	 * @return
	 */
	private String getAvailROMSize() {
		File path = Environment.getDataDirectory();
		StatFs stat = new StatFs(path.getPath());
		long blockSize = stat.getBlockSize();
		long availableBlocks = stat.getAvailableBlocks();
		return Formatter.formatFileSize(this, availableBlocks * blockSize);
	}
	/**
	 * 當使用者在界面上點擊下一個Item時，要關閉上一個PopupWindow
	 */
	private void dismissPopupWindow() {
		if (popupWindow != null && popupWindow.isShowing()) {
			popupWindow.dismiss();
			popupWindow = null;
		}
	}
	/**
	 * PopupWindow中的點擊事件
	 */
	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.ll_popup_share:
			Log.i(TAG, "分享");
			shareApplication();
			break;

		case R.id.ll_popup_start:
			Log.i(TAG, "開啟");
			startAppliction();

			break;
		case R.id.ll_popup_uninstall:
			//取得到Item為“ll_popup_uninstall”設定的標示
			boolean result = (Boolean) v.getTag();
			//禁止移除系統套用
			if (result) {
				Log.i(TAG, "移除" + clickedpackname);
				uninstallApplication();
			}else{
				Toast.makeText(this, "系統套用不能被移除", 1).show();
			}
			break;
		}

	}

	/**
	 * 分享一個套用程式
	 */
	private void shareApplication() {
        /*<intent-filter>
        <action android:name="android.intent.action.SEND" />
        <category android:name="android.intent.category.DEFAULT" />
        <data android:mimeType="text/plain" />
        </intent-filter>*/
		Intent intent = new Intent();
		//透過意圖的的動作、型態來啟動手機中具有分享功能的套用（簡訊，網際網路...），這寫具有分享功能的套用會以清單的格式展現出來
		intent.setAction("android.intent.action.SEND");
		intent.addCategory("android.intent.category.DEFAULT");
		//輸入的內容為文字型態
		intent.setType("text/plain");
		//設定分享的標題
		intent.putExtra("subject", "分享的標題");
		//設定分享的預設內容
		intent.putExtra("sms_body", "推薦你使用一款軟體"+clickedpackname);
		intent.putExtra(Intent.EXTRA_TEXT, "extra_text");
		startActivity(intent);
	}

	/**
	 * 移除一個套用程式
	 */
	private void uninstallApplication() {
		
		/* * <intent-filter> <action android:name="android.intent.action.VIEW" />
		 * <action android:name="android.intent.action.DELETE" /> <category
		 * android:name="android.intent.category.DEFAULT" /> <data
		 * android:scheme="package" /> </intent-filter>*/
		 
		dismissPopupWindow();
		Intent intent = new Intent();
		intent.setAction("android.intent.action.DELETE");
		intent.addCategory("android.intent.category.DEFAULT");
		intent.setData(Uri.parse("package:" + clickedpackname));
		//移除一個套用程式後，對應的Sdcard或記憶體會發生變化，此時我們應當更新該訊息。並且需要將移除的套用從清單中移除
		startActivityForResult(intent, 1);
	}
	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		if (requestCode == 1) {
			// 知會界面更新資料.
			fillData();
			tv_appmanager_sd_avail.setText("SD卡可用" + getAvailSDSize());
			tv_appmanager_mem_avail.setText("記憶體可用:" + getAvailROMSize());
		}
		super.onActivityResult(requestCode, resultCode, data);
	}

	/**
	 * 開啟一個套用程式
	 */
	private void startAppliction() {
		dismissPopupWindow();
		Intent intent = new Intent();
		PackageInfo packinfo;
		try {
			//PackageManager.GET_ACTIVITIES告訴包管理者，在解析清單檔案時，只解析Activity對應的節點
			packinfo = pm.getPackageInfo(clickedpackname,
					PackageManager.GET_ACTIVITIES);

			ActivityInfo[] activityinfos = packinfo.activities;
			//判斷清單檔案中是否存在Activity對應的節點
			if (activityinfos != null && activityinfos.length > 0) {
				//啟動清單檔案中的第一個Activity節點
				String className = activityinfos[0].name;
				intent.setClassName(clickedpackname, className);
				startActivity(intent);
			} else {
				Toast.makeText(this, "不能啟動目前套用", 0).show();
			}
		} catch (NameNotFoundException e) {//使用C語系實現的套用程式，在DDMS中沒有對應的套件名稱
			e.printStackTrace();
			Toast.makeText(this, "不能啟動目前套用", 0).show();
		}
	}
	/**
	 * 取得具有啟動屬性的intent 系統桌面套用(luncher)
	 */
	public Intent getIntent() {
		Intent intent = new Intent();
		intent.setAction("android.intent.action.MAIN");
		intent.addCategory("android.intent.category.LAUNCHER");
		List<ResolveInfo> resoveInfo = pm.queryIntentActivities(intent,
				PackageManager.GET_INTENT_FILTERS
						| PackageManager.MATCH_DEFAULT_ONLY);
		for (ResolveInfo info : resoveInfo) {
			// info.activityInfo.packageName;
		}
		return null;
	}
}
