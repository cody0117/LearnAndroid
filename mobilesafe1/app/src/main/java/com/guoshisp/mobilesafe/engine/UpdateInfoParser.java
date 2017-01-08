package com.guoshisp.mobilesafe.engine;

import java.io.IOException;
import java.io.InputStream;

import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

import android.util.Xml;

import com.guoshisp.mobilesafe.domain.UpdateInfo;

/**
 * 
 * �ѪRXML���
 *
 */
public class UpdateInfoParser {
	/**
	 * @param is xml�ɮת���J�y
	 * @return updateinfo������
	 * @throws XmlPullParserException
	 * @throws IOException
	 */
	public static UpdateInfo getUpdateInfo(InputStream is)
			throws XmlPullParserException, IOException {
		//��o�@��Pull�ѪR���ר�
		XmlPullParser parser = Xml.newPullParser();
		//�N�n�ѪR���ɮ׬y�ǤJ
		parser.setInput(is, "UTF-8");
		//�إ�UpdateInfo�רҡA�Ω�s��ѪR�o�쪺xml������ơA�̲ױN�Ӫ���Ǧ^
		UpdateInfo info = new UpdateInfo();
		//���o�ثeĲ�o���ƥ󫬺A
		int type = parser.getEventType();
		//�ϥ�while�`���A�Y�G��o���ƥ�X�O��󵲧����ܡA����N�����ѪR
		while (type != XmlPullParser.END_DOCUMENT) {
			if (type == XmlPullParser.START_TAG) {//�}�l����
				if ("version".equals(parser.getName())) {//�P�_�ثe�����O�_�OŪ�̻ݭn�˯��������A�U�P
					//�]�����e�]�۷��@�Ӹ`�I�A�ҥH���o���e�ɻݭn�I�sparser����nextText()��k�~�i�H�o�줺�e
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