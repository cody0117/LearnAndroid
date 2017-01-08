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
//�b�I����ť�q�ܩI�J�����A
public class ShowCallLocationService extends Service {
	private TelephonyManager tm;//�q�ܺ޲z��
	private MyPhoneListener listener;//�q�ܪ��A���ܪ���ť��
	private WindowManager windowManager;//����޲z��
	private SharedPreferences sp;//�Ω���X�k�ݦa������ܭ��檺Item������id
	//"�b�z��","���O��","�äh��","ī�G��","���ݦ�"
	private static final  int[] bgs = {R.drawable.call_locate_white,R.drawable.call_locate_orange,
			R.drawable.call_locate_blue,R.drawable.call_locate_green,R.drawable.call_locate_gray};
	@Override
	public IBinder onBind(Intent intent) {
		return null;
	}

	/**
	 * ��A�ȲĤ@���Q�إߪ��ɭ� �I�s
	 */
	@Override
	public void onCreate() {
		super.onCreate();
		sp =getSharedPreferences("config",MODE_PRIVATE);
		// �n���t�Ϊ��q�ܪ��A���ܪ���ť��.
		listener = new MyPhoneListener();
		//���o�t�Ϊ��q�ܺ޲z��
		tm = (TelephonyManager) getSystemService(TELEPHONY_SERVICE);
		//���q�ܳ]�w�@�Ӻ�ť�C�ѼƤ@�G��ť���A�ѼƤG�G�n��ť���q�ܧ��ܫ��A �]�o�̺�ť���O�q�ܪ��A�^
		tm.listen(listener, PhoneStateListener.LISTEN_CALL_STATE);
		
		windowManager = (WindowManager) getSystemService(WINDOW_SERVICE);
	}

	private class MyPhoneListener extends PhoneStateListener {
		private View view;
		//�ѼƤ@�G��������A      �ѼƤG�G�I�s�i�Ӫ�������X
		@Override
		public void onCallStateChanged(int state, String incomingNumber) {
			switch (state) {
			case TelephonyManager.CALL_STATE_RINGING:// ����a�n���b�T.
				//���o�I�s�i�Ӹ��X����}�]�d�ߧڭ̤��e�����X�k�ݦa��Ʈw�^
				String address = NumberAddressDao.getAddress(incomingNumber);
				//�ϥΨt�Ϊ��R�q������k�ݦa�T���A����ܪ��ɶ����u
				//Toast.makeText(getApplicationContext(), "�k�ݦa:"+address, 1).show();
				//�z�L�G����R���N�@����ܸ��X�k�ݦa���G���নView�A��View�O�@�ӦR�q
				view = View.inflate(getApplicationContext(), R.layout.show_address, null);
				//���o����ܸ��X�k�ݦa�G�����ڧG��LinearLayout
				LinearLayout ll = (LinearLayout) view.findViewById(R.id.ll_show_address);
				//�qsp�ɮפ����o����k�ݦa���檺Item��id
				int which = sp.getInt("which", 0);
				//�]�w�ӹq�k�ݦa��ܪ��I���Ϥ�
				ll.setBackgroundResource(bgs[which]);
				//�d��view�����Ω�����k�ݦa��TextView
				TextView tv = (TextView) view.findViewById(R.id.tv_show_address);
				//�N�k�ݦa�T���]�w��TextView
				tv.setText(address);
				//���o��P�������p���G�����Ѽơ]�o�̥Ω�]�w����W��ܨӹq�k�ݦa���R�q���ѼưT���^
	            final WindowManager.LayoutParams params = new LayoutParams();
	            //���w�R�q�����߬��ϧΪ����W���������I
	            params.gravity = Gravity.LEFT | Gravity.TOP;
	            //�]�w�R�q�b���餤����ܦ�m�C���o��R�q�����饪�ݪ�X�ȡB���o��R�q�����鳻�ݪ�Y��
	            params.x = sp.getInt("lastx", 0);
	            params.y = sp.getInt("lasty", 0);
	            //�]�w����G��View������
	            params.height = WindowManager.LayoutParams.WRAP_CONTENT;
	            //�]�w����G��View���e��
	            params.width = WindowManager.LayoutParams.WRAP_CONTENT;
	            //����View���i�H���o�J�I�B���i�H�QĲ�N�B�O���b�ù��W
	            params.flags = WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE
	                    | WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE
	                    | WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON;
	            //��ܦb����W��style���b�z��
	            params.format = PixelFormat.TRANSLUCENT;
	            //����View�����A���R�q
	            params.type = WindowManager.LayoutParams.TYPE_TOAST;
	            //�N�R�q�����b����W�C����A�ȬO�@�ӥ������t�ΪA�ȡA�ӪA�ȶ}�ҫ�|�b�I������C�@�뱡�p�U�A�b����W�@�������@��View����ܫ�A�ä��|�۰ʮ���
				windowManager.addView(view, params);
				break;

			case TelephonyManager.CALL_STATE_IDLE: // ��������m���A
				if(view!=null){
					//�N����W���R�q������
					windowManager.removeView(view);
					view = null;
				}
				break;

			case TelephonyManager.CALL_STATE_OFFHOOK:// ������q�q�ܮɪ����A
				/*if(view!=null){
					//�N����W���R�q������
					windowManager.removeView(view);
					view = null;
				}*/
				break;
			}
			super.onCallStateChanged(state, incomingNumber);
		}
	}
	
	/**
	 * �����q�ܪ��A����ť.
	 */
	@Override
	public void onDestroy() {
		super.onDestroy();
		tm.listen(listener, PhoneStateListener.LISTEN_NONE);
		listener = null;
	}
}
