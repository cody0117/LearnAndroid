package com.guoshisp.mobilesafe.engine;

import java.util.ArrayList;
import java.util.List;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.TrafficStats;

import com.guoshisp.mobilesafe.domain.TrafficInfo;

public class TrafficInfoProvider {
	private PackageManager pm;
	private Context context;

	public TrafficInfoProvider(Context context) {
		this.context = context;
		pm = context.getPackageManager();
	}

	/**
	 * 傳回所有的有網際網路存取權限的套用程式的流量訊息。
	 * @return
	 */
	public List<TrafficInfo> getTrafficInfos() {
		//取得到組態權限訊息的套用程式
		List<PackageInfo> packinfos = pm
				.getInstalledPackages(PackageManager.GET_PERMISSIONS);
		//存放具有Internet權限訊息的套用
		List<TrafficInfo> trafficInfos = new ArrayList<TrafficInfo>();
		for(PackageInfo packinfo : packinfos){
			//取得該套用的所有權限訊息
			String[] permissions = packinfo.requestedPermissions;
			if(permissions!=null&&permissions.length>0){
				for(String permission : permissions){
					//篩選出具有Internet權限的套用程式
					if("android.permission.INTERNET".equals(permission)){
						//用於封裝具有Internet權限的套用程式訊息
						TrafficInfo trafficInfo = new TrafficInfo();
						//封裝套用訊息
						trafficInfo.setPackname(packinfo.packageName);
						trafficInfo.setIcon(packinfo.applicationInfo.loadIcon(pm));
						trafficInfo.setAppname(packinfo.applicationInfo.loadLabel(pm).toString());
						//取得到套用的uid（user id）
						int uid = packinfo.applicationInfo.uid;
						//TrafficStats物件透過套用的uid來取得套用的下載、上傳流量訊息
						trafficInfo.setRx(TrafficStats.getUidRxBytes(uid));
						trafficInfo.setTx(TrafficStats.getUidTxBytes(uid));
						trafficInfos.add(trafficInfo);
						trafficInfo = null;
						break;
					}
				}
			}
		}
		return trafficInfos;
	}
}
