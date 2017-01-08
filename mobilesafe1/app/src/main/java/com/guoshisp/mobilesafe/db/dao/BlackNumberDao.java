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
	 * �d�ߤ@���¦W�渹�X�]��Ǧ^�ȬO�Ω�P�_��Ʈw���O�_�s�b�Ӹ��X�^
	 */
	public boolean find(String number) {
		// �w�]���p�U�O�S���ӱ����
		boolean result = false;
		// �}�Ҹ�Ʈw
		SQLiteDatabase db = helper.getReadableDatabase();
		if (db.isOpen()) {
			// ����d�߱ԭz��A�Ǧ^�@�ӵ��G��
			Cursor cursor = db.rawQuery(
					"select * from blacknumber where number =?",
					new String[] { number });
			// �w�]���p�U�A��Ы��Ы��V�b�Ĥ@����ƪ��W��
			if (cursor.moveToFirst()) {
				// �Ǧ^true�A������Ʈw���w�g�s�b�F�ӱ����
				result = true;
			}
			// ������Ʈw
			cursor.close();
			db.close();
		}
		return result;
	}

	/**
	 * �d�ߤ@���¦W�渹�X���d�I�Ҧ�
	 */
	public int findNumberMode(String number) {
		// �d�I�Ҧ��u��3�ءG0�N���d�I²�T�A1�N���d�I�q�ܡA2�N���d�I²�T�P�q�ܡC�o�̪��w�]�Ȭ�-1�A��ܪ��O�S���Х��d�I�Ҧ�
		int result = -1;
		SQLiteDatabase db = helper.getReadableDatabase();
		if (db.isOpen()) {
			// �ѩ�@�����X�ȹ����@���d�I�Ҧ��A�ҥH�A�ӵ��G�����u���@�����
			Cursor cursor = db.rawQuery(
					"select mode from blacknumber where number =?",
					new String[] { number });
			if (cursor.moveToFirst()) {
				// ���o�Ĥ@����ơ]�]�Ȧ��@����ơ^
				result = cursor.getInt(0);
			}
			cursor.close();
			db.close();
		}
		return result;
	}

	/**
	 * �[�J�@���¦W�渹�X
	 */
	public boolean add(String number, String mode) {
		// �����P�_��Ʈw���O�_�w�g�s�b�ӱ���ơA ����[�J���_�������ܨ�¦W��M�椤
		if (find(number))
			// �Y�G��Ʈw���w�g�s�b�n�[�J����ơA��������Ӥ�k������
			return false;
		SQLiteDatabase db = helper.getWritableDatabase();
		if (db.isOpen()) {
			// ����[�J��ƪ�SQL�ԭz
			db.execSQL("insert into blacknumber (number,mode) values (?,?)",
					new Object[] { number, mode });
			db.close();
		}
		// �Y�G�{���X��������o�@�B�A�����W�����[�J�ʧ@�]����F�C�ҥH�d�ߪ��Ǧ^�ȥ��w��true
		return find(number);
	}

	/**
	 * �����@���¦W�渹�X
	 */
	public void delete(String number) {
		SQLiteDatabase db = helper.getWritableDatabase();
		if (db.isOpen()) {
			// ���沾���ʧ@
			db.execSQL("delete from blacknumber where number=?",
					new Object[] { number });
			db.close();
		}
	}

	/**
	 * �ܧ�¦W�渹�X
	 * 
	 * @param oldnumber
	 *            �ª����q�ܸ��X
	 * @param newnumber
	 *            �s�����X �i�H�d��
	 * @param mode
	 *            �s���Ҧ�
	 */
	public void update(String oldnumber, String newnumber, String mode) {

		SQLiteDatabase db = helper.getWritableDatabase();
		if (db.isOpen()) {
			if (TextUtils.isEmpty(newnumber)) {
				// �Y�G�s�����X���Ū��ܡA�h�����ϥΪ̨èS���ק�Ӹ��X�]ListView����item�]�w�������\��^
				newnumber = oldnumber;
			}
			// �����s�ʧ@
			db.execSQL(
					"update blacknumber set number=?, mode=? where number=?",
					new Object[] { newnumber, mode, oldnumber });
			db.close();
		}
	}

	/**
	 * �d�ߥ������¦W�渹�X
	 * 
	 * @return
	 */
	public List<BlackNumber> findAll() {
		//�w�q�n�n�Ǧ^������
		List<BlackNumber> numbers = new ArrayList<BlackNumber>();
		SQLiteDatabase db = helper.getReadableDatabase();
		if (db.isOpen()) {
			//�d��blacknumber�����Ҧ����X
			Cursor cursor = db.rawQuery("select number,mode from blacknumber",
					null);
			//�`���ˬd���G���A�N�C�ӵ��G���ʸ˫�s�W�춰�X��
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