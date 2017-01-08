package com.guoshisp.mobilesafe.engine;

import java.io.IOException;
import java.io.InputStream;

import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

import android.util.Xml;

import com.guoshisp.mobilesafe.domain.UpdateInfo;

/**
 * 
 * 解析XML資料
 *
 */
public class UpdateInfoParser {
	/**
	 * @param is xml檔案的輸入流
	 * @return updateinfo的物件
	 * @throws XmlPullParserException
	 * @throws IOException
	 */
	public static UpdateInfo getUpdateInfo(InputStream is)
			throws XmlPullParserException, IOException {
		//獲得一個Pull解析的案例
		XmlPullParser parser = Xml.newPullParser();
		//將要解析的檔案流傳入
		parser.setInput(is, "UTF-8");
		//建立UpdateInfo案例，用於存放解析得到的xml中的資料，最終將該物件傳回
		UpdateInfo info = new UpdateInfo();
		//取得目前觸發的事件型態
		int type = parser.getEventType();
		//使用while循環，若果獲得的事件碼是文件結束的話，那麼就結束解析
		while (type != XmlPullParser.END_DOCUMENT) {
			if (type == XmlPullParser.START_TAG) {//開始元素
				if ("version".equals(parser.getName())) {//判斷目前元素是否是讀者需要檢索的元素，下同
					//因為內容也相當於一個節點，所以取得內容時需要呼叫parser物件的nextText()方法才可以得到內容
					String version = parser.nextText();
					info.setVersion(version);
				} else if ("description".equals(parser.getName())) {
					String description = parser.nextText();
					info.setDescription(description);
				} else if ("apkurl".equals(parser.getName())) {
					String apkurl = parser.nextText();
					info.setApkurl(apkurl);
				}
			}
			type = parser.next();
		}
		return info;
	}
}
