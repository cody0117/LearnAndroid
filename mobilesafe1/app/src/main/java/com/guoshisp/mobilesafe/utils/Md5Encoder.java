package com.guoshisp.mobilesafe.utils;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
public class Md5Encoder {
	public static String encode(String password){
		try {
			//���o��Ʀr�T�����K�n��
			MessageDigest digest = MessageDigest.getInstance("MD5");
			//����[�K�ʧ@
			byte[] result = digest.digest(password.getBytes());
			StringBuilder sb = new StringBuilder();
			//�N�C��byte�줸�ժ�����ഫ��16�i�쪺���
			for(int i= 0 ;i<result.length;i++){
				int number = result[i]&0xff;//�[�Q
				String str = Integer.toHexString(number);//�N�Q�i�쪺number�ഫ���Q���i����
				if(str.length()==1){//�P�_�[�K�᪺�r�������סA�Y�G���׬�1�A�h�b�Ӧr���e����0
					sb.append("0");
					sb.append(str);
				}else{
					sb.append(str);
				}
			}
			return sb.toString();//�N�[�K�᪺�r���ন�r��Ǧ^
		} catch (NoSuchAlgorithmException e) {//�[�K���S���Q���A�Өҥ~���i��o�͡C�]���ڭ̶�J����MD5���O���T��
			e.printStackTrace();
			//CNA'T REACH;
			return "";
		}
	}
}
