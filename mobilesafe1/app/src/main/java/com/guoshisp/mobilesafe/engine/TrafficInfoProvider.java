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
	 * �Ǧ^�Ҧ��������ں����s���v�����M�ε{�����y�q�T���C
	 * @return
	 */
	public List<TrafficInfo> getTrafficInfos() {
		//���o��պA�v���T�����M�ε{��
		List<PackageInfo> packinfos = pm
				.getInstalledPackages(PackageManager.GET_PERMISSIONS);
		//�s��㦳Internet�v���T�����M��
		List<TrafficInfo> trafficInfos = new ArrayList<TrafficInfo>();
		for(PackageInfo packinfo : packinfos){
			//���o�ӮM�Ϊ��Ҧ��v���T��
			String[] permissions = packinfo.requestedPermissions;
			if(permissions!=null&&permissions.length>0){
				for(String permission : permissions){
					//�z��X�㦳Internet�v�����M�ε{��
					if("android.permission.INTERNET".equals(permission)){
						//�Ω�ʸ˨㦳Internet�v�����M�ε{���T��
						TrafficInfo trafficInfo = new TrafficInfo();
						//�ʸˮM�ΰT��
						trafficInfo.setPackname(packinfo.packageName);
						trafficInfo.setIcon(packinfo.applicationInfo.loadIcon(pm));
						trafficInfo.setAppname(packinfo.applicationInfo.loadLabel(pm).toString());
						//���o��M�Ϊ�uid�]user id�^
						int uid = packinfo.applicationInfo.uid;
						//TrafficStats����z�L�M�Ϊ�uid�Ө��o�M�Ϊ��U���B�W�Ǭy�q�T��
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