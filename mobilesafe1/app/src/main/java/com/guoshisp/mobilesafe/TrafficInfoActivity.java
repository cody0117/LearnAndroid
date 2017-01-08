package com.guoshisp.mobilesafe;

import java.util.List;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.text.format.Formatter;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;

import com.guoshisp.mobilesafe.domain.TrafficInfo;
import com.guoshisp.mobilesafe.engine.TrafficInfoProvider;

public class TrafficInfoActivity extends Activity {
	//�i�ܸ�ƲM��
	private ListView lv;
	//���o��Ҧ��㦳Intenet�v�����M�Ϊ��y�q�T��
	private TrafficInfoProvider provider;
	//ProgressBar�MTextView�]���b���J...�^��������A�Ω󱱨�����
	private LinearLayout ll_loading;
	//�ʸ˳�@�㦳Intenet�v�����M�Ϊ��y�q�T��
	private List<TrafficInfo>  trafficInfos;
	//�B�z�l������ǰe�L�Ӫ��T���A��sUI
	private Handler handler = new Handler(){
		public void handleMessage(android.os.Message msg) {
			ll_loading.setVisibility(View.INVISIBLE);
			lv.setAdapter(new TrafficAdapter());
		};
	};
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		setContentView(R.layout.traffic_info);
		super.onCreate(savedInstanceState);
		lv = (ListView) findViewById(R.id.lv_traffic_manager);
		provider = new TrafficInfoProvider(this);
		ll_loading = (LinearLayout) findViewById(R.id.ll_loading);
		ll_loading.setVisibility(View.VISIBLE);
		//���o��㦳Internet�v�����M�ΩҲ��ͪ��y�q
		new Thread(){
			public void run() {
				trafficInfos = provider.getTrafficInfos();
				//�Q�D�b�{���ǰe�@�ӪŰT���A�Ω󪾷|�D�b�{��s���
				handler.sendEmptyMessage(0);
			};
		}.start();
	}
	//��Ƥ����d
	private class TrafficAdapter extends BaseAdapter{

		public int getCount() {
			return trafficInfos.size();
		}

		public Object getItem(int position) {
			return trafficInfos.get(position);
		}

		public long getItemId(int position) {
			return position;
		}
		//ListView����ܦh�֭�Item�A�Ӥ�k�N�Q�I�s�h�֦�
		public View getView(int position, View convertView, ViewGroup parent) {
			View view;
			ViewHolder holder = new ViewHolder();
			TrafficInfo info = trafficInfos.get(position);
			//�_�Χ֨���View
			if(convertView==null){
				view = View.inflate(getApplicationContext(), R.layout.traffic_item, null);
				holder.iv_icon = (ImageView) view.findViewById(R.id.iv_traffic_icon);
				holder.tv_name = (TextView) view.findViewById(R.id.tv_traffic_name);
				holder.tv_rx = (TextView) view.findViewById(R.id.tv_traffic_rx);
				holder.tv_tx = (TextView) view.findViewById(R.id.tv_traffic_tx);
				holder.tv_total = (TextView) view.findViewById(R.id.tv_traffic_total);
				view.setTag(holder);
			}else{
				view = convertView;
				holder = (ViewHolder) view.getTag();
			}
			holder.iv_icon.setImageDrawable(info.getIcon());
			holder.tv_name.setText(info.getAppname());
			//�U���Ҳ��ͪ��y�q
			long rx = info.getRx();
			//�W�ǩҲ��ͪ��y�q
			long tx = info.getTx();
			//�W�j�{����í�T�ʡC�]���b���񾹤W����ɶǦ^�Ȭ�-1.
			if(rx<0){
				rx = 0;
			}
			if(tx<0){
				tx = 0;
			}
			holder.tv_rx.setText(Formatter.formatFileSize(getApplicationContext(), rx));
			holder.tv_tx.setText(Formatter.formatFileSize(getApplicationContext(), tx));
			//�`�y�q
			long total = rx + tx;
			//�z�LFormatter�Nlong���A������ରMB�γoKB�A��Ʀr���p�ɡA�۰ʪ���KB
			holder.tv_total.setText(Formatter.formatFileSize(getApplicationContext(), total));
			return view;
		}
	}
	//�z�Lstatic���׹��A�T�O�F���|�O���餤�s�b�ߤ@�@���줸�սX�B�Q�@��
	static class ViewHolder{
		ImageView iv_icon;
		TextView tv_name;
		TextView tv_tx;
		TextView tv_rx;
		TextView tv_total;
	}
}
