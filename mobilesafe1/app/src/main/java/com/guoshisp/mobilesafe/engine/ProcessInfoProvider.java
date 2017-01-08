package com.guoshisp.mobilesafe.engine;

import java.util.ArrayList;
import java.util.List;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;

import com.guoshisp.mobilesafe.R;
import com.guoshisp.mobilesafe.domain.ProcessInfo;

public class ProcessInfoProvider {
	private Context context;

	public ProcessInfoProvider(Context context) {
		this.context = context;
	}

	/**
	 * �Ǧ^�Ҧ������b���檺�{���T��
	 * @return
	 */
	public List<ProcessInfo> getProcessInfos() {
		//am�i�H�ʺA�����o�M�Ϊ�������T���A�۷��PC�ӤH�q���W��������޲z��
		ActivityManager am = (ActivityManager) context
				.getSystemService(Context.ACTIVITY_SERVICE);
		//pm�i�H�R�A�����o���������Ҧ��M�ε{���T���A�۷��PC�ӤH�q���W���{���޲z��
		PackageManager pm = context.getPackageManager();
		//�Ǧ^�Ҧ����b���檺�����
		List<RunningAppProcessInfo> runingappsInfos = am
				.getRunningAppProcesses();
		//�Ω�s�������T��
		List<ProcessInfo> processInfos = new ArrayList<ProcessInfo>();
		//�ˬd�X�C�Ӱ�����A�ñN�C�Ӱ�������T���ʸ˦bProcessInfo���󤤡A�̫�N�Ҧ���������s��bList<ProcessInfo>���Ǧ^
		for (RunningAppProcessInfo info : runingappsInfos) {
			//�Ω�ʸ˰�����T��
			ProcessInfo processInfo = new ProcessInfo();
			//���o�������pid�]��������Хܡ^
			int pid = info.pid;
			//�N�������pid�BprocessName�Bmemsize�ʸ˨�ProcessInfo����
			processInfo.setPid(pid);
			String packname = info.processName;
			processInfo.setPackname(packname);
			//���o��Ӱ�����������M�ε{���Ҧ��Ϊ��O����Ŷ�
			long memsize = am.getProcessMemoryInfo(new int[] { pid })[0]
					.getTotalPrivateDirty() * 1024;
			processInfo.setMemsize(memsize);

			try {
				//�z�L�������packname�Ө��o��Ӱ�����������M�ε{������]���o��M�ε{���������A�N�i�H�z�L�Ӫ�����o�M�ε{���T���^
				ApplicationInfo applicationInfo = pm.getApplicationInfo(packname, 0);
				//�P�_�ӮM�ε{���O�_�O�ĤT��M�ε{���A�K��H������O
				if(filterApp(applicationInfo)){
					processInfo.setUserprocess(true);
				}else{
					processInfo.setUserprocess(false);
				}
				//���O���o��M�ε{�����ϥܩM�W�١A�ñN��ʸ˨�ProcessInfo����
				processInfo.setIcon(applicationInfo.loadIcon(pm));
				processInfo.setAppname(applicationInfo.loadLabel(pm).toString());
			} catch (Exception e) {
				//�o�̷|�ߥX�@�ӮM��W�٧䤣��ҥ~�A�ڭ̱N��]�w���t�ΰ�����A�M�ιϥܬ��w�]���t�ιϥ�
				e.printStackTrace();
				processInfo.setUserprocess(false);
				processInfo.setIcon(context.getResources().getDrawable(R.drawable.ic_launcher));
				processInfo.setAppname(packname);
			}
			processInfos.add(processInfo);
			processInfo = null;
			
		}
		return  processInfos;
	}
	
	/**
	 * �T��M�Ϊ��L�o�� ,�p
	 * 
	 * @param info
	 * @return true �T��M�� false �t�ήM��
	 */
	public boolean filterApp(ApplicationInfo info) {
		if ((info.flags & ApplicationInfo.FLAG_UPDATED_SYSTEM_APP) != 0) {
			return true;
		} else if ((info.flags & ApplicationInfo.FLAG_SYSTEM) == 0) {
			return true;
		}
		return false;
	}
}
