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
	 * 取得病毒的訊息  若果沒有取得到傳回空
	 * @param md5
	 * @return
	 */
	public String getVirusInfo(String md5){
		//預設情況下，沒有取得到病毒訊息
		String result = null;
		//病毒資料庫的路徑
		String path = "/data/data/com.guoshisp.mobilesafe/files/antivirus.db";
		//開啟資料庫
		SQLiteDatabase db = SQLiteDatabase.openDatabase(path, null,
				SQLiteDatabase.OPEN_READONLY);
		if(db.isOpen()){
			//執行查詢動作，傳回一個結果集
			Cursor cursor = db.rawQuery("select desc from datable where md5=?", new String[]{md5});
			if(cursor.moveToFirst()){
				result = cursor.getString(0);
			}
			//必須關機的游標，若果沒有關閉，即使關閉了資料庫，也容易報出記憶體洩漏的例外訊息
			cursor.close();
			db.close();
		}
		return result;
	}
}
