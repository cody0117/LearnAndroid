package com.guoshisp.mobilesafe.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.net.Uri;

import com.guoshisp.mobilesafe.db.dao.AppLockDao;
/**
 * 在內容提供者中，我們只需要關心對資料庫的增、刪動作。
 * @author Administrator
 *
 */
public class AppLockDBProvider extends ContentProvider {
	private static final int ADD = 1;
	// content://com.guoshisp.applock/ADD
	// content://com.guoshisp.applock/DELETE
	//取得動作資料庫的物件
	private AppLockDao dao;
	//定義比對碼
	private static final int DELETE = 2;
	public static UriMatcher matcher = new UriMatcher(UriMatcher.NO_MATCH);
	//定義比對路徑
	static {
		//比對Uri。參數一：主電腦名，參數二：指定資料庫中的表名或是一些業務邏輯（add、delete等）
		//參數三：比對碼。也即執行比對時判斷比對是否正確：matcher.match(uri)
		matcher.addURI("com.guoshisp.applock", "ADD", ADD);
		matcher.addURI("com.guoshisp.applock", "DELETE", DELETE);
	}
	@Override
	public boolean onCreate() {
		dao = new AppLockDao(getContext());
		return false;
	}
	
	@Override
	public Cursor query(Uri uri, String[] projection, String selection,
			String[] selectionArgs, String sortOrder) {
		return null;
	}

	@Override
	public String getType(Uri uri) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Uri insert(Uri uri, ContentValues values) {
		//比對URI
		int result = matcher.match(uri);
		//判斷是否是加入的比對動作
		if (result == ADD) {
			//取得到加入的套件名稱（ContentValues是在Item被點擊是加入的）
			String packname = values.getAsString("packname");
			//新增到資料庫中
			dao.add(packname);
			//發布內容的變化知會
			getContext().getContentResolver().notifyChange(uri, null);
		}
		return null;
	}
	
	@Override
	public int delete(Uri uri, String selection, String[] selectionArgs) {
		int result = matcher.match(uri);
		if (result == DELETE) {
			dao.delete(selectionArgs[0]);
			//發布內容的變化知會
			getContext().getContentResolver().notifyChange(uri, null);
		}
		return 0;
	}

	@Override
	public int update(Uri uri, ContentValues values, String selection,
			String[] selectionArgs) {
		return 0;
	}
}
