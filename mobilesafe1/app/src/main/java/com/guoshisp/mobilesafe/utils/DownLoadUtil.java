package com.guoshisp.mobilesafe.utils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import android.app.ProgressDialog;

/**
 * 下載的工具類別 1.下載檔案的路徑 2.下載檔案後儲存的路徑 3.關心 進度指示器 4.上下文
 */
public class DownLoadUtil {

	/**
	 * 下載一個檔案
	 * 
	 * @param urlpath
	 *            路徑
	 * @param filepath
	 *            儲存到本機的檔案路徑
	 * @param pd
	 *            進度指示器交談視窗
	 * @return	  下載後的apk
	 */
	public static File getFile(String urlpath, String filepath,
			ProgressDialog pd) {
		try {
			URL url = new URL(urlpath);
			File file = new File(filepath);
			FileOutputStream fos = new FileOutputStream(file);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			//下載的請求是GET模式，conn的預設模式也是GET請求
			conn.setRequestMethod("GET");
			//服務端的響應的時間
			conn.setConnectTimeout(5000);
			//取得到服務端的檔案的總長度
			int max = conn.getContentLength();
			//將進度指示器的最大值設定為要下載的檔案的總長度
			pd.setMax(max);
			//取得到要下載的apk的檔案的輸入流
			InputStream is = conn.getInputStream();
			//設定一個快取區
			byte[] buffer = new byte[1024];
			int len = 0;
			int process = 0;
			while ((len = is.read(buffer)) != -1) {
				fos.write(buffer, 0, len);
				//每讀取一次輸入流，就更新一次下載進度
				process+=len;
				pd.setProgress(process);
				//設定睡眠時間，便於我們觀察下載進度
				Thread.sleep(30);
			}
			//更新快取資料到檔案中
			fos.flush();
			//關流
			fos.close();
			is.close();
			return file;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * 取得一個路徑中的檔名。例如：mobilesafe.apk
	 * 
	 * @param urlpath
	 * @return
	 */
	public static String getFilename(String urlpath) {
		return urlpath
				.substring(urlpath.lastIndexOf("/") + 1, urlpath.length());
	}
}
