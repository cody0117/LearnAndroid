package com.guoshisp.mobilesafe.engine;

import java.util.ArrayList;
import java.util.List;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;

import com.guoshisp.mobilesafe.domain.ContactInfo;

public class ContactInfoProvider {
	private Context context;

	public ContactInfoProvider(Context context) {
		this.context = context;
	}

	/**
	 * �Ǧ^�Ҧ����pô�H���T��
	 * 
	 * @return
	 */
	public List<ContactInfo> getContactInfos() {
		List<ContactInfo> infos = new ArrayList<ContactInfo>();//�N�Ҧ��pô�H�s�J�Ӷ��X
		//���oraw_contacts��ҹ�����Uri
		Uri uri = Uri.parse("content://com.android.contacts/raw_contacts");
		//���odata��ҹ�����Uri
		Uri datauri = Uri.parse("content://com.android.contacts/data");
		//�ѼƤG�G�ҭn�d�ߪ��C�A�Y�pô�H��id�C���o�@�Ӭd�߸�Ʈw�ҶǦ^�����G��
		Cursor cursor = context.getContentResolver().query(uri,
				new String[] { "contact_id" }, null, null, null);
		while (cursor.moveToNext()) {//�h�����
			//�]���ڭ̥u�ݭn�d�ߤ@�C���-�pô�H��id�A�ҥH�ڭ̶ǤJ0
			String id = cursor.getString(0);
			//�Ω�ʸ˨C���pô�H����ڰT��
			ContactInfo info = new ContactInfo();
			//�o��id��A�ڭ̳z�L��id�Ӭd��data�����pô�H����ڸ�ơ]data����data1������ơ^�C�ѼƤG�Gnull�A�|�N�Ҧ����C�Ǧ^�^��
			//�ѼƤT�G�������    �Ǧ^�@�Ӧbdata���d�᪺߫���G��
			Cursor dataCursor = context.getContentResolver().query(datauri,
					null, "raw_contact_id=?", new String[] { id }, null);
			while (dataCursor.moveToNext()) {
				//dataCursor.getString(dataCursor.getColumnIndex("mimetype"))���odata1�C����ڸ�ƪ���ƫ��A�A�o�̧P�_���O�pô�H���m�W
				if ("vnd.android.cursor.item/name".equals(dataCursor
						.getString(dataCursor.getColumnIndex("mimetype")))) {
					//dataCursor.getString(dataCursor.getColumnIndex("data1"))���odata1�C�����pô�H����ڸ��
					info.setName(dataCursor.getString(dataCursor
							.getColumnIndex("data1")));
				} else if ("vnd.android.cursor.item/phone_v2".equals(dataCursor
						.getString(dataCursor.getColumnIndex("mimetype")))) {//��ƫ��A�O�_�O������X
					info.setPhone(dataCursor.getString(dataCursor
							.getColumnIndex("data1")));
				}

			}
			//�C�d�ߤ@���pô�H��N�N��s�W�춰�X��
			infos.add(info);
			info = null;
			dataCursor.close();//�������G��

		}
		cursor.close();
		return infos;
	}
}
