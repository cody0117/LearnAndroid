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
	private static LocationManager lm;//��m�޲z��
	private static MyListener listener;//��m�ܤƪ���ť���C��ť�ʧ@����ӹq
	private static SharedPreferences  sp;//���[�Ʀ�m���T���]�g�n�ס^
	//�p���ƫغc��k�A������ҼҦ��C�ت��b�� ��֩��t�ΪA�ȵn����ť�A�קK�{������ �A��֯ӹq�q
	private GPSInfoProvider(){
		
	}
	public synchronized static GPSInfoProvider getInstance(Context context){
		if(mGPSInfoProvider==null){
			mGPSInfoProvider = new GPSInfoProvider();
			// ���o��m�޲z��
			lm = (LocationManager) context.getSystemService(Context.LOCATION_SERVICE);
			// ���o�d�ߦa�z��m���d�߱��󪫥�]���w�O�@��Map���X�^
			Criteria criteria = new Criteria();
			// �]�w��T�סA�o�̶ǻ����O�̺�㪺��T��
			criteria.setAccuracy(Criteria.ACCURACY_FINE);
			// gps�w��O�_�e�\���ͮ��ӡ]true��ܮe�\�A�Ҧp�n�άy�q�^
			criteria.setCostAllowed(true);
			// ������ӹq���ӱ��p�]��ɩw��ɡA���ӳ]�w�����^
			criteria.setPowerRequirement(Criteria.POWER_HIGH);
			// ���o���ްT��
			criteria.setAltitudeRequired(true);
			// �������h�����t�׬O�_�ӷP
			criteria.setSpeedRequired(true);
			// ���o��ثe����̦n�Ϊ���m���Ѫ̡G�ѼƤ@�G�d�ߪ�������� �ѼƤG�G�ǻ���true�ɡA��ܥu���i�Ϊ���m���Ѫ̮ɤ~�|�Q�Ǧ^�^�h
			String provider = lm.getBestProvider(criteria, true);
			// System.out.println(provider);
			listener = new GPSInfoProvider().new MyListener();
			// �I�s��s��m��k�G�ѼƤ@�G��m���Ѫ̡A�ѼƤG�G�̵u����s��m�T���ɶ��]�̦n�n�j��60000�]�@����^�^�A�ѼƤT�G�̵u���|�Z���A�Ѽƥ|�G��m���ܮɪ���ť����
			lm.requestLocationUpdates(provider, 60000, 100, listener);
			// �bSdcard�������M�󤤫إߤ@��config.xml�ɮסA�ɮת��ʧ@���A�]�w��PRIVATE
			sp = context.getSharedPreferences("config", Context.MODE_PRIVATE);
		}
		return mGPSInfoProvider;
	}
	
	/**
	 * ������m����ť
	 */
	public void stopLinsten(){
		lm.removeUpdates(listener);
		listener = null;
	}
	
	protected class MyListener implements LocationListener {

		/**
		 * ��������m�o�ͧ��ܪ��ɭ� �I�s����k
		 */
		public void onLocationChanged(Location location) {
			String latitude = "latitude :" + location.getLatitude(); // �n��
			String longitude = "longitude: " + location.getLongitude(); // �g��
			String meter = "accuracy :" + location.getAccuracy();// ��T��
			System.out.println(latitude + "-" + longitude + "-" + meter);

			Editor editor = sp.edit();
			editor.putString("last_location", latitude + "-" + longitude + "-"
					+ meter);
			editor.commit();
		}

		/**
		 * ���m���Ѫ� ���A�o�ͧ��ܪ��ɭ� �I�s����k
		 */
		public void onStatusChanged(String provider, int status, Bundle extras) {

		}

		/**
		 * ��Y�Ӧ�m���Ѫ̥i�Ϊ��ɭ�.
		 */
		public void onProviderEnabled(String provider) {

		}

		/**
		 * ��Y�Ӧ�m���Ѫ� ���i�Ϊ��ɭ�
		 */
		public void onProviderDisabled(String provider) {

		}
	}
	
	/**
	 * ���o�������m
	 * @return
	 */
	public String getLocation(){
		return sp.getString("last_location", "");
	}
	
}
