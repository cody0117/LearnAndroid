package com.guoshisp.mobilesafe;

import android.app.Activity;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;

public class DragViewActivity extends Activity {
	protected static final String TAG = "DragViewActivity";
	private ImageView iv_drag_view;// 要搬移的View
	private TextView tv_drag_view;// 提示框
	private int windowHeight;// 定義螢幕的高度
	private int windowWidth;// 定義螢幕的寬度
	private SharedPreferences sp;// 用於儲存View的位置訊息
	private long firstclicktime;//記錄“按兩下置中”時的第一次點擊時間，記錄的原因在於判斷是否屬於按兩下事件
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.drag_view);
		iv_drag_view = (ImageView) findViewById(R.id.iv_drag_view);
		tv_drag_view = (TextView) findViewById(R.id.tv_drag_view);
		windowHeight = getWindowManager().getDefaultDisplay().getHeight();
		windowWidth = getWindowManager().getDefaultDisplay().getWidth();
		sp = getSharedPreferences("config", MODE_PRIVATE);
		// 起始化上次搬移後的View的顯示位置。注意:onCreate方法起始化界面的時候，是在第一個階段，該階段用來測量控制項的大小和位置
		RelativeLayout.LayoutParams params = (LayoutParams) iv_drag_view
				.getLayoutParams();
		params.leftMargin = sp.getInt("lastx", 0);// 取得到被搬移的View離窗體左端的X值
		params.topMargin = sp.getInt("lasty", 0);// 取得到被搬移的View離窗體頂端的Y值
		iv_drag_view.setLayoutParams(params);
		//處理View按兩下置中的點擊事件
		iv_drag_view.setOnClickListener(new OnClickListener() {

			public void onClick(View v) {
				Log.i(TAG, "我被點擊啦.......................");
				//判斷是第一次點擊 還是第二次點擊.
				if (firstclicktime > 0) {// 第二次的點擊事件。因為firstclicktime是一個成員變數，預設值為0
					long secondclickTime = System.currentTimeMillis();
					if (secondclickTime - firstclicktime < 500) {//設定按兩下的閥值為0.5秒
						Log.i(TAG, "按兩下啦.......................");
						//按兩下後，需要將第一次的點擊時間設定為0，以便下次點擊。
						firstclicktime = 0;
						//計算出View的寬度
						int right = iv_drag_view.getRight();
						int left = iv_drag_view.getLeft();
						int iv_width = right - left;//計算出View的長度
						//計算出View在窗體正中央時的View左端和離窗體左邊邊框的距離和View右端和離窗體右邊邊框的距離
						int iv_left = windowWidth / 2 - iv_width / 2;
						int iv_right = windowWidth / 2 + iv_width / 2;
						// 將View顯示到界面的最中央.
						iv_drag_view.layout(iv_left, iv_drag_view.getTop(),
								iv_right, iv_drag_view.getBottom());
						//將View在中央顯示的位置資料存入sp中
						Editor editor = sp.edit();
						int lasty = iv_drag_view.getTop();
						int lastx = iv_drag_view.getLeft();
						editor.putInt("lastx", lastx);
						editor.putInt("lasty", lasty);
						editor.commit();

					}
				}
				firstclicktime = System.currentTimeMillis();
				//解決使用者的奇怪動作：點選一下停留較長，然後按兩下
				new Thread() {
					public void run() {
						try {
							Thread.sleep(500);
							firstclicktime = 0;
						} catch (InterruptedException e) {
							e.printStackTrace();
						}
					};
				}.start();
			}
		});
		// 為View登錄一個被觸摸事件的監聽器
		iv_drag_view.setOnTouchListener(new OnTouchListener() {
			// 記錄起始觸摸點的座標
			int startx;// 記錄起始時的X座標
			int starty;// 記錄起始時的Y座標

			public boolean onTouch(View v, MotionEvent event) {
				switch (event.getAction()) {
				case MotionEvent.ACTION_DOWN:// 手指第一次接觸摸螢幕幕
					Log.i(TAG, "摸到");
					startx = (int) event.getRawX();// 取得到手指觸摸點的X座標
					starty = (int) event.getRawY();// 取得到手指觸摸點的Y座標

					break;

				case MotionEvent.ACTION_MOVE:// 手指在螢幕上搬移
					int x = (int) event.getRawX();// 取得到目前手指觸摸點的X座標
					int y = (int) event.getRawY();// 取得到目前手指觸摸點的Y座標
					// 取得提示框的高度
					int tv_height = tv_drag_view.getBottom()
							- tv_drag_view.getTop();
					// 判斷View是處於窗體的上方還是下方
					if (y > (windowHeight / 2)) {// 手指搬移到了窗體的下一半
						// 將提示框搬移到窗體的上半部分。四個參數分別為：提示框距離窗體的左、上、右、下端的距離。
						tv_drag_view.layout(tv_drag_view.getLeft(), 60,
								tv_drag_view.getRight(), 60 + tv_height);
					} else {// 手指搬移到了窗體的上一半.
							// 將提示框搬移到窗體的下半部分
						tv_drag_view.layout(tv_drag_view.getLeft(),
								windowHeight - 20 - tv_height,
								tv_drag_view.getRight(), windowHeight - 20);
					}

					int dx = x - startx;// 計算出View在螢幕X軸方向上被搬移的距離
					int dy = y - starty;// 計算出View在螢幕Y軸方向上被搬移的距離
					// 計算出被拖曳的View距離窗體上、下、左、右的距離
					int t = iv_drag_view.getTop();
					int b = iv_drag_view.getBottom();
					int l = iv_drag_view.getLeft();
					int r = iv_drag_view.getRight();
					// 取得到搬移後的View的在窗體中的位置
					int newl = l + dx;
					int newt = t + dy;
					int newr = r + dx;
					int newb = b + dy;
					// 透過對搬移剛結束的View距離手機螢幕的四個邊框的大小的判斷，來避免View被移出螢幕
					if (newl < 0 || newt < 0 || newr > windowWidth
							|| newb > windowHeight) {
						break;
					}
					// 將搬移後的View在窗體上重新的顯示出來
					iv_drag_view.layout(newl, newt, newr, newb);
					// 立即更新手指第一次觸摸螢幕的位置座標，以便下次繼續搬移
					startx = (int) event.getRawX();
					starty = (int) event.getRawY();
					Log.i(TAG, "搬移");
					break;
				case MotionEvent.ACTION_UP:// 手指離開螢幕
					Log.i(TAG, "松手");
					// 記錄目前imageview在窗體中的位置（左上角的頂點距離螢幕的寬度和高度）
					Editor editor = sp.edit();
					int lasty = iv_drag_view.getTop();
					int lastx = iv_drag_view.getLeft();
					editor.putInt("lastx", lastx);
					editor.putInt("lasty", lasty);
					editor.commit();
					break;
				}
				// true 會消費調目前的觸摸事件，那麼後面的搬移和離開事件會被響應到
				// false 不會消費目前的觸摸事件，那麼後面的搬移和離開事件都不會被響應到
				return false;
			}
		});
	}
}