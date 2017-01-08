package com.guoshisp.mobilesafe;

import java.util.List;

import android.app.Activity;
import android.content.ContentValues;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;

import com.guoshisp.mobilesafe.db.dao.AppLockDao;
import com.guoshisp.mobilesafe.domain.AppInfo;
import com.guoshisp.mobilesafe.engine.AppInfoProvider;

public class AppLockActivity extends Activity {
	//�i�ܤ�������Ҧ��M��
	private ListView lv_applock;
	//ProgressBar�MTextView������������A�Ω󱱨�ProgressBar�MTextView�����
	private LinearLayout ll_loading;
	//���o������w�w�˪��M�ε{��
	private AppInfoProvider provider;
	//�s��ثe����W�Ҧ��M�ε{�����T��
	private List<AppInfo> appinfos;
	//�ʧ@�s��w��w���M�ε{������Ʈw
	private AppLockDao dao;
	//�s��Ҧ��w�g�Q��w���M�ε{�����M��W�ٰT��
	private List<String> lockedPacknames;
	//�B�z�l����������o�쪺�ثe������Ҧ��M�ε{��
	private Handler handler = new Handler(){
		public void handleMessage(android.os.Message msg) {
			ll_loading.setVisibility(View.INVISIBLE);
			//��ListView�հt���
			lv_applock.setAdapter(new AppLockAdapter());
		};
	};
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		setContentView(R.layout.app_lock);
		super.onCreate(savedInstanceState);
		provider = new AppInfoProvider(this);
		lv_applock = (ListView) findViewById(R.id.lv_applock);
		ll_loading = (LinearLayout) findViewById(R.id.ll_applock_loading);
		dao =new AppLockDao(this);
		//�q��Ʈw�����o��Ҧ��Q��w���M�ε{���M��W��
		lockedPacknames = dao.findAll();
		//���b�q��Ʈw�����o��ƮɡA�������ProgressBar�MTextView�����������b���J...���r��
		ll_loading.setVisibility(View.VISIBLE);
		//�}�Ҥ@�Ӥl��������o������Ҧ��M�ε{�����T��
		new Thread(){
			public void run() {
				appinfos = provider.getInstalledApps();
				//�V�D�b�{���ǰe�@�ӪŰT���A���|�D�b�{��s���
				handler.sendEmptyMessage(0);
			};
		}.start();
		//��ListView����Item�]�w�I���ƥ󪺺�ť��
		lv_applock.setOnItemClickListener(new OnItemClickListener() {

			public void onItemClick(AdapterView<?> parent, View view,
					int position, long id) {
				//���o�ثeItem������
				AppInfo appinfo = (AppInfo) lv_applock.getItemAtPosition(position);
				//���o��ثeItem���󪺮M��W�ٰT��
				String packname = appinfo.getPackname();
				//�d�ߨ�Item�������걱��]ImageView�^
				ImageView iv = (ImageView) view.findViewById(R.id.iv_applock_status);
				//�]�w�@�ӥ��k�h�����ʵe
				TranslateAnimation ta = new TranslateAnimation(Animation.RELATIVE_TO_SELF, 0, Animation.RELATIVE_TO_SELF, 0.2f, Animation.RELATIVE_TO_SELF, 0, Animation.RELATIVE_TO_SELF, 0);
				//�]�w�ʵe���񪺮ɪ��]�@��^
				ta.setDuration(200);
				//�P�_�ثe��Item�O�_�B����w���A�A�Y�G�O�A�h���Ӹ���A�_�h���ӥ[��C
				if(lockedPacknames.contains(packname)){//��w���A
					//dao.delete(packname);
					//���Τ��e���Ѫ̨��[���Ʈw��������ܤ�
					Uri uri = Uri.parse("content://com.guoshisp.applock/DELETE");
					getContentResolver().delete(uri, null, new String[]{packname});
					//����
					iv.setImageResource(R.drawable.unlock);
					//�N�ثe�M�ε{�����M��W�ٱq���X�]�s��w��w�M�ε{�����M��W�١^�������A�H�K�ɭ�����s
					lockedPacknames.remove(packname);
				}else{//����w���A
					//dao.add(packname);
					Uri uri = Uri.parse("content://com.guoshisp.applock/ADD");
					ContentValues values = new ContentValues();
					values.put("packname", packname);
					getContentResolver().insert(uri, values);
					iv.setImageResource(R.drawable.lock);
					lockedPacknames.add(packname);
				}
				//���ثe��Item����ʵe
				view.startAnimation(ta);
			}
		});
		
	}
	//�ۭq�����d����
	private class AppLockAdapter extends BaseAdapter{

		public int getCount() {
			return appinfos.size();
		}

		public Object getItem(int position) {
			return appinfos.get(position);
		}

		public long getItemId(int position) {
			return position;
		}

		public View getView(int position, View convertView, ViewGroup parent) {
			View view;
			ViewHolder holder;
			//�_�ξ��v�֨���View����
			if(convertView==null){
				view = View.inflate(getApplicationContext(),R.layout.app_lock_item, null);
				holder = new ViewHolder();
				holder.iv_icon = (ImageView)view.findViewById(R.id.iv_applock_icon);
				holder.iv_status = (ImageView)view.findViewById(R.id.iv_applock_status);
				holder.tv_name = (TextView)view.findViewById(R.id.tv_applock_appname);
				view.setTag(holder);
			}else{//��View���@�ӼХܡA�H�K�_��
				view = convertView;
				holder = (ViewHolder) view.getTag();
			}
			//���o��ثe�M�ε{������
			AppInfo appInfo = appinfos.get(position);
			holder.iv_icon.setImageDrawable(appInfo.getAppicon());
			holder.tv_name.setText(appInfo.getAppname());
			//�˵��Q�ثe��Item�O�_�O�Q�j�w���M�ΡA�H���Ӭ�Item�]�w��������]��w�Υ���w�^
			if(lockedPacknames.contains(appInfo.getPackname())){
				holder.iv_status.setImageResource(R.drawable.lock);
			}else{
				holder.iv_status.setImageResource(R.drawable.unlock);
			}
			return view;
		}
	}
	//View������View����u�|�b��O���餤�s�b�@���A�Ҧ���Item�����θ�View
	public static class ViewHolder{
		ImageView iv_icon;
		ImageView iv_status;
		TextView tv_name;
	}
}
