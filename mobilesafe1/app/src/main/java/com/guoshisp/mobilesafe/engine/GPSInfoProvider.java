package com.guoshisp.mobilesafe.engine;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;

public class GPSInfoProvider {
	private static GPSInfoProvider mGPSInfoProvider;
	private static LocationManager lm;//位置管理器
	private static MyListener listener;//位置變化的監聽器。監聽動作比較耗電
	private static SharedPreferences  sp;//持久化位置的訊息（經緯度）
	//私有化建構方法，做成單例模式。目的在於 減少往系統服務登錄監聽，避免程式掛掉 ，減少耗電量
	private GPSInfoProvider(){
		
	}
	public synchronized static GPSInfoProvider getInstance(Context context){
		if(mGPSInfoProvider==null){
			mGPSInfoProvider = new GPSInfoProvider();
			// 取得位置管理器
			lm = (LocationManager) context.getSystemService(Context.LOCATION_SERVICE);
			// 取得查詢地理位置的查詢條件物件（內定是一個Map集合）
			Criteria criteria = new Criteria();
			// 設定精確度，這裡傳遞的是最精准的精確度
			criteria.setAccuracy(Criteria.ACCURACY_FINE);
			// gps定位是否容許產生消耗（true表示容許，例如好用流量）
			criteria.setCostAllowed(true);
			// 手機的耗電消耗情況（實時定位時，應該設定為高）
			criteria.setPowerRequirement(Criteria.POWER_HIGH);
			// 取得海拔訊息
			criteria.setAltitudeRequired(true);
			// 對手機的搬移的速度是否敏感
			criteria.setSpeedRequired(true);
			// 取得到目前手機最好用的位置提供者：參數一：查詢的選取條件 參數二：傳遞為true時，表示只有可用的位置提供者時才會被傳回回去
			String provider = lm.getBestProvider(criteria, true);
			// System.out.println(provider);
			listener = new GPSInfoProvider().new MyListener();
			// 呼叫更新位置方法：參數一：位置提供者，參數二：最短的更新位置訊息時間（最好要大於60000（一分鍾）），參數三：最短知會距離，參數四：位置改變時的監聽物件
			lm.requestLocationUpdates(provider, 60000, 100, listener);
			// 在Sdcard對應的套件中建立一個config.xml檔案，檔案的動作型態設定為PRIVATE
			sp = context.getSharedPreferences("config", Context.MODE_PRIVATE);
		}
		return mGPSInfoProvider;
	}
	
	/**
	 * 取消位置的監聽
	 */
	public void stopLinsten(){
		lm.removeUpdates(listener);
		listener = null;
	}
	
	protected class MyListener implements LocationListener {

		/**
		 * 當手機的位置發生改變的時候 呼叫的方法
		 */
		public void onLocationChanged(Location location) {
			String latitude = "latitude :" + location.getLatitude(); // 緯度
			String longitude = "longitude: " + location.getLongitude(); // 經度
			String meter = "accuracy :" + location.getAccuracy();// 精確度
			System.out.println(latitude + "-" + longitude + "-" + meter);

			Editor editor = sp.edit();
			editor.putString("last_location", latitude + "-" + longitude + "-"
					+ meter);
			editor.commit();
		}

		/**
		 * 當位置提供者 狀態發生改變的時候 呼叫的方法
		 */
		public void onStatusChanged(String provider, int status, Bundle extras) {

		}

		/**
		 * 當某個位置提供者可用的時候.
		 */
		public void onProviderEnabled(String provider) {

		}

		/**
		 * 當某個位置提供者 不可用的時候
		 */
		public void onProviderDisabled(String provider) {

		}
	}
	
	/**
	 * 取得手機的位置
	 * @return
	 */
	public String getLocation(){
		return sp.getString("last_location", "");
	}
	
}
