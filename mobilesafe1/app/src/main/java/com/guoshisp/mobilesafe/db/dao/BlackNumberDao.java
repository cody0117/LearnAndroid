package com.guoshisp.mobilesafe.db.dao;

import java.util.ArrayList;
import java.util.List;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;

import com.guoshisp.mobilesafe.db.BlackNumberDBOpenHelper;
import com.guoshisp.mobilesafe.domain.BlackNumber;

public class BlackNumberDao {
	private BlackNumberDBOpenHelper helper;

	public BlackNumberDao(Context context) {
		helper = new BlackNumberDBOpenHelper(context);
	}

	/**
	 * 查詢一條黑名單號碼（其傳回值是用於判斷資料庫中是否存在該號碼）
	 */
	public boolean find(String number) {
		// 預設情況下是沒有該條資料
		boolean result = false;
		// 開啟資料庫
		SQLiteDatabase db = helper.getReadableDatabase();
		if (db.isOpen()) {
			// 執行查詢敘述後，傳回一個結果集
			Cursor cursor = db.rawQuery(
					"select * from blacknumber where number =?",
					new String[] { number });
			// 預設情況下，游標指標指向在第一條資料的上方
			if (cursor.moveToFirst()) {
				// 傳回true，說明資料庫中已經存在了該條資料
				result = true;
			}
			// 關閉資料庫
			cursor.close();
			db.close();
		}
		return result;
	}

	/**
	 * 查詢一條黑名單號碼的攔截模式
	 */
	public int findNumberMode(String number) {
		// 攔截模式只有3種：0代表攔截簡訊，1代表攔截電話，2代表攔截簡訊與電話。這裡的預設值為-1，表示的是沒有標示攔截模式
		int result = -1;
		SQLiteDatabase db = helper.getReadableDatabase();
		if (db.isOpen()) {
			// 由於一條號碼值對應一個攔截模式，所以，該結果集中只有一條資料
			Cursor cursor = db.rawQuery(
					"select mode from blacknumber where number =?",
					new String[] { number });
			if (cursor.moveToFirst()) {
				// 取得第一條資料（也僅有一條資料）
				result = cursor.getInt(0);
			}
			cursor.close();
			db.close();
		}
		return result;
	}

	/**
	 * 加入一條黑名單號碼
	 */
	public boolean add(String number, String mode) {
		// 首先判斷資料庫中是否已經存在該條資料， 防止加入重復的資料顯示到黑名單清單中
		if (find(number))
			// 若果資料庫中已經存在要加入的資料，直接停止掉該方法的執行
			return false;
		SQLiteDatabase db = helper.getWritableDatabase();
		if (db.isOpen()) {
			// 執行加入資料的SQL敘述
			db.execSQL("insert into blacknumber (number,mode) values (?,?)",
					new Object[] { number, mode });
			db.close();
		}
		// 若果程式碼能夠執行到這一步，說明上面的加入動作也執行了。所以查詢的傳回值必定為true
		return find(number);
	}

	/**
	 * 移除一條黑名單號碼
	 */
	public void delete(String number) {
		SQLiteDatabase db = helper.getWritableDatabase();
		if (db.isOpen()) {
			// 執行移除動作
			db.execSQL("delete from blacknumber where number=?",
					new Object[] { number });
			db.close();
		}
	}

	/**
	 * 變更黑名單號碼
	 * 
	 * @param oldnumber
	 *            舊的的電話號碼
	 * @param newnumber
	 *            新的號碼 可以留空
	 * @param mode
	 *            新的模式
	 */
	public void update(String oldnumber, String newnumber, String mode) {

		SQLiteDatabase db = helper.getWritableDatabase();
		if (db.isOpen()) {
			if (TextUtils.isEmpty(newnumber)) {
				// 若果新的號碼為空的話，則說明使用者並沒有修改該號碼（ListView中的item設定有移除功能）
				newnumber = oldnumber;
			}
			// 執行更新動作
			db.execSQL(
					"update blacknumber set number=?, mode=? where number=?",
					new Object[] { newnumber, mode, oldnumber });
			db.close();
		}
	}

	/**
	 * 查詢全部的黑名單號碼
	 * 
	 * @return
	 */
	public List<BlackNumber> findAll() {
		//定義好要傳回的物件
		List<BlackNumber> numbers = new ArrayList<BlackNumber>();
		SQLiteDatabase db = helper.getReadableDatabase();
		if (db.isOpen()) {
			//查詢blacknumber表中的所有號碼
			Cursor cursor = db.rawQuery("select number,mode from blacknumber",
					null);
			//循環檢查結果集，將每個結果集封裝後新增到集合中
			while (cursor.moveToNext()) {
				BlackNumber blackNumber = new BlackNumber();
				blackNumber.setNumber(cursor.getString(0));
				blackNumber.setMode(cursor.getInt(1));
				numbers.add(blackNumber);
				blackNumber = null;
			}
			cursor.close();
			db.close();
		}
		return numbers;
	}
}
