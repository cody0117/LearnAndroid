package com.guoshisp.mobilesafe.utils;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
public class Md5Encoder {
	public static String encode(String password){
		try {
			//取得到數字訊息的摘要器
			MessageDigest digest = MessageDigest.getInstance("MD5");
			//執行加密動作
			byte[] result = digest.digest(password.getBytes());
			StringBuilder sb = new StringBuilder();
			//將每個byte位元組的資料轉換成16進位的資料
			for(int i= 0 ;i<result.length;i++){
				int number = result[i]&0xff;//加鹽
				String str = Integer.toHexString(number);//將十進位的number轉換成十六進位資料
				if(str.length()==1){//判斷加密後的字元的長度，若果長度為1，則在該字元前面補0
					sb.append("0");
					sb.append(str);
				}else{
					sb.append(str);
				}
			}
			return sb.toString();//將加密後的字元轉成字串傳回
		} catch (NoSuchAlgorithmException e) {//加密器沒有被找到，該例外不可能發生。因為我們填入的“MD5”是正確的
			e.printStackTrace();
			//CNA'T REACH;
			return "";
		}
	}
}
