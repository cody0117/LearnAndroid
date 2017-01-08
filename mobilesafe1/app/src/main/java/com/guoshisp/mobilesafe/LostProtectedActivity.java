package com.guoshisp.mobilesafe;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.guoshisp.mobilesafe.utils.Md5Encoder;

public class LostProtectedActivity extends Activity implements OnClickListener {
	private static final String TAG = "LostProtectedActivity";
	//偏好設定儲存物件
	private SharedPreferences sp;
	//第一次進入”手機防盜“界面時的界面控制項物件
	private EditText et_first_dialog_pwd;
	private EditText et_first_dialog_pwd_confirm;
	private Button bt_first_dialog_ok;
	private Button bt_first_dialog_cancle;
	//第二次進入”手機防盜“界面時的界面控制項物件
	private EditText et_normal_dialog_pwd;
	private Button bt_normal_dialog_ok;
	private Button bt_normal_dialog_cancle;
	//設定精靈結束後的結果界面中的控制項
	private TextView tv_lost_protect_number;//綁定的安全號碼
	private RelativeLayout rl_lost_protect_setting;//防盜保護設定是否開啟所在的父控制項，取得該控制項是要為該控制項設定點擊事件（點擊該控制項中的任意一個控制項都會響應點擊事件）
	private CheckBox cb_lost_protect_setting;//防盜保護是否開啟
	private TextView tv_lost_protect_reentry_setup;//該控制項的點擊事件執行：重新進入設定精靈界面
	//交談視窗物件
	private AlertDialog dialog;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		//取得Sdcard下的config.xml檔案，若果該檔案不存在，那麼將會自動建立該檔案
		sp = getSharedPreferences("config", MODE_PRIVATE);
		// 判斷使用者是否設定過密碼
		if (isSetupPwd()) {
			//進入非第一次進入“手機防盜”時要顯示的交談視窗
			showNormalEntryDialog();
		} else {
			//進入第一次進入“手機防盜”時要顯示的交談視窗
			showFirstEntryDialog();
		}
	}

	/**
	 * 第一次進入“手機防盜”時要顯示的交談視窗
	 */
	private void showFirstEntryDialog() {
		//得到交談視窗的建構器
		AlertDialog.Builder builder = new Builder(this);
		//透過View物件的inflate(Context context, int resource, ViewGroup root)物件將第一次進入“手機防盜”要出現的窗體交談視窗的佈局檔案轉為一個View物件
		View view = View.inflate(this, R.layout.first_entry_dialog, null);
		//查詢view物件中的各個控制項
		et_first_dialog_pwd = (EditText) view
				.findViewById(R.id.et_first_dialog_pwd);
		et_first_dialog_pwd_confirm = (EditText) view
				.findViewById(R.id.et_first_dialog_pwd_confirm);
		bt_first_dialog_ok = (Button) view
				.findViewById(R.id.bt_first_dialog_ok);
		bt_first_dialog_cancle = (Button) view
				.findViewById(R.id.bt_first_dialog_cancle);
		//分別為“取消”、“確定”按鈕設定一個監聽器
		bt_first_dialog_cancle.setOnClickListener(this);
		bt_first_dialog_ok.setOnClickListener(this);
		//將上面的View物件新增到交談視窗上
		builder.setView(view);
		//取得到交談視窗物件
		dialog = builder.create();
		//顯示出交談視窗
		dialog.show();
	}

	/**
	 * 當設定過密碼後，標準進入“手機防盜”時要顯示的交談視窗
	 */
	private void showNormalEntryDialog() {
		AlertDialog.Builder builder = new Builder(this);
		builder.setOnCancelListener(new OnCancelListener() {
			//當點擊“取消”按鈕時，直接結束掉目前的LostProtectedActivity，程式會進入到主界面
			public void onCancel(DialogInterface dialog) {
				finish();
			}
		});
		//透過View物件的inflate(Context context, int resource, ViewGroup root)物件將非第一次進入“手機防盜”要出現的窗體交談視窗的佈局檔案轉為一個View物件
		View view = View.inflate(this, R.layout.normal_entry_dialog, null);
		//查詢view物件中的各個控制項
		et_normal_dialog_pwd = (EditText) view
				.findViewById(R.id.et_normal_dialog_pwd);
		bt_normal_dialog_ok = (Button) view
				.findViewById(R.id.bt_normal_dialog_ok);
		bt_normal_dialog_cancle = (Button) view
				.findViewById(R.id.bt_normal_dialog_cancle);
		//分別為“取消”、“確定”按鈕設定一個監聽器
		bt_normal_dialog_cancle.setOnClickListener(this);
		bt_normal_dialog_ok.setOnClickListener(this);
		//將上面的View物件新增到交談視窗上
		builder.setView(view);
		//取得到交談視窗物件
		dialog = builder.create();
		//顯示出交談視窗
		dialog.show();
	}

	/**
	 * 判斷使用者是否設定過密碼
	 * 
	 * @return
	 */
	private boolean isSetupPwd() {
		String savedpwd = sp.getString("password", "");
		if (TextUtils.isEmpty(savedpwd)) {//透過一個文字工具類別來判斷String是否為空
			return false;
		} else {
			return true;
		}
		// return (!TextUtils.isEmpty(savedpwd));
	}
	/**
	 * 為兩個交談視窗中的“確定”和“取消”按鈕設定的監聽器
	 */
	public void onClick(View v) {

		switch (v.getId()) {
		//第一次進入“手機防盜”時出現的交談視窗中，對“取消”按鈕事件的處理
		case R.id.bt_first_dialog_cancle:
			dialog.cancel();//取消交談視窗
			finish();//結束目前的Activity後會進入程式的主界面
			break;
		//第一次進入“手機防盜”時出現的交談視窗中，對“確定”按鈕事件的處理	
		case R.id.bt_first_dialog_ok:
			//取得到兩個EditText中的輸入的密碼，並將EditText前後的空格給去除掉
			String pwd = et_first_dialog_pwd.getText().toString().trim();
			String pwd_confirm = et_first_dialog_pwd_confirm.getText()
					.toString().trim();
			//判斷兩個EditText中的內容是否為空
			if (TextUtils.isEmpty(pwd_confirm) || TextUtils.isEmpty(pwd)) {
				Toast.makeText(this, "密碼不能為空", 1).show();
				return;
			}
			//判斷兩個EditText中的內容是否相同
			if (pwd.equals(pwd_confirm)) {
				//取得到一個編輯器物件，此處用於像sp中編輯資料
				Editor editor = sp.edit();
				//將加密後的密碼存入到sp所對應的檔案中
				editor.putString("password", Md5Encoder.encode(pwd));
				//將編輯的資料傳送後才能真正的存入進sp中
				editor.commit();
				//銷毀目前的交談視窗
				dialog.dismiss();
				//結束掉目前的Activity後，跳躍至主界面
				finish();
			} else {
				Toast.makeText(this, "兩次密碼不相同", 1).show();
				return;
			}

			break;
			//非第一次進入“手機防盜”時出現的交談視窗中，對“取消”按鈕事件的處理
		case R.id.bt_normal_dialog_cancle:
			dialog.cancel();
			finish();
			break;
			//非第一次進入“手機防盜”時出現的交談視窗中，對“確定”按鈕事件的處理	
		case R.id.bt_normal_dialog_ok:
			String userentrypwd = et_normal_dialog_pwd.getText().toString()
					.trim();
			if (TextUtils.isEmpty(userentrypwd)) {
				Toast.makeText(this, "密碼不能為空", 1).show();
				return;
			}
			String savedpwd = sp.getString("password", "");
			//因為我們在設定密碼後，存入的是加密後的密碼，所以當我們將輸入的密碼與設定的密碼比較時需要將輸入的密碼先加密
			if (savedpwd.equals(Md5Encoder.encode(userentrypwd))) {
				Toast.makeText(this, "密碼正確進入界面", 1).show();
				dialog.dismiss();
				// 判斷使用者是否進行過設定精靈.
				if(isSetupAlready()){
					//進入到完成設定精靈後的界面
					Log.i(TAG,"進入到完成設定精靈後的界面");
					setContentView(R.layout.lost_protected);
					//綁定的安全號碼
					tv_lost_protect_number = (TextView) findViewById(R.id.tv_lost_protect_number);
					String safemuber = sp.getString("safemuber", "");
					tv_lost_protect_number.setText(safemuber);
					//防盜保護設定是否開啟所在的父控制項，取得該控制項是要為該控制項設定點擊事件（點擊該控制項中的任意一個控制項都會響應點擊事件）
					rl_lost_protect_setting = (RelativeLayout)findViewById(R.id.rl_lost_protect_setting);
					//防盜保護是否開啟
					cb_lost_protect_setting = (CheckBox)findViewById(R.id.cb_lost_protect_setting);
					boolean protecting = sp.getBoolean("protecting", false);
					cb_lost_protect_setting.setChecked(protecting);
					if(protecting){
						cb_lost_protect_setting.setText("防盜保護已經開啟");
					}else{
						cb_lost_protect_setting.setText("防盜保護沒有開啟");
					}
					//該控制項的點擊事件執行：重新進入設定精靈界面
					tv_lost_protect_reentry_setup = (TextView)findViewById(R.id.tv_lost_protect_reentry_setup);
					
					rl_lost_protect_setting.setOnClickListener(this);
					tv_lost_protect_reentry_setup.setOnClickListener(this);
					
				}else{
					//進入設定精靈界面
					Log.i(TAG,"進入到設定精靈界面");
					Intent intent = new Intent(this,Setup1Activity.class);
					//執行該方法的原因在於：當使用者完成設定精靈後按back鍵時，避免出現之前的界面，增強使用者經驗效果
					finish();
					startActivity(intent);
				}
				return;
			} else {
				Toast.makeText(this, "密碼不正確", 1).show();
				return;
			}
		case R.id.tv_lost_protect_reentry_setup://重新進入設定精靈
			Intent reentryIntent = new Intent(this,Setup1Activity.class);
			startActivity(reentryIntent);
			finish();
			break;
		case R.id.rl_lost_protect_setting://是否開啟防盜保護
			Editor editor =	sp.edit();
			if(cb_lost_protect_setting.isChecked()){
				cb_lost_protect_setting.setChecked(false);
				cb_lost_protect_setting.setText("防盜保護沒有開啟");
				editor.putBoolean("protecting", false);
				
			}else{
				cb_lost_protect_setting.setChecked(true);
				cb_lost_protect_setting.setText("防盜保護已經開啟");
				editor.putBoolean("protecting", true);
			}
			editor.commit();
			break;
		}
	}
	/**
	 * 判斷使用者是否完成過設定精靈
	 * 
	 * @return
	 */
	private boolean isSetupAlready() {
		//預設情況下傳回false，表示使用者沒有進行過設定精靈
		return sp.getBoolean("issetup", false);
	}
	/**
	 * 當長按Menu鍵時會開啟一個選單，當彩蛋第一次被開啟時，框架回調該方法
	 */
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		//參數一：目前Item所在的群組，參數二：目前Item的id號，在Switch中要用到
		//參數三：當出現多個Item時，該數字可以決定Item在選單中的前後位置，參數四：目前Item在選單中的標題
		menu.add(1, 1, 1, "變更標題名稱");
		return true;
	}
	/**
	 * 當一個選單中的Item被勾選時，框架回調該方法，並將所點選的Item傳入
	 */
	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		//上面定義的id為1
		if (item.getItemId() == 1) {
			//取得一個窗體建構器
			AlertDialog.Builder builder = new Builder(this);
			//建立一個文字輸入框
			final EditText et = new EditText(this);
			//設定文字輸入框中提示的內容，當點擊文字輸入框時，該內容會自動消失
			et.setHint("請輸入新的標題名稱,可以留空");
			//將文字輸入框新增到窗體交談視窗上
			builder.setView(et);
			//為窗體交談視窗加入一個“確定”按鈕
			builder.setPositiveButton("確定",
					new DialogInterface.OnClickListener() {
						//當點擊“確定”按鈕時要執行的回調方法
						public void onClick(DialogInterface dialog, int which) {
							//取得文字輸入框中的內容，並將文字前後的空格去除掉
							String newname = et.getText().toString().trim();
							//取得sp對應的編輯器
							Editor editor = sp.edit();
							//將修改後的名稱儲存到sp中，此時資料還只在快取中
							editor.putString("newname", newname);
							//資料真正的被儲存到sp對應的檔案中
							editor.commit();
						}
					});
			//建立並顯示出窗體交談視窗
			builder.create().show();
		}
		 return super.onOptionsItemSelected(item);
	}
}
