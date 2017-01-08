package com.dvstudio.provider;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class POSDBHelper extends SQLiteOpenHelper{
    // 資料庫名稱常數
    private static final String DATABASE_NAME = "Wireless.db";
    // 資料庫版本常數
    private static final int DATABASE_VERSION = 2;
    // 資料表名稱常數
    public static final String TABLES_TABLE_NAME = "TableTbl";
    public static final String TABLES_TABLE_NAME2 = "MenuTbl";
    
	//private SQLiteDatabase db;

	// 建構子
	public POSDBHelper(Context context) {
		// 建立資料庫
		super(context, DATABASE_NAME, null, DATABASE_VERSION);
	}

	// 建立時呼叫
	public void onCreate(SQLiteDatabase db) {
		//this.db = db;
		
		//
        db.execSQL("CREATE TABLE " + TABLES_TABLE_NAME + " ("
                + POSTables._ID + " INTEGER PRIMARY KEY,"
                + POSTables.NUM + " INTEGER,"
                + POSTables.DESCRIPTION + " TEXT"
                + ");");
        //
                
        db.execSQL("CREATE TABLE " + TABLES_TABLE_NAME2 + " ("
                + POSMenus._ID + " INTEGER PRIMARY KEY,"
                + POSMenus.TYPE_ID + " INTEGER,"
                + POSMenus.NAME + " TEXT,"
                + POSMenus.PRICE + " INTEGER,"
                + POSMenus.PIC + " TEXT,"
                + POSMenus.REMARK + " TEXT"
                + ");");
        //
	}

	// 版本更新時呼叫
	public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
		// 刪除資料表
		//db.execSQL("DROP TABLE IF EXISTS " + TABLES_TABLE_NAME);
		db.execSQL("DROP TABLE IF EXISTS " + TABLES_TABLE_NAME2);
        onCreate(db);
	}

}
