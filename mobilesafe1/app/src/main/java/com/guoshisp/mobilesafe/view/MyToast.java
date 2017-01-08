package com.guoshisp.mobilesafe.view;

import android.content.Context;
import android.view.Gravity;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;

import com.guoshisp.mobilesafe.R;

public class MyToast {

	/**
	 * 顯示自訂的土司
	 * @param text 顯示的內容
	 */
	public static void showToast(Context context, String text) {
		Toast toast = new Toast(context);
		View view = View.inflate(context, R.layout.mytoast, null);
		TextView tv = (TextView) view.findViewById(R.id.tv_toast);
		//設定顯示內容
		tv.setText(text);
		toast.setView(view);
		//設定Toast顯示的時長。0表示短，1表示常
		toast.setDuration(1);
		//設定Toast顯示在窗體中的位置（這裡是顯示在窗體頂部的中央）
		toast.setGravity(Gravity.TOP, 0, 0);
		//將Toast顯示出來
		toast.show();
	}
}
