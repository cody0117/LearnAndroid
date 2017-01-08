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
	 * 傳回所有的聯繫人的訊息
	 * 
	 * @return
	 */
	public List<ContactInfo> getContactInfos() {
		List<ContactInfo> infos = new ArrayList<ContactInfo>();//將所有聯繫人存入該集合
		//取得raw_contacts表所對應的Uri
		Uri uri = Uri.parse("content://com.android.contacts/raw_contacts");
		//取得data表所對應的Uri
		Uri datauri = Uri.parse("content://com.android.contacts/data");
		//參數二：所要查詢的列，即聯繫人的id。取得一個查詢資料庫所傳回的結果集
		Cursor cursor = context.getContentResolver().query(uri,
				new String[] { "contact_id" }, null, null, null);
		while (cursor.moveToNext()) {//搬移游標
			//因為我們只需要查詢一列資料-聯繫人的id，所以我們傳入0
			String id = cursor.getString(0);
			//用於封裝每個聯繫人的實際訊息
			ContactInfo info = new ContactInfo();
			//得到id後，我們透過該id來查詢data表中的聯繫人的實際資料（data表中的data1中的資料）。參數二：null，會將所有的列傳回回來
			//參數三：選取條件    傳回一個在data表中查詢後的結果集
			Cursor dataCursor = context.getContentResolver().query(datauri,
					null, "raw_contact_id=?", new String[] { id }, null);
			while (dataCursor.moveToNext()) {
				//dataCursor.getString(dataCursor.getColumnIndex("mimetype"))取得data1列中實際資料的資料型態，這裡判斷的是聯繫人的姓名
				if ("vnd.android.cursor.item/name".equals(dataCursor
						.getString(dataCursor.getColumnIndex("mimetype")))) {
					//dataCursor.getString(dataCursor.getColumnIndex("data1"))取得data1列中的聯繫人的實際資料
					info.setName(dataCursor.getString(dataCursor
							.getColumnIndex("data1")));
				} else if ("vnd.android.cursor.item/phone_v2".equals(dataCursor
						.getString(dataCursor.getColumnIndex("mimetype")))) {//資料型態是否是手機號碼
					info.setPhone(dataCursor.getString(dataCursor
							.getColumnIndex("data1")));
				}

			}
			//每查詢一個聯繫人後就將其新增到集合中
			infos.add(info);
			info = null;
			dataCursor.close();//關閉結果集

		}
		cursor.close();
		return infos;
	}
}
