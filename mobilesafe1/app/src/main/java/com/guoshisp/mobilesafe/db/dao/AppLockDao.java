package com.guoshisp.mobilesafe.db.dao;

import java.util.ArrayList;
import java.util.List;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

import com.guoshisp.mobilesafe.db.AppLockDBOpenHelper;

public class AppLockDao {
	private AppLockDBOpenHelper helper;

	public AppLockDao(Context context) {
		helper = new AppLockDBOpenHelper(context);
	}
	/**
	 * �d�ߤ@����w�{�����M��W��
	 * return true�N��d�ߨ�ӮM��W��   false�N��S���d�ߨ�ӮM��W��
	 */
	public boolean find(String packname) {
		boolean result = false;
		//�}�Ҹ�Ʈw
		SQLiteDatabase db = helper.getReadableDatabase();
		if (db.isOpen()) {
			//����d��SQL�ԭz�A�Ǧ^�@�ӵ��G���C
			Cursor cursor = db.rawQuery(
					"select * from applock where packname =?",
					new String[] { packname });
			if (cursor.moveToFirst()) {
				result = true;
			}
			//������Ʈw
			cursor.close();
			db.close();
		}
		return result;
	}
	/**
	 * �[�J�@����w���{�����M��W��
	 */
	public boolean add(String packname) {
		//�����d�ߤ@�Ӹ�Ʈw���O�_�s�b�ӱ���ơA����_�[�J
		if (find(packname))
			return false;
		SQLiteDatabase db = helper.getWritableDatabase();
		if (db.isOpen()) {
			//����[�J��SQL�ԭz
			db.execSQL("insert into applock (packname) values (?)",
					new Object[] { packname });
			db.close();
		}
		return find(packname);
	}

	/**
	 * �����@���M��W��
	 */
	public void delete(String packname) {
		SQLiteDatabase db = helper.getWritableDatabase();
		if (db.isOpen()) {
			//���沾����SQL�ԭz
			db.execSQL("delete from applock where packname=?",
					new Object[] { packname });
			db.close();
		}
	}
	/**
	 * �d�ߥ����Q��w���M�ήM��W��
	 * 
	 * @return
	 */
	public List<String> findAll() {
		List<String> packnames = new ArrayList<String>();
		SQLiteDatabase db = helper.getReadableDatabase();
		if (db.isOpen()) {
			Cursor cursor = db.rawQuery("select packname from applock",
					null);
			while (cursor.moveToNext()) {
				packnames.add(cursor.getString(0));
			}
			cursor.close();
			db.close();
		}
		return packnames;
	}
}
