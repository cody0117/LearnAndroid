package com.guoshisp.mobilesafe.utils;

import java.util.List;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningServiceInfo;
import android.content.Context;

public class ServiceStatusUtil {

	/**
	 * 判斷某個服務是否處於執行狀態
	 * @param context
	 * @param serviceClassName 服務的完整的類別名
	 * @return true表示正在執行   false表示沒有執行
	 */
	public static boolean isServiceRunning(Context context,String serviceClassName){
		ActivityManager  am  = (ActivityManager) context.getSystemService(Context.ACTIVITY_SERVICE);
		//參數100：表示要取得正在執行的100個服務。若果沒有100，則傳回所有正在執行的；若果超過100，則只傳回100個。
		List<RunningServiceInfo>  infos = am.getRunningServices(100);
		//檢查傳回的服務，判斷我們檢視的服務是否處於執行狀態
		for(RunningServiceInfo info: infos){
			if(serviceClassName.equals(info.service.getClassName())){
				return true;
			}
		}
		return false;
	}
}
