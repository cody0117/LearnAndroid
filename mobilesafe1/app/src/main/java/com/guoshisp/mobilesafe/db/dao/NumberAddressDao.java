package com.guoshisp.mobilesafe.db.dao;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

/**
 * 號碼歸屬地查詢-動作資料庫
 * @author
 */
public class NumberAddressDao {

	/**
	 * 取得電話號碼的歸屬地
	 * @param number
	 * @return
	 */
	public static String getAddress(String number) {
		// 若果沒有查詢到號碼的歸屬地 ，就傳回目前的電話號碼
		String address = number;
		//資料庫在手機系統中的全路徑
		String path = "/data/data/com.guoshisp.mobilesafe/files/address.db";
		//開啟資料庫。參數二：CursorFactory游標工廠，null表示使用系統預設的
		SQLiteDatabase db = SQLiteDatabase.openDatabase(path, null,
				SQLiteDatabase.OPEN_READONLY);
		//判斷資料庫是否被開啟
		if (db.isOpen()) {
			// 判斷號碼的型態.
			if (number.matches("^1[3458]\\d{9}$")) {// 手機號碼 ^代表開始   開始為1  第二位可以是3458  \d表示0-9的一個數字 \是用於轉意“\” ｛9｝表示有9個數字，這裡表示的是有9個0-9的數字
				//傳回一個查詢的結果集
				Cursor cursor = db
						.rawQuery(
								"select city from address_tb where _id=(select outkey from numinfo where mobileprefix =?)",
								new String[] { number.substring(0, 7) });//比對手機的前七位
				if (cursor.moveToFirst()) {
					address = cursor.getString(0);//取得第0列即可
				}
				cursor.close();

			} else {// 其他號碼 (固定電話)  
				Cursor cursor;
				switch (number.length()) {//號碼的長度
				case 4:
					address = "類比器";
					break;
				case 7://本機號碼不顯示區號
					address = "本機號碼";
					break;
				case 8:
					address = "本機號碼";
					break;
				case 10:
					//從查詢傳回結果中取得第一條資料  （limit表示只取得第一條資料）
					cursor = db
							.rawQuery(
									"select city from address_tb where area = ? limit 1",
									new String[] { number.substring(0, 3) });
					if (cursor.moveToFirst()) {
						address = cursor.getString(0);
					}
					cursor.close();
					break;
				case 12://4位的區號+8位號碼
					cursor = db
							.rawQuery(
									"select city from address_tb where area = ? limit 1",
									new String[] { number.substring(0, 4) });
					if (cursor.moveToFirst()) {
						address = cursor.getString(0);
					}
					cursor.close();
					break;
				case 11://3位區號+8位的號碼，或是是4位的區號+7位號碼
					cursor = db
							.rawQuery(
									"select city from address_tb where area = ? limit 1",
									new String[] { number.substring(0, 3) });
					if (cursor.moveToFirst()) {
						address = cursor.getString(0);
					}
					cursor.close();
					cursor = db
							.rawQuery(
									"select city from address_tb where area = ? limit 1",
									new String[] { number.substring(0, 4) });
					if (cursor.moveToFirst()) {
						address = cursor.getString(0);
					}
					cursor.close();
					break;
				}
			}

			db.close();
		}

		return address;
	}
}
