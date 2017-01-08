package com.guoshisp.mobilesafe;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.ExpandableListView.OnChildClickListener;
import android.widget.TextView;

import com.guoshisp.mobilesafe.db.dao.CommonNumDao;

public class CommonNumActivity extends Activity {
	protected static final String TAG = "CommonNumActivity";
	private ExpandableListView elv_common_num;//可延伸的ListView
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.common_num);
		elv_common_num = (ExpandableListView) findViewById(R.id.elv_common_num);
		elv_common_num.setAdapter(new CommonNumberAdapter());//為ExpandableListView設定一個介面卡物件，該物件需要是ExpandableListAdapter物件的子類別
		//為分群組中的每個孩子登錄一個監聽器
		elv_common_num.setOnChildClickListener(new OnChildClickListener() {
			public boolean onChildClick(ExpandableListView parent, View v,
					int groupPosition, int childPosition, long id) {
				//取得到TextView中的電話號碼
				TextView tv = (TextView) v;
				String number = tv.getText().toString().split("\n")[1];
				//使用隱式意圖來啟動手機系統中的撥號器
				Intent intent = new Intent();
				intent.setAction(Intent.ACTION_DIAL);
				intent.setData(Uri.parse("tel:"+number));
				startActivity(intent);
				return false;
			}
		});
	}
	//ExpandableListView的介面卡物件，該物件是ExpandableListAdapter物件的子類別
	private class CommonNumberAdapter extends BaseExpandableListAdapter {
		//儲存對應群組中的子孩子的詳細訊息
		private List<String> groupNames;
		//將子孩子的所有訊息一次性從資料庫中取得出來，這樣可以避免重復查詢資料庫記憶體快取集合。key：分群組的位置  value：分群組裡面所有子孩子的訊息
		private Map<Integer, List<String>> childrenCache; 

		public CommonNumberAdapter() {
			childrenCache = new HashMap<Integer, List<String>>();
		}

		/**
		 * 傳回目前清單有多少群組
		 */
		public int getGroupCount() {
			// groupNames = CommonNumDao.getGroupNames();
			// return groupNames.size();
			return CommonNumDao.getGroupCount();
		}

		/**
		 * 傳回每一群組裡面有多少個項目
		 */
		public int getChildrenCount(int groupPosition) {
			// if(childrenCache.containsKey(groupPosition)){
			// return childrenCache.get(groupPosition).size(); //傳回快取的資料
			// }else{
			// List<String> results =
			// CommonNumDao.getChildNameByPosition(groupPosition);
			// childrenCache.put(groupPosition, results);//把資料放在快取裡面
			// return results.size();
			// }
			return CommonNumDao.getChildrenCount(groupPosition);
		}
		/**
		 * 傳回分群組所對應的物件。這裡我們用不到，所以傳回null。
		 */
		public Object getGroup(int groupPosition) {
			return null;
		}
		/**
		 * 取得分群組中的項目物件。這裡我們用不到，所以傳回null。
		 */
		public Object getChild(int groupPosition, int childPosition) {
			return null;
		}
		/**
		 * 取得分群組所對應的id
		 */
		public long getGroupId(int groupPosition) {
			return groupPosition;
		}
		/**
		 * 取得分群組中的項目所對應的id
		 */
		public long getChildId(int groupPosition, int childPosition) {
			return childPosition;
		}
		/**
		 * 是否要為分群組中的項目設定一下id。false代表不用設定。
		 */
		public boolean hasStableIds() {
			return false;
		}

		/**
		 * 傳回每一個分群組的view物件.
		 * 參數一：目前分群組的id
		 * 參數二：目前分群組的View是否可延伸
		 * 參數三：快取的View物件
		 * 參數四：目前分群組的父View物件
		 */
		public View getGroupView(int groupPosition, boolean isExpanded,
				View convertView, ViewGroup parent) {
			TextView tv;
			//使用快取的View物件
			if (convertView == null) {
				tv = new TextView(getApplicationContext());
			} else {
				tv = (TextView) convertView;
			}
			tv.setTextSize(28);
			if (groupNames != null) {
				tv.setText("          " + groupNames.get(groupPosition));
			} else {
				groupNames = CommonNumDao.getGroupNames();
				tv.setText("          " + groupNames.get(groupPosition));
			}

			return tv;
		}

		/**
		 * 傳回每一個分群組 某一個位置對應的孩子的view物件
		 * 參數一：目前分群組的id
		 * 參數二：分群組中的子孩子的id
		 * 參數三：分群組中的子孩子是否是最後一個
		 * 參數四：子孩子View的快取物件
		 * 參數五：分群組中的子孩子所在的父View物件
		 */
		public View getChildView(int groupPosition, int childPosition,
				boolean isLastChild, View convertView, ViewGroup parent) {
			TextView tv;
			if (convertView == null) {

				tv = new TextView(getApplicationContext());
			} else {
				tv = (TextView) convertView;
			}
			tv.setTextSize(20);
			String result = null;
			if (childrenCache.containsKey(groupPosition)) {
				result = childrenCache.get(groupPosition).get(childPosition);
			} else {
				List<String> results = CommonNumDao
						.getChildNameByPosition(groupPosition);
				childrenCache.put(groupPosition, results);// 把資料放在快取裡面
				result = results.get(childPosition);
			}
			tv.setText(result);
			return tv;
		}
		/**
		 * 傳回值若果為true，則表示每個分群組的子孩子都可以響應到點擊事件，否則，不可以響應
		 */
		public boolean isChildSelectable(int groupPosition, int childPosition) {
			return true;
		}

	}
}
