package com.guoshisp.mobilesafe.utils;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.res.AssetManager;

/**
 * �겣�ɮ��Ш�u�����O
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
	 * �Ш�겣�ؿ��U���ɮ�
	 * 
	 * @param srcfilename
	 *            ���ɮת��W��
	 * @param file
	 *            �ت��ɮת�����
	 * @param pd
	 *            �i�׫��ܾ���͵���
	 * @return �O�_�Ш�\
	 */
	public boolean copyFile(String srcfilename, File file, ProgressDialog pd) {
		try {
			// ���o��겣�ؿ����޲z���C�]����Ʈw�s��b�ӥؿ��U
			AssetManager am = context.getAssets();
			// �}�Ҹ겣�ؿ��U���귽�ɮסA���o�@�ӿ�J�y����
			InputStream is = am.open(srcfilename);
			// ���o����ɮת��줸�ռ�
			int max = is.available();
			// �]�w�i�׫��ܾ���ܪ��̤j�i��
			pd.setMax(max);
			// �إߤ@�ӿ�X�y�ɮסA�Ω󱵦���J�y
			FileOutputStream fos = new FileOutputStream(file);
			// �إߤ@�ӧ֨���
			byte[] buffer = new byte[1024];
			int len = 0;
			// �i�׫��ܾ����̶}�l����m���Ӭ�0
			int process = 0;
			while ((len = is.read(buffer)) != -1) {
				fos.write(buffer, 0, len);
				// ���i�׫��ܾ����_���ʺA��ܥثe���Ш�i��
				process += len;
				pd.setProgress(process);
			}
			// ��s�w�R�ϡA���y
			fos.flush();
			fos.close();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

	/**
	 * �q�겣�ؿ��Ш��ɮ�
	 * 
	 * @param context
	 * @param filename
	 *            �겣�ؿ����ɮת��W��
	 * @param destfilename
	 *            �ت��ɮת����|
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