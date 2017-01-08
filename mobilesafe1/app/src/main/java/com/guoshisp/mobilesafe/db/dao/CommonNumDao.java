package com.guoshisp.mobilesafe.db.dao;

import java.util.ArrayList;
import java.util.List;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

public class CommonNumDao {

	/**
	 * �Ǧ^��Ʈw���h�֭Ӥ��s��
	 * 
	 * @return
	 */
	public static int getGroupCount() {
		int count = 0;
		// �ҭn�}�Ҫ���Ʈw�b����t�Τ�����m
		String path = "/data/data/com.guoshisp.mobilesafe/files/commonnum.db";
		// �}�Ҹ�Ʈw
		SQLiteDatabase db = SQLiteDatabase.openDatabase(path, null,
				SQLiteDatabase.OPEN_READONLY);
		if (db.isOpen()) {
			// �qclasslist���d�ߥX���h�ָs�դ��θ��X
			Cursor cursor = db.rawQuery("select * from classlist", null);
			count = cursor.getCount();
			// �ϥΧ���Ʈw��ݭn����
			cursor.close();
			db.close();
		}
		return count;
	}

	/**
	 * ���o�Ҧ������s�ն��X�T���]�]�Y�C�Ӥ��s�ժ��W�r�^
	 * 
	 * @return
	 */
	public static List<String> getGroupNames() {
		// �Ω�s��U�Ӥ��s�ժ��W�r�T��
		List<String> groupNames = new ArrayList<String>();
		String path = "/data/data/com.guoshisp.mobilesafe/files/commonnum.db";
		SQLiteDatabase db = SQLiteDatabase.openDatabase(path, null,
				SQLiteDatabase.OPEN_READONLY);
		if (db.isOpen()) {
			// ���o�U�Ӥ��s�ժ��W�r�����G���]��С^
			Cursor cursor = db.rawQuery("select name from classlist", null);
			// �ˬd�X�C�Ӥ��s�չ������W�r
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
	 * �z�L�I�������s�չ�����id�Ө��o�Y�Ӥ��s�զW��
	 * 
	 * @param groupPosition
	 * @return
	 */
	public static String getGroupNameByPosition(int groupPosition) {
		String name = null;
		String path = "/data/data/com.guoshisp.mobilesafe/files/commonnum.db";
		// �]��classlist����name��id�O�q1�}�l���A��ExpandableListView����id�O�q0�}�l��
		int newposition = groupPosition + 1;
		SQLiteDatabase db = SQLiteDatabase.openDatabase(path, null,
				SQLiteDatabase.OPEN_READONLY);
		if (db.isOpen()) {
			// �z�Lid���d�ߡA�Ө��o��id�h������name
			Cursor cursor = db.rawQuery(
					"select name from classlist where idx=?",
					new String[] { newposition + "" });
			if (cursor.moveToFirst()) {// cursor���Ъ��w�]��m�O�b�Ĥ@����ƤW�����A�ҥH�A�Q���o��ƪ��ܡA���Х������U�h��
				// �]���@��id�u�O�����@��name�A�ҥH�u�ݭn���o��Ĥ@�ӧY�i
				name = cursor.getString(0);
			}
			cursor.close();
			db.close();
		}
		return name;
	}

	/**
	 * ���o���������s�ո̭����h�֭Ӥl�Ĥl�]�]�Y�C�Ӥ��s�ո̭����h�ֱ����X�^
	 * �ӨC�ӫĤl���U�۹����@�i��A�ҥH�b�d�ߤl�Ĥl���T�����ɭԻݭn�T�w�O�d�߭��i�Ĥl�ҹ�������Gtable+position
	 * @param groupPosition
	 * @return
	 */
	public static int getChildrenCount(int groupPosition) {
		int count = 0;
		String path = "/data/data/com.guoshisp.mobilesafe/files/commonnum.db";
		// �}�Ҹ�Ʈw
		SQLiteDatabase db = SQLiteDatabase.openDatabase(path, null,
				SQLiteDatabase.OPEN_READONLY);
		// �]��groupPosition���_�l�ȬO�q�}�l���A��table����_id�O�q1�}�l��
		int newposition = groupPosition + 1;
		String sql = "select * from table" + newposition;
		if (db.isOpen()) {
			Cursor cursor = db.rawQuery(sql, null);
			// ���o��d�ߵ��G���Ҧ��C�ơ]�]�۷�󦳦h�ֱ����X�^
			count = cursor.getCount();
			cursor.close();
			db.close();
		}
		return count;
	}

	/**
	 * ���o������m���l�Ĥl���T���C
	 * �ӨC�ӫĤl���U�۹����@�i��A�ҥH�b�d�ߤl�Ĥl���T�����ɭԻݭn�T�w�O�d�߭��i�Ĥl�ҹ�������Gtable+position
	 */
	public static String getChildNameByPosition(int groupPosition,
			int childPosition) {
		String result = null;
		String path = "/data/data/com.guoshisp.mobilesafe/files/commonnum.db";
		SQLiteDatabase db = SQLiteDatabase.openDatabase(path, null,
				SQLiteDatabase.OPEN_READONLY);
		int newGroupPosition = groupPosition + 1;
		int newChildPosition = childPosition + 1;
		// �d�ߤl�Ĥl��name�Mnumber
		String sql = "select name,number from table" + newGroupPosition
				+ " where _id=?";
		if (db.isOpen()) {
			Cursor cursor = db.rawQuery(sql, new String[] { newChildPosition
					+ "" });
			if (cursor.moveToFirst()) {
				//�]���d�ߪ��Oname�Mnumber�A�Bname�b�e�Anumber�b��A�ҥH�O����T��
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
	 * ���o�C�@�Ӥ��s�թҦ����l�Ĥl���T���]name�Mnumber�^
	 * �ӨC�ӫĤl���U�۹����@�i��A�ҥH�b�d�ߤl�Ĥl���T�����ɭԻݭn�T�w�O�d�߭��i�Ĥl�ҹ�������Gtable+position
	 */
	public static List<String> getChildNameByPosition(int groupPosition) {
		String result = null;
		List<String> results = new ArrayList<String>();
		String path = "/data/data/com.guoshisp.mobilesafe/files/commonnum.db";
		SQLiteDatabase db = SQLiteDatabase.openDatabase(path, null,
				SQLiteDatabase.OPEN_READONLY);
		int newGroupPosition = groupPosition + 1;
		// �d�ߤl�Ĥl��name�Mnumber
		String sql = "select name,number from table" + newGroupPosition;
		if (db.isOpen()) {
			Cursor cursor = db.rawQuery(sql, null);
			while (cursor.moveToNext()) {
				//�]���d�ߪ��Oname�Mnumber�A�Bname�b�e�Anumber�b��A�ҥH�O����T��
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