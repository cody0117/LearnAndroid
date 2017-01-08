package com.guoshisp.mobilesafe.utils;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.res.AssetManager;

/**
 * 資產檔案覆制的工具類別
 * 
 * @author
 * 
 */
public class AssetCopyUtil {
	private Context context;

	public AssetCopyUtil(Context context) {
		this.context = context;
	}

	/**
	 * 覆制資產目錄下的檔案
	 * 
	 * @param srcfilename
	 *            源檔案的名稱
	 * @param file
	 *            目的檔案的物件
	 * @param pd
	 *            進度指示器交談視窗
	 * @return 是否覆制成功
	 */
	public boolean copyFile(String srcfilename, File file, ProgressDialog pd) {
		try {
			// 取得到資產目錄的管理器。因為資料庫存放在該目錄下
			AssetManager am = context.getAssets();
			// 開啟資產目錄下的資源檔案，取得一個輸入流物件
			InputStream is = am.open(srcfilename);
			// 取得到該檔案的位元組數
			int max = is.available();
			// 設定進度指示器顯示的最大進度
			pd.setMax(max);
			// 建立一個輸出流檔案，用於接收輸入流
			FileOutputStream fos = new FileOutputStream(file);
			// 建立一個快取區
			byte[] buffer = new byte[1024];
			int len = 0;
			// 進度指示器的最開始的位置應該為0
			int process = 0;
			while ((len = is.read(buffer)) != -1) {
				fos.write(buffer, 0, len);
				// 讓進度指示器不斷的動態顯示目前的覆制進度
				process += len;
				pd.setProgress(process);
			}
			// 更新緩沖區，關流
			fos.flush();
			fos.close();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

	/**
	 * 從資產目錄覆制檔案
	 * 
	 * @param context
	 * @param filename
	 *            資產目錄的檔案的名稱
	 * @param destfilename
	 *            目的檔案的路徑
	 * @return
	 */
	public static File copy1(Context context, String filename,
			String destfilename, ProgressDialog pd) {

		try {
			InputStream in = context.getAssets().open(filename);
			int max = in.available();
			if (pd != null) {
				pd.setMax(max);
			}

			File file = new File(destfilename);
			OutputStream out = new FileOutputStream(file);
			byte[] byt = new byte[1024];
			int len = 0;
			int total = 0;
			while ((len = in.read(byt)) != -1) {
				out.write(byt, 0, len);
				total += len;
				if (pd != null) {
					pd.setProgress(total);
				}
			}
			out.flush();
			out.close();
			in.close();

			return file;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
