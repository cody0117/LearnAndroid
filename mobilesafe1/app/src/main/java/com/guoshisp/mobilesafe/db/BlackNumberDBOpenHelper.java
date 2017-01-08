package com.guoshisp.mobilesafe.db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;

public class BlackNumberDBOpenHelper extends SQLiteOpenHelper {
	
	public BlackNumberDBOpenHelper(Context context) {
		//參數一：上下文物件，參數二：資料庫名稱，參數三：游標工廠物件，null表示使用系統預設的，參數四：目前資料庫的版本號
		super(context, "blacknumber.db", null, 1);
	}
	
	/**
	 * 資料庫第一次被建立的時候執行 oncreate().
	 * 一般用於指定資料庫的表結構
	 */
	@Override
	public void onCreate(SQLiteDatabase db) {
		//黑名單號碼的表結構 （_id , 黑名單號碼, 攔截模式（0 表示電話攔截 ，1表示簡訊攔截 ，2表示全部攔截（電話&簡訊））
		db.execSQL("create table blacknumber (_id integer primary key autoincrement, number varchar(20), mode integer)");
	}

	/**
	 * 當資料庫的版本號陞級的時候 呼叫的方法.
	 * 一般用於陞級程式後,更新資料庫的表結構.
	 */
	@Override
	public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {

	}

}
