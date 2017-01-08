package com.guoshisp.mobilesafe.db.dao;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

public class AntiVirusDao {
	private Context  context;

	public AntiVirusDao(Context context) {
		this.context = context;
	}
	
	/**
	 * ���o�f�r���T��  �Y�G�S�����o��Ǧ^��
	 * @param md5
	 * @return
	 */
	public String getVirusInfo(String md5){
		//�w�]���p�U�A�S�����o��f�r�T��
		String result = null;
		//�f�r��Ʈw�����|
		String path = "/data/data/com.guoshisp.mobilesafe/files/antivirus.db";
		//�}�Ҹ�Ʈw
		SQLiteDatabase db = SQLiteDatabase.openDatabase(path, null,
				SQLiteDatabase.OPEN_READONLY);
		if(db.isOpen()){
			//����d�߰ʧ@�A�Ǧ^�@�ӵ��G��
			Cursor cursor = db.rawQuery("select desc from datable where md5=?", new String[]{md5});
			if(cursor.moveToFirst()){
				result = cursor.getString(0);
			}
			//������������СA�Y�G�S�������A�Y�������F��Ʈw�A�]�e�����X�O���鬪�|���ҥ~�T��
			cursor.close();
			db.close();
		}
		return result;
	}
}
