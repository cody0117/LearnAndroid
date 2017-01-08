package com.guoshisp.mobilesafe.utils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import android.app.ProgressDialog;

/**
 * �U�����u�����O 1.�U���ɮת����| 2.�U���ɮ׫��x�s�����| 3.���� �i�׫��ܾ� 4.�W�U��
 */
public class DownLoadUtil {

	/**
	 * �U���@���ɮ�
	 * 
	 * @param urlpath
	 *            ���|
	 * @param filepath
	 *            �x�s�쥻�����ɮ׸��|
	 * @param pd
	 *            �i�׫��ܾ���͵���
	 * @return	  �U���᪺apk
	 */
	public static File getFile(String urlpath, String filepath,
			ProgressDialog pd) {
		try {
			URL url = new URL(urlpath);
			File file = new File(filepath);
			FileOutputStream fos = new FileOutputStream(file);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			//�U�����ШD�OGET�Ҧ��Aconn���w�]�Ҧ��]�OGET�ШD
			conn.setRequestMethod("GET");
			//�A�Ⱥݪ��T�����ɶ�
			conn.setConnectTimeout(5000);
			//���o��A�Ⱥݪ��ɮת��`����
			int max = conn.getContentLength();
			//�N�i�׫��ܾ����̤j�ȳ]�w���n�U�����ɮת��`����
			pd.setMax(max);
			//���o��n�U����apk���ɮת���J�y
			InputStream is = conn.getInputStream();
			//�]�w�@�ӧ֨���
			byte[] buffer = new byte[1024];
			int len = 0;
			int process = 0;
			while ((len = is.read(buffer)) != -1) {
				fos.write(buffer, 0, len);
				//�CŪ���@����J�y�A�N��s�@���U���i��
				process+=len;
				pd.setProgress(process);
				//�]�w�ίv�ɶ��A�K��ڭ��[��U���i��
				Thread.sleep(30);
			}
			//��s�֨���ƨ��ɮפ�
			fos.flush();
			//���y
			fos.close();
			is.close();
			return file;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * ���o�@�Ӹ��|�����ɦW�C�Ҧp�Gmobilesafe.apk
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