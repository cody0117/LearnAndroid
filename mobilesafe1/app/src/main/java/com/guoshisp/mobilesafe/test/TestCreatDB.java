package com.guoshisp.mobilesafe.test;

import android.database.sqlite.SQLiteDatabase;
import android.test.AndroidTestCase;

import com.guoshisp.mobilesafe.db.BlackNumberDBOpenHelper;

public class TestCreatDB extends AndroidTestCase {
	public void testCreateDB() throws Exception {
		//���ո�Ʈwblacknumber.db�O�_�|�Q�إ�.
		BlackNumberDBOpenHelper helper = new BlackNumberDBOpenHelper(
				getContext());
		SQLiteDatabase db = helper.getWritableDatabase();
	}
}
