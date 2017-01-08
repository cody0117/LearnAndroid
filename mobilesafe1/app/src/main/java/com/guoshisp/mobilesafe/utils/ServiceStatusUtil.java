package com.guoshisp.mobilesafe.utils;

import java.util.List;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningServiceInfo;
import android.content.Context;

public class ServiceStatusUtil {

	/**
	 * �P�_�Y�ӪA�ȬO�_�B����檬�A
	 * @param context
	 * @param serviceClassName �A�Ȫ����㪺���O�W
	 * @return true��ܥ��b����   false��ܨS������
	 */
	public static boolean isServiceRunning(Context context,String serviceClassName){
		ActivityManager  am  = (ActivityManager) context.getSystemService(Context.ACTIVITY_SERVICE);
		//�Ѽ�100�G��ܭn���o���b���檺100�ӪA�ȡC�Y�G�S��100�A�h�Ǧ^�Ҧ����b���檺�F�Y�G�W�L100�A�h�u�Ǧ^100�ӡC
		List<RunningServiceInfo>  infos = am.getRunningServices(100);
		//�ˬd�Ǧ^���A�ȡA�P�_�ڭ��˵����A�ȬO�_�B����檬�A
		for(RunningServiceInfo info: infos){
			if(serviceClassName.equals(info.service.getClassName())){
				return true;
			}
		}
		return false;
	}
}
