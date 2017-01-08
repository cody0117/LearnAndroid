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
	 * 查詢一條鎖定程式的套件名稱
	 * return true代表查詢到該套件名稱   false代表沒有查詢到該套件名稱
	 */
	public boolean find(String packname) {
		boolean result = false;
		//開啟資料庫
		SQLiteDatabase db = helper.getReadableDatabase();
		if (db.isOpen()) {
			//執行查詢SQL敘述，傳回一個結果集。
			Cursor cursor = db.rawQuery(
					"select * from applock where packname =?",
					new String[] { packname });
			if (cursor.moveToFirst()) {
				result = true;
			}
			//關閉資料庫
			cursor.close();
			db.close();
		}
		return result;
	}
	/**
	 * 加入一條鎖定的程式的套件名稱
	 */
	public boolean add(String packname) {
		//首先查詢一個資料庫中是否存在該條資料，防止重復加入
		if (find(packname))
			return false;
		SQLiteDatabase db = helper.getWritableDatabase();
		if (db.isOpen()) {
			//執行加入的SQL敘述
			db.execSQL("insert into applock (packname) values (?)",
					new Object[] { packname });
			db.close();
		}
		return find(packname);
	}

	/**
	 * 移除一條套件名稱
	 */
	public void delete(String packname) {
		SQLiteDatabase db = helper.getWritableDatabase();
		if (db.isOpen()) {
			//執行移除的SQL敘述
			db.execSQL("delete from applock where packname=?",
					new Object[] { packname });
			db.close();
		}
	}
	/**
	 * 查詢全部被鎖定的套用套件名稱
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