package com.guoshisp.mobilesafe.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.net.Uri;

import com.guoshisp.mobilesafe.db.dao.AppLockDao;
/**
 * �b���e���Ѫ̤��A�ڭ̥u�ݭn���߹��Ʈw���W�B�R�ʧ@�C
 * @author Administrator
 *
 */
public class AppLockDBProvider extends ContentProvider {
	private static final int ADD = 1;
	// content://com.guoshisp.applock/ADD
	// content://com.guoshisp.applock/DELETE
	//���o�ʧ@��Ʈw������
	private AppLockDao dao;
	//�w�q���X
	private static final int DELETE = 2;
	public static UriMatcher matcher = new UriMatcher(UriMatcher.NO_MATCH);
	//�w�q�����|
	static {
		//���Uri�C�ѼƤ@�G�D�q���W�A�ѼƤG�G���w��Ʈw������W�άO�@�Ƿ~���޿�]add�Bdelete���^
		//�ѼƤT�G���X�C�]�Y������ɧP�_���O�_���T�Gmatcher.match(uri)
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
		//���URI
		int result = matcher.match(uri);
		//�P�_�O�_�O�[�J�����ʧ@
		if (result == ADD) {
			//���o��[�J���M��W�١]ContentValues�O�bItem�Q�I���O�[�J���^
			String packname = values.getAsString("packname");
			//�s�W���Ʈw��
			dao.add(packname);
			//�o�����e���ܤƪ��|
			getContext().getContentResolver().notifyChange(uri, null);
		}
		return null;
	}
	
	@Override
	public int delete(Uri uri, String selection, String[] selectionArgs) {
		int result = matcher.match(uri);
		if (result == DELETE) {
			dao.delete(selectionArgs[0]);
			//�o�����e���ܤƪ��|
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