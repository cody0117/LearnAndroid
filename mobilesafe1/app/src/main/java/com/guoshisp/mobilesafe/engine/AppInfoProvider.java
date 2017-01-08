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
	 * 取得所有安裝程式訊息
	 * @return
	 */
	public List<AppInfo> getInstalledApps(){
		//傳回所有的安裝的程式清單訊息。其中，參數：PackageManager.GET_UNINSTALLED_PACKAGES表示：內含哪些被移除的但是沒有清除資料的套用
		List<PackageInfo> packageinfos = pm.getInstalledPackages(PackageManager.GET_UNINSTALLED_PACKAGES);
		List<AppInfo> appinfos = new ArrayList<AppInfo>();
		for(PackageInfo info : packageinfos){
			AppInfo appinfo = new AppInfo();
			//套用程式的套件名稱
			appinfo.setPackname(info.packageName);
			//套用程式的版本號
			appinfo.setVersion(info.versionName);
			//套用程式的圖示 info.applicationInfo.loadIcon(pm);
			appinfo.setAppicon(info.applicationInfo.loadIcon(pm));
			//套用程式的名稱 info.applicationInfo.loadLabel(pm);
			appinfo.setAppname(info.applicationInfo.loadLabel(pm).toString());
			//過濾出第三方（非系統）套用程式的名稱
			appinfo.setUserapp(filterApp(info.applicationInfo));
			appinfos.add(appinfo);
			appinfo = null;
		}
		return appinfos;
	}
	
	/**
	 * 第三方套用程式的過濾器,
	 * @param info
	 * @return true 三方套用
	 *         false 系統套用.
	 */
    public boolean filterApp(ApplicationInfo info) {
    	//目前套用程式的標示&系統套用程式的標示
        if ((info.flags & ApplicationInfo.FLAG_UPDATED_SYSTEM_APP) != 0) {
            return true;
        } else if ((info.flags & ApplicationInfo.FLAG_SYSTEM) == 0) {
            return true;
        }
        return false;
    }
}
