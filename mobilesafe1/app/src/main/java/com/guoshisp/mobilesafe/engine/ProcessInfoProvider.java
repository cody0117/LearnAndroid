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
	 * 傳回所有的正在執行的程式訊息
	 * @return
	 */
	public List<ProcessInfo> getProcessInfos() {
		//am可以動態的取得套用的執行緒訊息，相當於PC個人電腦上的執行緒管理器
		ActivityManager am = (ActivityManager) context
				.getSystemService(Context.ACTIVITY_SERVICE);
		//pm可以靜態的取得到手機中的所有套用程式訊息，相當於PC個人電腦上的程式管理器
		PackageManager pm = context.getPackageManager();
		//傳回所有正在執行的執行緒
		List<RunningAppProcessInfo> runingappsInfos = am
				.getRunningAppProcesses();
		//用於存放執行緒訊息
		List<ProcessInfo> processInfos = new ArrayList<ProcessInfo>();
		//檢查出每個執行緒，並將每個執行緒的訊息封裝在ProcessInfo物件中，最後將所有的執行緒存放在List<ProcessInfo>中傳回
		for (RunningAppProcessInfo info : runingappsInfos) {
			//用於封裝執行緒訊息
			ProcessInfo processInfo = new ProcessInfo();
			//取得執行緒的pid（執行緒的標示）
			int pid = info.pid;
			//將執行緒的pid、processName、memsize封裝到ProcessInfo物件中
			processInfo.setPid(pid);
			String packname = info.processName;
			processInfo.setPackname(packname);
			//取得到該執行緒對應的套用程式所佔用的記憶體空間
			long memsize = am.getProcessMemoryInfo(new int[] { pid })[0]
					.getTotalPrivateDirty() * 1024;
			processInfo.setMemsize(memsize);

			try {
				//透過執行緒的packname來取得到該執行緒對應的套用程式物件（取得到套用程式的物件後，就可以透過該物件取得套用程式訊息）
				ApplicationInfo applicationInfo = pm.getApplicationInfo(packname, 0);
				//判斷該套用程式是否是第三方套用程式，便於以後分類別
				if(filterApp(applicationInfo)){
					processInfo.setUserprocess(true);
				}else{
					processInfo.setUserprocess(false);
				}
				//分別取得到套用程式的圖示和名稱，並將其封裝到ProcessInfo物件中
				processInfo.setIcon(applicationInfo.loadIcon(pm));
				processInfo.setAppname(applicationInfo.loadLabel(pm).toString());
			} catch (Exception e) {
				//這裡會拋出一個套件名稱找不到例外，我們將其設定為系統執行緒，套用圖示為預設的系統圖示
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
	 * 三方套用的過濾器 ,如
	 * 
	 * @param info
	 * @return true 三方套用 false 系統套用
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