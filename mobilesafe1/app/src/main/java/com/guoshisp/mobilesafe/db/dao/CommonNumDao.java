package com.guoshisp.mobilesafe.db.dao;

import java.util.ArrayList;
import java.util.List;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

public class CommonNumDao {

	/**
	 * 傳回資料庫有多少個分群組
	 * 
	 * @return
	 */
	public static int getGroupCount() {
		int count = 0;
		// 所要開啟的資料庫在手機系統中的位置
		String path = "/data/data/com.guoshisp.mobilesafe/files/commonnum.db";
		// 開啟資料庫
		SQLiteDatabase db = SQLiteDatabase.openDatabase(path, null,
				SQLiteDatabase.OPEN_READONLY);
		if (db.isOpen()) {
			// 從classlist表中查詢出有多少群組公用號碼
			Cursor cursor = db.rawQuery("select * from classlist", null);
			count = cursor.getCount();
			// 使用完資料庫後需要關閉
			cursor.close();
			db.close();
		}
		return count;
	}

	/**
	 * 取得所有的分群組集合訊息（也即每個分群組的名字）
	 * 
	 * @return
	 */
	public static List<String> getGroupNames() {
		// 用於存放各個分群組的名字訊息
		List<String> groupNames = new ArrayList<String>();
		String path = "/data/data/com.guoshisp.mobilesafe/files/commonnum.db";
		SQLiteDatabase db = SQLiteDatabase.openDatabase(path, null,
				SQLiteDatabase.OPEN_READONLY);
		if (db.isOpen()) {
			// 取得各個分群組的名字的結果集（游標）
			Cursor cursor = db.rawQuery("select name from classlist", null);
			// 檢查出每個分群組對應的名字
			while (cursor.moveToNext()) {
				String groupName = cursor.getString(0);
				groupNames.add(groupName);
				groupName = null;
			}
			cursor.close();
			db.close();
		}
		return groupNames;
	}

	/**
	 * 透過點擊的分群組對應的id來取得某該分群組名稱
	 * 
	 * @param groupPosition
	 * @return
	 */
	public static String getGroupNameByPosition(int groupPosition) {
		String name = null;
		String path = "/data/data/com.guoshisp.mobilesafe/files/commonnum.db";
		// 因為classlist表中的name的id是從1開始的，而ExpandableListView中的id是從0開始的
		int newposition = groupPosition + 1;
		SQLiteDatabase db = SQLiteDatabase.openDatabase(path, null,
				SQLiteDatabase.OPEN_READONLY);
		if (db.isOpen()) {
			// 透過id的查詢，來取得該id多對應的name
			Cursor cursor = db.rawQuery(
					"select name from classlist where idx=?",
					new String[] { newposition + "" });
			if (cursor.moveToFirst()) {// cursor指標的預設位置是在第一條資料上面的，所以，想取得資料的話，指標必須往下搬移
				// 因為一個id只是對應一個name，所以只需要取得到第一個即可
				name = cursor.getString(0);
			}
			cursor.close();
			db.close();
		}
		return name;
	}

	/**
	 * 取得對應的分群組裡面有多少個子孩子（也即每個分群組裡面有多少條號碼）
	 * 而每個孩子都各自對應一張表，所以在查詢子孩子的訊息的時候需要確定是查詢哪張孩子所對應的表：table+position
	 * @param groupPosition
	 * @return
	 */
	public static int getChildrenCount(int groupPosition) {
		int count = 0;
		String path = "/data/data/com.guoshisp.mobilesafe/files/commonnum.db";
		// 開啟資料庫
		SQLiteDatabase db = SQLiteDatabase.openDatabase(path, null,
				SQLiteDatabase.OPEN_READONLY);
		// 因為groupPosition的起始值是從開始的，而table表中的_id是從1開始的
		int newposition = groupPosition + 1;
		String sql = "select * from table" + newposition;
		if (db.isOpen()) {
			Cursor cursor = db.rawQuery(sql, null);
			// 取得到查詢結果的所有列數（也相當於有多少條號碼）
			count = cursor.getCount();
			cursor.close();
			db.close();
		}
		return count;
	}

	/**
	 * 取得對應位置的子孩子的訊息。
	 * 而每個孩子都各自對應一張表，所以在查詢子孩子的訊息的時候需要確定是查詢哪張孩子所對應的表：table+position
	 */
	public static String getChildNameByPosition(int groupPosition,
			int childPosition) {
		String result = null;
		String path = "/data/data/com.guoshisp.mobilesafe/files/commonnum.db";
		SQLiteDatabase db = SQLiteDatabase.openDatabase(path, null,
				SQLiteDatabase.OPEN_READONLY);
		int newGroupPosition = groupPosition + 1;
		int newChildPosition = childPosition + 1;
		// 查詢子孩子的name和number
		String sql = "select name,number from table" + newGroupPosition
				+ " where _id=?";
		if (db.isOpen()) {
			Cursor cursor = db.rawQuery(sql, new String[] { newChildPosition
					+ "" });
			if (cursor.moveToFirst()) {
				//因為查詢的是name和number，且name在前，number在後，所以是兩條訊息
				String name = cursor.getString(0);
				String number = cursor.getString(1);
				result = name + "\n" + number;
			}
			cursor.close();
			db.close();
		}
		return result;
	}

	/**
	 * 取得每一個分群組所有的子孩子的訊息（name和number）
	 * 而每個孩子都各自對應一張表，所以在查詢子孩子的訊息的時候需要確定是查詢哪張孩子所對應的表：table+position
	 */
	public static List<String> getChildNameByPosition(int groupPosition) {
		String result = null;
		List<String> results = new ArrayList<String>();
		String path = "/data/data/com.guoshisp.mobilesafe/files/commonnum.db";
		SQLiteDatabase db = SQLiteDatabase.openDatabase(path, null,
				SQLiteDatabase.OPEN_READONLY);
		int newGroupPosition = groupPosition + 1;
		// 查詢子孩子的name和number
		String sql = "select name,number from table" + newGroupPosition;
		if (db.isOpen()) {
			Cursor cursor = db.rawQuery(sql, null);
			while (cursor.moveToNext()) {
				//因為查詢的是name和number，且name在前，number在後，所以是兩條訊息
				String name = cursor.getString(0);
				String number = cursor.getString(1);
				result = name + "\n" + number;
				results.add(result);
				result = null;
			}
			cursor.close();
			db.close();
		}
		return results;
	}

}
