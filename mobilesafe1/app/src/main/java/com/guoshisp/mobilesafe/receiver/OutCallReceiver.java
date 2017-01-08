package com.guoshisp.mobilesafe.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

import com.guoshisp.mobilesafe.LostProtectedActivity;

public class OutCallReceiver extends BroadcastReceiver {

	@Override
	public void onReceive(Context context, Intent intent) {
		//取得到廣播傳送來的結果資料
		String outnumber = getResultData();
		//設定我們撥號進入手機防盜的號碼
		String enterPhoneBakNumber = "110";
		//判斷設定的號碼是否與廣播過來的資料相同
		if (enterPhoneBakNumber.equals(outnumber)) {
			//進入手機防盜界面
			Intent lostIntent = new Intent(context, LostProtectedActivity.class);
			//為手機防盜對應的Activity設定一個新的工作堆疊
			lostIntent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
			context.startActivity(lostIntent);
			// 攔截掉外撥的電話號碼，在撥號記錄中不會顯示該號碼
			setResultData(null);
		}
	}
}
