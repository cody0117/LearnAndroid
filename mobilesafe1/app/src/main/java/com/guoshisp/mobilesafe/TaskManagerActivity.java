package com.guoshisp.mobilesafe;

import java.util.ArrayList;
import java.util.List;

import android.app.Activity;
import android.app.ActivityManager;
import android.graphics.Color;
import android.os.Bundle;
import android.text.format.Formatter;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;

import com.guoshisp.mobilesafe.domain.ProcessInfo;
import com.guoshisp.mobilesafe.engine.ProcessInfoProvider;
import com.guoshisp.mobilesafe.view.MyToast;

public class TaskManagerActivity extends Activity implements OnClickListener {
	// 顯示使用者執行緒
	private ListView lv1;
	// 顯示系統執行緒
	private ListView lv2;
	// 判斷目前顯示的清單是使用者執行緒還是系統執行緒
	private boolean showUserApp;
	// 切換使用者執行緒和系統執行緒的按鈕（用於響應“全選”與“一鍵清理”按鈕時：判斷是使用者執行緒，還是系統執行緒）
	private Button bt_user, bt_system;
	// 使用者執行緒所在清單的介面卡
	private UserAdapter useradapter;
	// 系統執行緒所在清單的介面卡
	private SystemAdapter systemadapter;
	// 用於取得手機中的執行緒
	private ProcessInfoProvider provider;
	// 為系統執行緒加入的一個Item，該Item上顯示“殺死系統執行緒會導致系統不穩定”文字。
	private TextView tvheader;
	// 存放使用者執行緒的集合
	private List<ProcessInfo> userProcessInfos;
	// 存放系統執行緒的集合
	private List<ProcessInfo> systemProcessInfos;

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.task_manager);
		// 預設情況下，顯示的是使用者執行緒清單
		showUserApp = true;
		provider = new ProcessInfoProvider(this);
		userProcessInfos = new ArrayList<ProcessInfo>();
		systemProcessInfos = new ArrayList<ProcessInfo>();
		// 透過provider來取得手機中的所有執行緒
		List<ProcessInfo> mRunningProcessInfos = provider.getProcessInfos();
		// 將取得到的所有執行緒進行分類別儲存（使用者執行緒和系統執行緒）
		for (ProcessInfo info : mRunningProcessInfos) {
			if (info.isUserprocess()) {
				userProcessInfos.add(info);
			} else {
				systemProcessInfos.add(info);
			}
		}
		// 使用者執行緒對應的ListView及設定ListView的點擊事件
		lv1 = (ListView) findViewById(R.id.lv_usertask);
		lv1.setOnItemClickListener(new OnItemClickListener() {

			public void onItemClick(AdapterView<?> parent, View view,
					int position, long id) {
				CheckBox cb = (CheckBox) view.findViewById(R.id.cb_taskmanager);
				// 取得到被點擊的Item物件
				ProcessInfo info = (ProcessInfo) lv1
						.getItemAtPosition(position);
				// 判斷被點擊的Item是否是我們自己的手機安全衛士項目（我們不容許殺死自己的套用程式）
				if (info.getPackname().equals(getPackageName())) {
					return;
				}
				// 手動的設定Checkbox的狀態
				if (info.isChecked()) {
					info.setChecked(false);
					cb.setChecked(false);
				} else {
					info.setChecked(true);
					cb.setChecked(true);
				}

			}
		});
		// 系統執行緒對應的ListView及設定ListView的點擊事件
		lv2 = (ListView) findViewById(R.id.lv_systemtask);
		lv2.setOnItemClickListener(new OnItemClickListener() {
			public void onItemClick(AdapterView<?> parent, View view,
					int position, long id) {
				// 禁止 響應系統執行緒中的第一個Item的點擊事件
				if (view instanceof TextView) {
					return;
				}
				CheckBox cb = (CheckBox) view.findViewById(R.id.cb_taskmanager);
				// 取得到被點擊的Item物件
				ProcessInfo info = (ProcessInfo) lv2
						.getItemAtPosition(position);
				// 手動的設定Checkbox的狀態
				if (info.isChecked()) {
					info.setChecked(false);
					cb.setChecked(false);
				} else {
					info.setChecked(true);
					cb.setChecked(true);
				}
			}
		});
		// 為“使用者執行緒”按鈕登錄一個監聽器
		bt_user = (Button) findViewById(R.id.bt_user);
		bt_user.setOnClickListener(this);
		bt_user.setBackgroundDrawable(getResources().getDrawable(
				R.drawable.bt_pressed));
		// 為“系統執行緒”按鈕登錄一個監聽器
		bt_system = (Button) findViewById(R.id.bt_system);
		bt_system.setOnClickListener(this);
		bt_system.setBackgroundDrawable(getResources().getDrawable(
				R.drawable.bg_normal));
		// 預設情況下顯示的是使用者執行緒清單，所以我們應當將系統執行緒清單設定為不可見。View.GONE：View無效，且不佔用空間
		lv2.setVisibility(View.GONE);
		// 為使用者執行緒清單設定資料介面卡
		useradapter = new UserAdapter();
		lv1.setAdapter(useradapter);
		// 將該TextView做為系統執行緒對應的ListView的第一個Item
		tvheader = new TextView(getApplicationContext());
		tvheader.setText("殺死系統執行緒會導致系統不穩定");
		tvheader.setBackgroundColor(Color.YELLOW);
		// 將tvheader新增到系統執行緒對應的ListView中，此時，tvheader屬於該ListView的一員（第一個Item即是）。必須在調配資料前加入
		lv2.addHeaderView(tvheader);
		// 為系統執行緒清單設定資料介面卡
		systemadapter = new SystemAdapter();
		lv2.setAdapter(systemadapter);
	}

	// 為使用者執行緒對應的ListView調配資料
	private class UserAdapter extends BaseAdapter {

		public int getCount() {
			return userProcessInfos.size();
		}

		public Object getItem(int position) {
			return userProcessInfos.get(position);
		}

		public long getItemId(int position) {
			return position;
		}

		public View getView(int position, View convertView, ViewGroup parent) {
			View view;
			// 使用堆記憶體中的唯一的一份位元組碼（ListView的改善）
			ViewHolder holder = new ViewHolder();
			// 復用快取（ListView的改善）
			if (convertView == null) {
				view = View.inflate(getApplicationContext(),
						R.layout.task_manager_item, null);
				holder = new ViewHolder();
				holder.iv_icon = (ImageView) view
						.findViewById(R.id.iv_taskmanger_icon);
				holder.tv_name = (TextView) view
						.findViewById(R.id.tv_taskmanager_appname);
				holder.tv_mem = (TextView) view
						.findViewById(R.id.tv_taskmanager_mem);
				holder.cb = (CheckBox) view.findViewById(R.id.cb_taskmanager);
				view.setTag(holder);
			} else {
				// 使用快取的view
				view = convertView;
				// 取得到快取的view的標示
				holder = (ViewHolder) view.getTag();
			}
			// 從使用者執行緒對應的集合中取出對應的元素做資料的調配
			ProcessInfo info = userProcessInfos.get(position);
			// 若果套用程式是我們自己的手機衛士，隱藏掉Checkbox（避免殺死自己）
			if (info.getPackname().equals(getPackageName())) {
				holder.cb.setVisibility(View.INVISIBLE);
			} else {
				holder.cb.setVisibility(View.VISIBLE);
			}
			// 為Item調配資料：套用圖示、名稱、佔用記憶體大小、是否處於勾選狀態（預設情況下都是未勾選狀態）
			holder.iv_icon.setImageDrawable(info.getIcon());
			holder.tv_name.setText(info.getAppname());
			holder.tv_mem.setText(Formatter.formatFileSize(
					getApplicationContext(), info.getMemsize()));
			holder.cb.setChecked(info.isChecked());
			// 傳回Item對應的view
			return view;
		}
	}

	// 使用static修飾，可以確保該物件在堆記憶體中只存在一份位元組碼檔案（所有的Item共用該位元組碼檔案）
	static class ViewHolder {
		ImageView iv_icon;
		TextView tv_name;
		TextView tv_mem;
		CheckBox cb;
	}

	// 為系統執行緒對應的ListView調配資料
	private class SystemAdapter extends BaseAdapter {

		public int getCount() {
			return systemProcessInfos.size();
		}

		public Object getItem(int position) {
			return systemProcessInfos.get(position);
		}

		public long getItemId(int position) {
			return position;
		}

		public View getView(int position, View convertView, ViewGroup parent) {

			View view;
			ViewHolder holder = new ViewHolder();
			if (convertView == null) {
				view = View.inflate(getApplicationContext(),
						R.layout.task_manager_item, null);
				holder = new ViewHolder();
				holder.iv_icon = (ImageView) view
						.findViewById(R.id.iv_taskmanger_icon);
				holder.tv_name = (TextView) view
						.findViewById(R.id.tv_taskmanager_appname);
				holder.tv_mem = (TextView) view
						.findViewById(R.id.tv_taskmanager_mem);
				holder.cb = (CheckBox) view.findViewById(R.id.cb_taskmanager);
				view.setTag(holder);
			} else {
				view = convertView;
				holder = (ViewHolder) view.getTag();
			}
			ProcessInfo info = systemProcessInfos.get(position);
			holder.iv_icon.setImageDrawable(info.getIcon());
			holder.tv_name.setText(info.getAppname());
			holder.tv_mem.setText(Formatter.formatFileSize(
					getApplicationContext(), info.getMemsize()));
			holder.cb.setChecked(info.isChecked());

			return view;
		}
	}

	// 響套用戶執行緒、系統執行緒的按鈕的點擊事件（完成使用者執行緒清單和系統執行緒清單的切換）
	public void onClick(View v) {
		switch (v.getId()) {
		// 由系統執行緒清單切換到使用者執行緒清單（或是目前清單切換到目前清單）
		case R.id.bt_user:
			// 移除系統執行緒清單中的第一個用於提示的Item
			if (tvheader != null) {
				lv2.removeHeaderView(v);
				tvheader = null;
			}
			// 目前顯示的是使用者執行緒
			showUserApp = true;
			// 設定兩個按鈕的背景色，以示區分
			bt_user.setBackgroundDrawable(getResources().getDrawable(
					R.drawable.bt_pressed));
			bt_system.setBackgroundDrawable(getResources().getDrawable(
					R.drawable.bg_normal));
			// 將lv1設定為可見，lv2設定為不可見
			lv1.setVisibility(View.VISIBLE);
			lv2.setVisibility(View.INVISIBLE);

			break;
		// 由系使用者程清單切換到系統執行緒清單（或是目前清單切換到目前清單）
		case R.id.bt_system:
			showUserApp = false;
			bt_system.setBackgroundDrawable(getResources().getDrawable(
					R.drawable.bt_pressed));
			bt_user.setBackgroundDrawable(getResources().getDrawable(
					R.drawable.bg_normal));
			lv2.setVisibility(View.VISIBLE);
			lv1.setVisibility(View.INVISIBLE);

			break;
		}

	}

	/**
	 * 全選按鈕的點擊事件
	 */
	public void selectAll(View view) {
		//判斷是使用者執行緒全選，還是系統執行緒全選
		if (showUserApp) {
			//迭代執行緒集合，將每個info中的Checkbox都設定為true（勾選），然後知會介面卡更新資料
			for (ProcessInfo info : userProcessInfos) {
				info.setChecked(true);
				useradapter.notifyDataSetChanged();
			}

		} else {
			//迭代執行緒集合，將每個info中的Checkbox都設定為true（勾選），然後知會介面卡更新資料
			for (ProcessInfo info : systemProcessInfos) {
				info.setChecked(true);
				systemadapter.notifyDataSetChanged();
			}
		}
	}

	/**
	 * 一鍵清理的點擊事件
	 */
	public void oneKeyClear(View v) {
		//取得到ActivityManager物件，該物件中有殺死執行緒的動作
		ActivityManager am = (ActivityManager) getSystemService(ACTIVITY_SERVICE);
		//計數要被殺死多少個執行緒
		int count = 0;
		//計數要被殺死的所有執行緒所佔用的記憶體大小
		long memsize = 0;
		//存放已被被殺死的執行緒
		List<ProcessInfo> killedProcessInfo = new ArrayList<ProcessInfo>();
		//判斷是清理使用者執行緒還是清理系統執行緒
		if (showUserApp) {//使用者執行緒
			for (ProcessInfo info : userProcessInfos) {
				//根據Checkbox的選取狀態來確定哪些執行緒需要被清理
				if (info.isChecked()) {
					//執行累加動作
					count++;
					memsize += info.getMemsize();
					//執行kill動作
					am.killBackgroundProcesses(info.getPackname());
					//將殺死後的執行緒存入集合中
					killedProcessInfo.add(info);
				}
			}

		} else {//系統執行緒
			for (ProcessInfo info : systemProcessInfos) {
				if (info.isChecked()) {
					count++;
					memsize += info.getMemsize();
					am.killBackgroundProcesses(info.getPackname());
					killedProcessInfo.add(info);

				}
			}
		}
		//迭代出被殺死的執行緒，判斷哪個集合中包括該執行緒，若果包括，則移除掉（用於更新清單顯示）
		for (ProcessInfo info : killedProcessInfo) {
			if (info.isUserprocess()) {
				if (userProcessInfos.contains(info)) {
					userProcessInfos.remove(info);
				}
			} else {
				if (systemProcessInfos.contains(info)) {
					systemProcessInfos.remove(info);
				}
			}
		}
		//更新資料顯示
		if (showUserApp) {
			useradapter.notifyDataSetChanged();
		} else {
			systemadapter.notifyDataSetChanged();
		}

		
		/* Toast.makeText( this, "殺死了" + count + "個執行緒,釋放了" +
		  Formatter.formatFileSize(this, memsize) + "記憶體", 1) .show();*/
		
		//使用自訂的Toast來顯示殺死的執行緒數，以及釋放的記憶體空間。
		MyToast.showToast(
				this,
				"殺死了" + count + "個執行緒,釋放了"
						+ Formatter.formatFileSize(this, memsize) + "記憶體");
	}
}