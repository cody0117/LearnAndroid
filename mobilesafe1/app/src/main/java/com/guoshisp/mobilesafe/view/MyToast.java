package com.guoshisp.mobilesafe.view;

import android.content.Context;
import android.view.Gravity;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;

import com.guoshisp.mobilesafe.R;

public class MyToast {

	/**
	 * ��ܦۭq���g�q
	 * @param text ��ܪ����e
	 */
	public static void showToast(Context context, String text) {
		Toast toast = new Toast(context);
		View view = View.inflate(context, R.layout.mytoast, null);
		TextView tv = (TextView) view.findViewById(R.id.tv_toast);
		//�]�w��ܤ��e
		tv.setText(text);
		toast.setView(view);
		//�]�wToast��ܪ��ɪ��C0��ܵu�A1��ܱ`
		toast.setDuration(1);
		//�]�wToast��ܦb���餤����m�]�o�̬O��ܦb���鳻���������^
		toast.setGravity(Gravity.TOP, 0, 0);
		//�NToast��ܥX��
		toast.show();
	}
}
