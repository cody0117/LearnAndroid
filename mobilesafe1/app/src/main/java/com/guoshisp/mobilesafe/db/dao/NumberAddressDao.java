package com.guoshisp.mobilesafe.db.dao;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

/**
 * ���X�k�ݦa�d��-�ʧ@��Ʈw
 * @author
 */
public class NumberAddressDao {

	/**
	 * ���o�q�ܸ��X���k�ݦa
	 * @param number
	 * @return
	 */
	public static String getAddress(String number) {
		// �Y�G�S���d�ߨ츹�X���k�ݦa �A�N�Ǧ^�ثe���q�ܸ��X
		String address = number;
		//��Ʈw�b����t�Τ��������|
		String path = "/data/data/com.guoshisp.mobilesafe/files/address.db";
		//�}�Ҹ�Ʈw�C�ѼƤG�GCursorFactory��Фu�t�Anull��ܨϥΨt�ιw�]��
		SQLiteDatabase db = SQLiteDatabase.openDatabase(path, null,
				SQLiteDatabase.OPEN_READONLY);
		//�P�_��Ʈw�O�_�Q�}��
		if (db.isOpen()) {
			// �P�_���X�����A.
			if (number.matches("^1[3458]\\d{9}$")) {// ������X ^�N��}�l   �}�l��1  �ĤG��i�H�O3458  \d���0-9���@�ӼƦr \�O�Ω���N��\�� �a9�b��ܦ�9�ӼƦr�A�o�̪�ܪ��O��9��0-9���Ʀr
				//�Ǧ^�@�Ӭd�ߪ����G��
				Cursor cursor = db
						.rawQuery(
								"select city from address_tb where _id=(select outkey from numinfo where mobileprefix =?)",
								new String[] { number.substring(0, 7) });//��������e�C��
				if (cursor.moveToFirst()) {
					address = cursor.getString(0);//���o��0�C�Y�i
				}
				cursor.close();

			} else {// ��L���X (�T�w�q��)  
				Cursor cursor;
				switch (number.length()) {//���X������
				case 4:
					address = "����";
					break;
				case 7://�������X����ܰϸ�
					address = "�������X";
					break;
				case 8:
					address = "�������X";
					break;
				case 10:
					//�q�d�߶Ǧ^���G�����o�Ĥ@�����  �]limit��ܥu���o�Ĥ@����ơ^
					cursor = db
							.rawQuery(
									"select city from address_tb where area = ? limit 1",
									new String[] { number.substring(0, 3) });
					if (cursor.moveToFirst()) {
						address = cursor.getString(0);
					}
					cursor.close();
					break;
				case 12://4�쪺�ϸ�+8�츹�X
					cursor = db
							.rawQuery(
									"select city from address_tb where area = ? limit 1",
									new String[] { number.substring(0, 4) });
					if (cursor.moveToFirst()) {
						address = cursor.getString(0);
					}
					cursor.close();
					break;
				case 11://3��ϸ�+8�쪺���X�A�άO�O4�쪺�ϸ�+7�츹�X
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