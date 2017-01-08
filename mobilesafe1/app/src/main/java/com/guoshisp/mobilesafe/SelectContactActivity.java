package com.guoshisp.mobilesafe;

import java.util.List;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;

import com.guoshisp.mobilesafe.domain.ContactInfo;
import com.guoshisp.mobilesafe.engine.ContactInfoProvider;

public class SelectContactActivity extends Activity {
	private ListView lv_select_contact;//用於展現聯繫人的清單
	private ContactInfoProvider provider;//取得手機聯繫人的物件
	private List<ContactInfo> infos;//接收穫取到的所有聯繫人
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.select_contact);
		lv_select_contact = (ListView) findViewById(R.id.lv_select_contact);
		provider = new ContactInfoProvider(this);
		infos = provider.getContactInfos();
		//為lv_select_contact設定一個資料介面卡，用於將所有聯繫人展現到界面上
		lv_select_contact.setAdapter(new ContactAdapter());
		//為lv_select_contact中的item設定監聽
		lv_select_contact.setOnItemClickListener(new OnItemClickListener() {

			public void onItemClick(AdapterView<?> parent, View view,
					int position, long id) {
				//取得到點擊item對應的聯繫人的訊息物件
				ContactInfo info = (ContactInfo) lv_select_contact.getItemAtPosition(position);
				//取得到該聯繫人的號碼
				String number = info.getPhone();
				//將該聯繫人的號碼傳回給啟動目前Activity的Activity
				Intent data = new Intent();
				//將資料存入，用於傳回給Activity
				data.putExtra("number", number);
				//傳回資料，參數一：傳回結果碼  參數二：傳回資料
				setResult(0, data);
				//關閉目前的activity
				finish();
			}
		});
	}
	/**
	 * 展現所有聯繫人
	 * @author Administrator
	 *
	 */
	private class ContactAdapter extends BaseAdapter{

		public int getCount() {
			return infos.size();
		}

		public Object getItem(int position) {
			return infos.get(position);
		}

		public long getItemId(int position) {
			return position;
		}

		public View getView(int position, View convertView, ViewGroup parent) {
			ContactInfo info = infos.get(position);
			TextView tv = new TextView(getApplicationContext());
			tv.setTextSize(24);
			tv.setTextColor(Color.WHITE);
			tv.setText(info.getName()+"\n"+info.getPhone());
			return tv;
		}
		
	}
}
