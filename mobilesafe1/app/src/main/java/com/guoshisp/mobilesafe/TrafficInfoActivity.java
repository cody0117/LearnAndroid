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
	//展示資料清單
	private ListView lv;
	//取得到所有具有Intenet權限的套用的流量訊息
	private TrafficInfoProvider provider;
	//ProgressBar和TextView（正在載入...）的父控制項，用於控制其顯示
	private LinearLayout ll_loading;
	//封裝單一具有Intenet權限的套用的流量訊息
	private List<TrafficInfo>  trafficInfos;
	//處理子執行緒傳送過來的訊息，更新UI
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
		//取得到具有Internet權限的套用所產生的流量
		new Thread(){
			public void run() {
				trafficInfos = provider.getTrafficInfos();
				//想主軸程中傳送一個空訊息，用於知會主軸程更新資料
				handler.sendEmptyMessage(0);
			};
		}.start();
	}
	//資料介面卡
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
		//ListView中顯示多少個Item，該方法就被呼叫多少次
		public View getView(int position, View convertView, ViewGroup parent) {
			View view;
			ViewHolder holder = new ViewHolder();
			TrafficInfo info = trafficInfos.get(position);
			//復用快取的View
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
			//下載所產生的流量
			long rx = info.getRx();
			//上傳所產生的流量
			long tx = info.getTx();
			//增強程式的穩固性。因為在類比器上執行時傳回值為-1.
			if(rx<0){
				rx = 0;
			}
			if(tx<0){
				tx = 0;
			}
			holder.tv_rx.setText(Formatter.formatFileSize(getApplicationContext(), rx));
			holder.tv_tx.setText(Formatter.formatFileSize(getApplicationContext(), tx));
			//總流量
			long total = rx + tx;
			//透過Formatter將long型態的資料轉為MB或這KB，當數字較小時，自動采用KB
			holder.tv_total.setText(Formatter.formatFileSize(getApplicationContext(), total));
			return view;
		}
	}
	//透過static的修飾，確保了堆疊記憶體中存在唯一一份位元組碼且被共用
	static class ViewHolder{
		ImageView iv_icon;
		TextView tv_name;
		TextView tv_tx;
		TextView tv_rx;
		TextView tv_total;
	}
}
