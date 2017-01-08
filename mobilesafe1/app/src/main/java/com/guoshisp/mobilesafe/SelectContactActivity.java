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
	private ListView lv_select_contact;//�Ω�i�{�pô�H���M��
	private ContactInfoProvider provider;//���o����pô�H������
	private List<ContactInfo> infos;//����ì���쪺�Ҧ��pô�H
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.select_contact);
		lv_select_contact = (ListView) findViewById(R.id.lv_select_contact);
		provider = new ContactInfoProvider(this);
		infos = provider.getContactInfos();
		//��lv_select_contact�]�w�@�Ӹ�Ƥ����d�A�Ω�N�Ҧ��pô�H�i�{��ɭ��W
		lv_select_contact.setAdapter(new ContactAdapter());
		//��lv_select_contact����item�]�w��ť
		lv_select_contact.setOnItemClickListener(new OnItemClickListener() {

			public void onItemClick(AdapterView<?> parent, View view,
					int position, long id) {
				//���o���I��item�������pô�H���T������
				ContactInfo info = (ContactInfo) lv_select_contact.getItemAtPosition(position);
				//���o����pô�H�����X
				String number = info.getPhone();
				//�N���pô�H�����X�Ǧ^���ҰʥثeActivity��Activity
				Intent data = new Intent();
				//�N��Ʀs�J�A�Ω�Ǧ^��Activity
				data.putExtra("number", number);
				//�Ǧ^��ơA�ѼƤ@�G�Ǧ^���G�X  �ѼƤG�G�Ǧ^���
				setResult(0, data);
				//�����ثe��activity
				finish();
			}
		});
	}
	/**
	 * �i�{�Ҧ��pô�H
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