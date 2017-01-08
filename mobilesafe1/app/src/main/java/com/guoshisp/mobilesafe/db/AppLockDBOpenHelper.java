package com.guoshisp.mobilesafe.db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;

public class AppLockDBOpenHelper extends SQLiteOpenHelper {

	public AppLockDBOpenHelper(Context context) {
		//參數一：套用上下文，參數二：資料庫名稱
		//參數三：游標工廠物件，null表示使用系統預設的游標工廠物件，參數四：版本號
		super(context, "applock.db", null, 1);
	}
	
	/**
	 * 資料庫第一次被建立的時候執行該方法
	 * 在該方法中，一般用於指定資料庫的表結構
	 */
	@Override
	public void onCreate(SQLiteDatabase db) {
		//建立程式鎖的表 (表中包括_id,套件名稱 )
		db.execSQL("create table applock (_id integer primary key autoincrement, packname varchar(20))");
	}

	/**
	 * 當資料庫的版本號 發生增加的時候呼叫的方法.
	 * 一般用於陞級程式後,更新資料庫的表結構.
	 */
	@Override
	public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
		
	}

}
