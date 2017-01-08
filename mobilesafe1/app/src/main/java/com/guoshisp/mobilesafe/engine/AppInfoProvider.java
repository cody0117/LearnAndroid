package com.guoshisp.mobilesafe.engine;

import java.util.ArrayList;
import java.util.List;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

import com.guoshisp.mobilesafe.domain.AppInfo;
public class AppInfoProvider {
	private PackageManager pm;
	public AppInfoProvider(Context context) {
		pm = context.getPackageManager();
	}
	/**
	 * ���o�Ҧ��w�˵{���T��
	 * @return
	 */
	public List<AppInfo> getInstalledApps(){
		//�Ǧ^�Ҧ����w�˪��{���M��T���C�䤤�A�ѼơGPackageManager.GET_UNINSTALLED_PACKAGES��ܡG���t���ǳQ���������O�S���M����ƪ��M��
		List<PackageInfo> packageinfos = pm.getInstalledPackages(PackageManager.GET_UNINSTALLED_PACKAGES);
		List<AppInfo> appinfos = new ArrayList<AppInfo>();
		for(PackageInfo info : packageinfos){
			AppInfo appinfo = new AppInfo();
			//�M�ε{�����M��W��
			appinfo.setPackname(info.packageName);
			//�M�ε{����������
			appinfo.setVersion(info.versionName);
			//�M�ε{�����ϥ� info.applicationInfo.loadIcon(pm);
			appinfo.setAppicon(info.applicationInfo.loadIcon(pm));
			//�M�ε{�����W�� info.applicationInfo.loadLabel(pm);
			appinfo.setAppname(info.applicationInfo.loadLabel(pm).toString());
			//�L�o�X�ĤT��]�D�t�Ρ^�M�ε{�����W��
			appinfo.setUserapp(filterApp(info.applicationInfo));
			appinfos.add(appinfo);
			appinfo = null;
		}
		return appinfos;
	}
	
	/**
	 * �ĤT��M�ε{�����L�o��,
	 * @param info
	 * @return true �T��M��
	 *         false �t�ήM��.
	 */
    public boolean filterApp(ApplicationInfo info) {
    	//�ثe�M�ε{�����Х�&�t�ήM�ε{�����Х�
        if ((info.flags & ApplicationInfo.FLAG_UPDATED_SYSTEM_APP) != 0) {
            return true;
        } else if ((info.flags & ApplicationInfo.FLAG_SYSTEM) == 0) {
            return true;
        }
        return false;
    }
}
