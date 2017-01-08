package com.guoshisp.mobilesafe;

import java.util.List;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

import com.guoshisp.mobilesafe.db.dao.BlackNumberDao;
import com.guoshisp.mobilesafe.domain.BlackNumber;

public class CallSmsSafeActivity extends Activity {
	protected static final int LOAD_DATA_FINISH = 40;
	public static final String TAG = "CallSmsSafeActivity";
	//用於展現出所有的黑名單號碼
	private ListView lv_call_sms_safe;
	//動作黑名單號碼資料庫的物件
	private BlackNumberDao dao;
	//將黑名單號碼從資料庫中一次性取出存入快取集合中（避免在介面卡中頻繁的動作資料庫）
	private List<BlackNumber> blacknumbers;
	//顯示黑名單號碼的介面卡物件
	private BlackNumberAdapter adpater;
	//ProgressBar控制項的父控制項，用於控制子控制項的顯示（內含了ProgressBar）
	private LinearLayout ll_call_sms_safe_loading;
	
	//private String initnumber;
	//用於接收子執行緒傳送過來的訊息，實現UI的更新
	private Handler handler = new Handler() {
		public void handleMessage(android.os.Message msg) {
			switch (msg.what) {
			case LOAD_DATA_FINISH://從資料庫中載入黑名單號碼完成
				//將進度指示器及“正在載入資料...”隱藏
				ll_call_sms_safe_loading.setVisibility(View.INVISIBLE);
				//為lv_call_sms_safe設定介面卡
				adpater = new BlackNumberAdapter();
				lv_call_sms_safe.setAdapter(adpater);
				break;
			}
		};
	};

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.call_sms_safe);
		ll_call_sms_safe_loading = (LinearLayout) findViewById(R.id.ll_call_sms_safe_loading);
		dao = new BlackNumberDao(this);
		lv_call_sms_safe = (ListView) findViewById(R.id.lv_call_sms_safe);
		//ll_call_sms_safe_loading控制項中的所有子控制項設定為可見（ProgressBar和“正在載入資料...”）
		ll_call_sms_safe_loading.setVisibility(View.VISIBLE);
				
		/*Intent intent  = getIntent();//取得啟動目前元件的intent;
		initnumber = intent.getStringExtra("blacknumber");
		Log.i(TAG,"initnumber:"+initnumber);
		if(initnumber!=null){
			showBlackNumberDialog(0, 0);
		}*/

		// 1.為lv_call_sms_safe登錄一個上下文選單
		registerForContextMenu(lv_call_sms_safe);
		//一次性取得資料庫中的所有資料的動作是一個比較耗時的動作，建議在子執行緒中完成
		new Thread() {
			public void run() {
				blacknumbers = dao.findAll();
				//知會主軸程更新界面
				Message msg = Message.obtain();
				msg.what = LOAD_DATA_FINISH;
				handler.sendMessage(msg);
			};
		}.start();
	}

	/*@Override
	protected void onNewIntent(Intent intent) {
		initnumber = intent.getStringExtra("blacknumber");
		Log.i(TAG,"initnumber:"+initnumber);
		if(initnumber!=null){
			showBlackNumberDialog(0, 0);
		}
		super.onNewIntent(intent);
	}*/
	
	// 2.重新定義建立上下文選單的方法
	@Override
	public void onCreateContextMenu(ContextMenu menu, View v,
			ContextMenuInfo menuInfo) {
		super.onCreateContextMenu(menu, v, menuInfo);
		//設定長按Item後要顯示的佈局
		MenuInflater inflater = getMenuInflater();
		inflater.inflate(R.menu.call_sms_safe_menu, menu);
	}

	// 3.響應上下文選單的點擊事件
	@Override
	public boolean onContextItemSelected(MenuItem item) {
		//取得到Item對應的物件
		AdapterContextMenuInfo info = (AdapterContextMenuInfo) item
				.getMenuInfo();
		int position = (int) info.id; // 目前上下文選單對應的listview裡面的哪一個項目
		switch (item.getItemId()) {
		case R.id.item_delete:
			Log.i(TAG, "移除黑名單記錄");
			deleteBlackNumber(position);
			return true;
		case R.id.item_update:
			Log.i(TAG, "更新黑名單記錄");
			updateBlackNumber(position);

			return true;
		default:
			return super.onContextItemSelected(item);
		}
	}

	/**
	 * 更新黑名單號碼
	 * 
	 * @param position
	 */
	private void updateBlackNumber(int position) {
		showBlackNumberDialog(1, position);
	}

	/**
	 * 移除一條黑名單記錄
	 * 
	 * @param position
	 */
	private void deleteBlackNumber(int position) {
		BlackNumber blackNumber = (BlackNumber) lv_call_sms_safe
				.getItemAtPosition(position);
		String number = blackNumber.getNumber();
		dao.delete(number); // 移除了 資料庫裡面的記錄
		blacknumbers.remove(blackNumber);// 移除目前listview裡面的資料.
		adpater.notifyDataSetChanged();
	}
	/**
	 * 為黑名單號碼中的lv_call_sms_safe中的Item調配資料
	 * @author Administrator
	 *
	 */
	private class BlackNumberAdapter extends BaseAdapter {
		//取得Item的數目
		public int getCount() {
			return blacknumbers.size();
		}
		//取得Item的物件
		public Object getItem(int position) {
			return blacknumbers.get(position);
		}
		//取得Item對應的id
		public long getItemId(int position) {
			return position;
		}

		//在螢幕上，每顯示一個Item就呼叫一次該方法
		public View getView(int position, View convertView, ViewGroup parent) {
			View view;
			ViewHolder holder;
			//復用歷史快取的View物件
			if (convertView == null) {
				Log.i(TAG, "建立新的view物件");
				//將Item轉成View物件
				view = View.inflate(getApplicationContext(),
						R.layout.call_sms_item, null);
				holder = new ViewHolder();
				holder.tv_number = (TextView) view
						.findViewById(R.id.tv_callsms_item_number);
				holder.tv_mode = (TextView) view
						.findViewById(R.id.tv_callsms_item_mode);
				view.setTag(holder);// 把控制項id的參考 存放在view物件裡面
			} else {
				view = convertView;
				Log.i(TAG, "使用歷史快取的view物件");
				holder = (ViewHolder) view.getTag();
			}
			//為Item設定攔截模式
			BlackNumber blacknumber = blacknumbers.get(position);
			holder.tv_number.setText(blacknumber.getNumber());
			int mode = blacknumber.getMode();
			if (mode == 0) {
				holder.tv_mode.setText("電話攔截");
			} else if (mode == 1) {
				holder.tv_mode.setText("簡訊攔截");
			} else {
				holder.tv_mode.setText("全部攔截");
			}
			return view;
		}
	}
	//將Item中的控制項使用static修飾，被static修飾的類別的位元組碼在JVM中只會存在一份。tv_number與tv_mode在堆疊中也會只存在一份
	private static class ViewHolder {
		TextView tv_number;
		TextView tv_mode;
	}

	/**
	 * 為“加入黑名單號碼”登錄的點擊事件
	 * 加入一條黑名單號碼
	 * @param view
	 */
	public void addBlackNumber(View view) {
		showBlackNumberDialog(0, 0);
	}

	/**
	 * 顯示加入黑名單時的加入交談視窗或是修改交談視窗（兩者共用同一個交談視窗）
	 * 
	 * @param flag
	 *            0 代表加入， 1 代表修改
	 * @param position
	 *            被修改的Item在窗體中的位置。若果加入 資料，加入的資料可以為空
	 */
	private void showBlackNumberDialog(final int flag, final int position) {
		//獲得一個窗體建構器
		AlertDialog.Builder builder = new Builder(this);
		//將加入號碼的佈局檔案轉換成一個View
		View dialogview = View.inflate(this, R.layout.add_black_number, null);
		//取得輸入黑名單號碼的EditText
		final EditText et_number = (EditText) dialogview
				.findViewById(R.id.et_add_black_number);
		/*if(!TextUtils.isEmpty(initnumber)){
			et_number.setText(initnumber);
		}*/
		//取得到出現的交談視窗中的各個元件
		final CheckBox cb_phone = (CheckBox) dialogview
				.findViewById(R.id.cb_block_phone);
		final CheckBox cb_sms = (CheckBox) dialogview
				.findViewById(R.id.cb_block_sms);
		TextView tv_title = (TextView) dialogview
				.findViewById(R.id.tv_black_number_title);
		if (flag == 1) {//修改黑名單資料
			tv_title.setText("修改");
			//將要修改的黑名單號碼回應到號碼輸入框中
			BlackNumber blackNumber = (BlackNumber) lv_call_sms_safe
					.getItemAtPosition(position);
			String oldnumber = blackNumber.getNumber();
			et_number.setText(oldnumber);
			int m = blackNumber.getMode();
			//透過攔截模式來指定Checkbox的選取狀態
			if(m==0){//電話攔截
				cb_phone.setChecked(true);
				cb_sms.setChecked(false);
			}else if(m==1){//簡訊攔截
				cb_sms.setChecked(true);
				cb_phone.setChecked(false);
			}else{//電話與簡訊攔截
				cb_phone.setChecked(true);
				cb_sms.setChecked(true);
			}
		}
		//將轉換的佈局檔案新增到窗體上
		builder.setView(dialogview);
		//窗體交談視窗中的“確定”按鈕
		builder.setPositiveButton("確定", new DialogInterface.OnClickListener() {

			public void onClick(DialogInterface dialog, int which) {
				//取得到輸入的號碼，並將號碼前後的空格清除掉
				String number = et_number.getText().toString().trim();
				//flag=1代表的是修改，處理變更的時候 避免變更出來相同的電話號碼.
				if(flag==1&&dao.find(number)){
					Toast.makeText(getApplicationContext(), "要修改的電話號碼已經存在",0).show();
					return ;
				}
				//若果輸入的是空，則直接結束目前方法
				if (TextUtils.isEmpty(number)) {
					return;
				} else {//輸入的號碼不為空
					// 加入結果。若果加入成功 ，需要知會界面更新黑名單資料。預設的是加入失敗
					boolean result = false;
					BlackNumber blacknumber = new BlackNumber();
					blacknumber.setNumber(number);
					//電話攔截狂和簡訊攔截狂都被勾選的話，攔截模式應該為2
					if (cb_phone.isChecked() && cb_sms.isChecked()) {
						if (flag == 0) {//flag=1表示是加入黑名單號碼
							result = dao.add(number, "2");
							blacknumber.setMode(2);
						} else {//修改黑名單號碼
							//取得到要修改的Item物件
							BlackNumber blackNumber = (BlackNumber) lv_call_sms_safe
									.getItemAtPosition(position);
							//更新資料庫中要修改的那條資料
							dao.update(blackNumber.getNumber(), number, "2");
							blackNumber.setMode(2);
							blackNumber.setNumber(number);
							//知會介面卡重新顯示資料（此時，界面上的資料被更新）
							adpater.notifyDataSetChanged();
						}
					} else if (cb_phone.isChecked()) {//電話攔截，攔截模式為0
						if (flag == 0) {//加入黑名單資料
							result = dao.add(number, "0");
							blacknumber.setMode(0);
						} else {//修改黑名單資料
							//取得到要修改的Item物件
							BlackNumber blackNumber = (BlackNumber) lv_call_sms_safe
									.getItemAtPosition(position);
							//更新資料庫中要修改的那條資料
							dao.update(blackNumber.getNumber(), number, "0");
							blackNumber.setMode(0);
							blackNumber.setNumber(number);
							//知會介面卡重新顯示資料（此時，界面上的資料被更新）
							adpater.notifyDataSetChanged();

						}
					} else if (cb_sms.isChecked()) {//攔截模式為簡訊攔截（對應的數字為1）
						if (flag == 0) {//加入黑名單資料
							result = dao.add(number, "1");
							blacknumber.setMode(1);
						}else{//修改黑名單資料
							//取得到要修改的Item物件
							BlackNumber blackNumber = (BlackNumber) lv_call_sms_safe
									.getItemAtPosition(position);
							//更新資料庫中要修改的那條資料
							dao.update(blackNumber.getNumber(), number, "1");
							blackNumber.setMode(1);
							blackNumber.setNumber(number);
							//知會介面卡重新顯示資料（此時，界面上的資料被更新）
							adpater.notifyDataSetChanged();
						}
					} else {//沒有選取任何攔截模式
						Toast.makeText(getApplicationContext(), "攔截模式不能為空", 0)
								.show();
						return;
					}
					if (result) {//加入或修改資料成功，此時需要更新界面清單中的資料
						//將新加入的資料新增到集合中，因為介面卡是從集合中取資料的
						blacknumbers.add(blacknumber);
						//知會介面卡重新顯示資料（此時，界面上的資料被更新）
						adpater.notifyDataSetChanged();
					}
				}
			}
		});
		//窗體交談視窗中的“取消按鈕”對應的點擊事件
		builder.setNegativeButton("取消", new DialogInterface.OnClickListener() {
			public void onClick(DialogInterface dialog, int which) {

			}
		});
		//建立並顯示出窗體交談視窗
		builder.create().show();
	}
}
