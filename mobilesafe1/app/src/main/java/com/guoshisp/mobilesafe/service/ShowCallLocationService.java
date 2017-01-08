package com.guoshisp.mobilesafe.service;

import android.app.Service;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.PixelFormat;
import android.os.IBinder;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.guoshisp.mobilesafe.R;
import com.guoshisp.mobilesafe.db.dao.NumberAddressDao;
//在背景監聽電話呼入的狀態
public class ShowCallLocationService extends Service {
	private TelephonyManager tm;//電話管理器
	private MyPhoneListener listener;//電話狀態改變的監聽器
	private WindowManager windowManager;//窗體管理器
	private SharedPreferences sp;//用於取出歸屬地風格顯示風格的Item對應的id
	//"半透明","活力橙","衛士藍","蘋果綠","金屬灰"
	private static final  int[] bgs = {R.drawable.call_locate_white,R.drawable.call_locate_orange,
			R.drawable.call_locate_blue,R.drawable.call_locate_green,R.drawable.call_locate_gray};
	@Override
	public IBinder onBind(Intent intent) {
		return null;
	}

	/**
	 * 當服務第一次被建立的時候 呼叫
	 */
	@Override
	public void onCreate() {
		super.onCreate();
		sp =getSharedPreferences("config",MODE_PRIVATE);
		// 登錄系統的電話狀態改變的監聽器.
		listener = new MyPhoneListener();
		//取得系統的電話管理器
		tm = (TelephonyManager) getSystemService(TELEPHONY_SERVICE);
		//為電話設定一個監聽。參數一：監聽器，參數二：要監聽的電話改變型態 （這裡監聽的是通話狀態）
		tm.listen(listener, PhoneStateListener.LISTEN_CALL_STATE);
		
		windowManager = (WindowManager) getSystemService(WINDOW_SERVICE);
	}

	private class MyPhoneListener extends PhoneStateListener {
		private View view;
		//參數一：手機的狀態      參數二：呼叫進來的手機號碼
		@Override
		public void onCallStateChanged(int state, String incomingNumber) {
			switch (state) {
			case TelephonyManager.CALL_STATE_RINGING:// 手機鈴聲正在響.
				//取得呼叫進來號碼的位址（查詢我們之前的號碼歸屬地資料庫）
				String address = NumberAddressDao.getAddress(incomingNumber);
				//使用系統的吐司來顯示歸屬地訊息，但顯示的時間較短
				//Toast.makeText(getApplicationContext(), "歸屬地:"+address, 1).show();
				//透過佈局填充器將一個顯示號碼歸屬地的佈局轉成View，該View是一個吐司
				view = View.inflate(getApplicationContext(), R.layout.show_address, null);
				//取得到顯示號碼歸屬地佈局的根佈局LinearLayout
				LinearLayout ll = (LinearLayout) view.findViewById(R.id.ll_show_address);
				//從sp檔案中取得顯示歸屬地風格的Item的id
				int which = sp.getInt("which", 0);
				//設定來電歸屬地顯示的背景圖片
				ll.setBackgroundResource(bgs[which]);
				//查詢view中的用於顯示歸屬地的TextView
				TextView tv = (TextView) view.findViewById(R.id.tv_show_address);
				//將歸屬地訊息設定到TextView
				tv.setText(address);
				//取得到與窗體關聯的佈局的參數（這裡用於設定窗體上顯示來電歸屬地的吐司的參數訊息）
	            final WindowManager.LayoutParams params = new LayoutParams();
	            //指定吐司的重心為圖形的左上角對應的點
	            params.gravity = Gravity.LEFT | Gravity.TOP;
	            //設定吐司在窗體中的顯示位置。取得到吐司離窗體左端的X值、取得到吐司離窗體頂端的Y值
	            params.x = sp.getInt("lastx", 0);
	            params.y = sp.getInt("lasty", 0);
	            //設定窗體佈局View的高度
	            params.height = WindowManager.LayoutParams.WRAP_CONTENT;
	            //設定窗體佈局View的寬度
	            params.width = WindowManager.LayoutParams.WRAP_CONTENT;
	            //窗體View不可以取得焦點、不可以被觸摸、保持在螢幕上
	            params.flags = WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE
	                    | WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE
	                    | WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON;
	            //顯示在窗體上的style為半透明
	            params.format = PixelFormat.TRANSLUCENT;
	            //窗體View的型態為吐司
	            params.type = WindowManager.LayoutParams.TYPE_TOAST;
	            //將吐司掛載在窗體上。窗體服務是一個全局的系統服務，該服務開啟後會在背景執行。一般情況下，在窗體上一旦掛載一個View並顯示後，並不會自動消失
				windowManager.addView(view, params);
				break;

			case TelephonyManager.CALL_STATE_IDLE: // 手機的閒置狀態
				if(view!=null){
					//將窗體上的吐司移除掉
					windowManager.removeView(view);
					view = null;
				}
				break;

			case TelephonyManager.CALL_STATE_OFFHOOK:// 手機接通通話時的狀態
				/*if(view!=null){
					//將窗體上的吐司移除掉
					windowManager.removeView(view);
					view = null;
				}*/
				break;
			}
			super.onCallStateChanged(state, incomingNumber);
		}
	}
	
	/**
	 * 取消電話狀態的監聽.
	 */
	@Override
	public void onDestroy() {
		super.onDestroy();
		tm.listen(listener, PhoneStateListener.LISTEN_NONE);
		listener = null;
	}
}
