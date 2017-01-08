package com.dvstudio.provider;

import android.content.ContentProvider;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.text.TextUtils;

import java.util.HashMap;

public class POSMenuProvider extends ContentProvider{
	// 資料庫輔助類別
	private POSDBHelper dbHelper;
    // Uri工具類別
    private static final UriMatcher sUriMatcher;
    // 查詢、更新條件
    private static final int MENUS = 1;
    private static final int MENUS_ID = 2;
    // 查詢欄位集合
    private static HashMap<String, String> menuProjectionMap;
    static {
    	// Uri匹配工具類別
        sUriMatcher = new UriMatcher(UriMatcher.NO_MATCH);
        sUriMatcher.addURI(POSMenus.AUTHORITY, "menu1", MENUS);
        sUriMatcher.addURI(POSMenus.AUTHORITY, "menu1/#", MENUS_ID);
        // 實例化查詢欄位集合
        menuProjectionMap = new HashMap<String, String>();
        // 添加查詢欄位
        menuProjectionMap.put(POSMenus._ID, POSMenus._ID);
        menuProjectionMap.put(POSMenus.NAME, POSMenus.NAME);
        menuProjectionMap.put(POSMenus.PIC, POSMenus.PIC);
        menuProjectionMap.put(POSMenus.PRICE, POSMenus.PRICE);
        menuProjectionMap.put(POSMenus.REMARK, POSMenus.REMARK);
        menuProjectionMap.put(POSMenus.TYPE_ID, POSMenus.TYPE_ID);
    }

	// 建立時呼叫
	public boolean onCreate() {
		// 實例化資料庫輔助類別
		dbHelper = new POSDBHelper(getContext());
		return true;
	}
	// 添加方法
	public Uri insert(Uri uri, ContentValues values) {
		// 取得資料庫實例
		SQLiteDatabase db = dbHelper.getWritableDatabase();
		// 插入資料，返回列ID
		long rowId = db.insert(POSDBHelper.TABLES_TABLE_NAME2,null, values);
		// 如人插入成功返回uri
        if (rowId > 0) {
            Uri empUri = ContentUris.withAppendedId(POSMenus.CONTENT_URI, rowId);
            getContext().getContentResolver().notifyChange(empUri, null);
            return empUri;
        }
		return null;
	}
	

	// 取得類型
	public String getType(Uri uri) {
		return null;
	}

	// 查詢方法
	public Cursor query(Uri uri, String[] projection, String selection,
			String[] selectionArgs, String sortOrder) {
		 SQLiteQueryBuilder qb = new SQLiteQueryBuilder();
	        switch (sUriMatcher.match(uri)) {
	        // 查詢全部
	        case MENUS:
	            qb.setTables(POSDBHelper.TABLES_TABLE_NAME2);
	            qb.setProjectionMap(menuProjectionMap);
	            break;
	        // 根據ID查詢
	        case MENUS_ID:
	            qb.setTables(POSDBHelper.TABLES_TABLE_NAME2);
	            qb.setProjectionMap(menuProjectionMap);
	            qb.appendWhere(POSMenus._ID + "=" + uri.getPathSegments().get(1));
	            break;
	        default:
	            throw new IllegalArgumentException("Uri錯誤！ " + uri);
	        }

	        // 使用預設排序
	        String orderBy;
	        if (TextUtils.isEmpty(sortOrder)) {
	            orderBy = POSMenus.DEFAULT_SORT_ORDER;
	        } else {
	            orderBy = sortOrder;
	        }

	        // 取得資料庫實例
	        SQLiteDatabase db = dbHelper.getReadableDatabase();
	        // 返回游標集合
	        Cursor c = qb.query(db, projection, selection, selectionArgs, null, null, orderBy);
	        c.setNotificationUri(getContext().getContentResolver(), uri);
	        return c;
	}
	
	@Override
	public int delete(Uri uri, String selection, String[] selectionArgs) {
		// 取得資料庫實例
		SQLiteDatabase db = dbHelper.getWritableDatabase();
		db.delete(POSDBHelper.TABLES_TABLE_NAME2, null, null);
		return 0;
	}
	@Override
	public int update(Uri uri, ContentValues values, String selection,
			String[] selectionArgs) {
		return 0;
	}
}
