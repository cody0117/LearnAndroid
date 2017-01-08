package com.guoshisp.mobilesafe.db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;

public class BlackNumberDBOpenHelper extends SQLiteOpenHelper {
	
	public BlackNumberDBOpenHelper(Context context) {
		//�ѼƤ@�G�W�U�媫��A�ѼƤG�G��Ʈw�W�١A�ѼƤT�G��Фu�t����Anull��ܨϥΨt�ιw�]���A�Ѽƥ|�G�ثe��Ʈw��������
		super(context, "blacknumber.db", null, 1);
	}
	
	/**
	 * ��Ʈw�Ĥ@���Q�إߪ��ɭ԰��� oncreate().
	 * �@��Ω���w��Ʈw�����c
	 */
	@Override
	public void onCreate(SQLiteDatabase db) {
		//�¦W�渹�X�����c �]_id , �¦W�渹�X, �d�I�Ҧ��]0 ��ܹq���d�I �A1���²�T�d�I �A2��ܥ����d�I�]�q��&²�T�^�^
		db.execSQL("create table blacknumber (_id integer primary key autoincrement, number varchar(20), mode integer)");
	}

	/**
	 * ���Ʈw�����������Ū��ɭ� �I�s����k.
	 * �@��Ω󰥯ŵ{����,��s��Ʈw�����c.
	 */
	@Override
	public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {

	}

}
