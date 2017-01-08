package com.guoshisp.mobilesafe.db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;

public class AppLockDBOpenHelper extends SQLiteOpenHelper {

	public AppLockDBOpenHelper(Context context) {
		//�ѼƤ@�G�M�ΤW�U��A�ѼƤG�G��Ʈw�W��
		//�ѼƤT�G��Фu�t����Anull��ܨϥΨt�ιw�]����Фu�t����A�Ѽƥ|�G������
		super(context, "applock.db", null, 1);
	}
	
	/**
	 * ��Ʈw�Ĥ@���Q�إߪ��ɭ԰���Ӥ�k
	 * �b�Ӥ�k���A�@��Ω���w��Ʈw�����c
	 */
	@Override
	public void onCreate(SQLiteDatabase db) {
		//�إߵ{���ꪺ�� (���]�A_id,�M��W�� )
		db.execSQL("create table applock (_id integer primary key autoincrement, packname varchar(20))");
	}

	/**
	 * ���Ʈw�������� �o�ͼW�[���ɭԩI�s����k.
	 * �@��Ω󰥯ŵ{����,��s��Ʈw�����c.
	 */
	@Override
	public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
		
	}

}
