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
	private ImageView iv_drag_view;// �n�h����View
	private TextView tv_drag_view;// ���ܮ�
	private int windowHeight;// �w�q�ù�������
	private int windowWidth;// �w�q�ù����e��
	private SharedPreferences sp;// �Ω��x�sView����m�T��
	private long firstclicktime;//�O��������U�m�����ɪ��Ĥ@���I���ɶ��A�O������]�b��P�_�O�_�ݩ����U�ƥ�
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.drag_view);
		iv_drag_view = (ImageView) findViewById(R.id.iv_drag_view);
		tv_drag_view = (TextView) findViewById(R.id.tv_drag_view);
		windowHeight = getWindowManager().getDefaultDisplay().getHeight();
		windowWidth = getWindowManager().getDefaultDisplay().getWidth();
		sp = getSharedPreferences("config", MODE_PRIVATE);
		// �_�l�ƤW���h���᪺View����ܦ�m�C�`�N:onCreate��k�_�l�Ƭɭ����ɭԡA�O�b�Ĥ@�Ӷ��q�A�Ӷ��q�ΨӴ��q������j�p�M��m
		RelativeLayout.LayoutParams params = (LayoutParams) iv_drag_view
				.getLayoutParams();
		params.leftMargin = sp.getInt("lastx", 0);// ���o��Q�h����View�����饪�ݪ�X��
		params.topMargin = sp.getInt("lasty", 0);// ���o��Q�h����View�����鳻�ݪ�Y��
		iv_drag_view.setLayoutParams(params);
		//�B�zView����U�m�����I���ƥ�
		iv_drag_view.setOnClickListener(new OnClickListener() {

			public void onClick(View v) {
				Log.i(TAG, "�ڳQ�I����.......................");
				//�P�_�O�Ĥ@���I�� �٬O�ĤG���I��.
				if (firstclicktime > 0) {// �ĤG�����I���ƥ�C�]��firstclicktime�O�@�Ӧ����ܼơA�w�]�Ȭ�0
					long secondclickTime = System.currentTimeMillis();
					if (secondclickTime - firstclicktime < 500) {//�]�w����U���֭Ȭ�0.5��
						Log.i(TAG, "����U��.......................");
						//����U��A�ݭn�N�Ĥ@�����I���ɶ��]�w��0�A�H�K�U���I���C
						firstclicktime = 0;
						//�p��XView���e��
						int right = iv_drag_view.getRight();
						int left = iv_drag_view.getLeft();
						int iv_width = right - left;//�p��XView������
						//�p��XView�b���饿�����ɪ�View���ݩM�����饪����ت��Z���MView�k�ݩM������k����ت��Z��
						int iv_left = windowWidth / 2 - iv_width / 2;
						int iv_right = windowWidth / 2 + iv_width / 2;
						// �NView��ܨ�ɭ����̤���.
						iv_drag_view.layout(iv_left, iv_drag_view.getTop(),
								iv_right, iv_drag_view.getBottom());
						//�NView�b������ܪ���m��Ʀs�Jsp��
						Editor editor = sp.edit();
						int lasty = iv_drag_view.getTop();
						int lastx = iv_drag_view.getLeft();
						editor.putInt("lastx", lastx);
						editor.putInt("lasty", lasty);
						editor.commit();

					}
				}
				firstclicktime = System.currentTimeMillis();
				//�ѨM�ϥΪ̪��_�ǰʧ@�G�I��@�U���d�����A�M�����U
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
		// ��View�n���@�ӳQĲ�N�ƥ󪺺�ť��
		iv_drag_view.setOnTouchListener(new OnTouchListener() {
			// �O���_�lĲ�N�I���y��
			int startx;// �O���_�l�ɪ�X�y��
			int starty;// �O���_�l�ɪ�Y�y��

			public boolean onTouch(View v, MotionEvent event) {
				switch (event.getAction()) {
				case MotionEvent.ACTION_DOWN:// ����Ĥ@����Ĳ�N�ù���
					Log.i(TAG, "�N��");
					startx = (int) event.getRawX();// ���o����Ĳ�N�I��X�y��
					starty = (int) event.getRawY();// ���o����Ĳ�N�I��Y�y��

					break;

				case MotionEvent.ACTION_MOVE:// ����b�ù��W�h��
					int x = (int) event.getRawX();// ���o��ثe���Ĳ�N�I��X�y��
					int y = (int) event.getRawY();// ���o��ثe���Ĳ�N�I��Y�y��
					// ���o���ܮت�����
					int tv_height = tv_drag_view.getBottom()
							- tv_drag_view.getTop();
					// �P�_View�O�B���骺�W���٬O�U��
					if (y > (windowHeight / 2)) {// ����h����F���骺�U�@�b
						// �N���ܮطh���쵡�骺�W�b�����C�|�ӰѼƤ��O���G���ܮضZ�����骺���B�W�B�k�B�U�ݪ��Z���C
						tv_drag_view.layout(tv_drag_view.getLeft(), 60,
								tv_drag_view.getRight(), 60 + tv_height);
					} else {// ����h����F���骺�W�@�b.
							// �N���ܮطh���쵡�骺�U�b����
						tv_drag_view.layout(tv_drag_view.getLeft(),
								windowHeight - 20 - tv_height,
								tv_drag_view.getRight(), windowHeight - 20);
					}

					int dx = x - startx;// �p��XView�b�ù�X�b��V�W�Q�h�����Z��
					int dy = y - starty;// �p��XView�b�ù�Y�b��V�W�Q�h�����Z��
					// �p��X�Q�즲��View�Z������W�B�U�B���B�k���Z��
					int t = iv_drag_view.getTop();
					int b = iv_drag_view.getBottom();
					int l = iv_drag_view.getLeft();
					int r = iv_drag_view.getRight();
					// ���o��h���᪺View���b���餤����m
					int newl = l + dx;
					int newt = t + dy;
					int newr = r + dx;
					int newb = b + dy;
					// �z�L��h���赲����View�Z������ù����|����ت��j�p���P�_�A���קKView�Q���X�ù�
					if (newl < 0 || newt < 0 || newr > windowWidth
							|| newb > windowHeight) {
						break;
					}
					// �N�h���᪺View�b����W���s����ܥX��
					iv_drag_view.layout(newl, newt, newr, newb);
					// �ߧY��s����Ĥ@��Ĳ�N�ù�����m�y�СA�H�K�U���~��h��
					startx = (int) event.getRawX();
					starty = (int) event.getRawY();
					Log.i(TAG, "�h��");
					break;
				case MotionEvent.ACTION_UP:// ������}�ù�
					Log.i(TAG, "�Q��");
					// �O���ثeimageview�b���餤����m�]���W�������I�Z���ù����e�שM���ס^
					Editor editor = sp.edit();
					int lasty = iv_drag_view.getTop();
					int lastx = iv_drag_view.getLeft();
					editor.putInt("lastx", lastx);
					editor.putInt("lasty", lasty);
					editor.commit();
					break;
				}
				// true �|���O�եثe��Ĳ�N�ƥ�A����᭱���h���M���}�ƥ�|�Q�T����
				// false ���|���O�ثe��Ĳ�N�ƥ�A����᭱���h���M���}�ƥ󳣤��|�Q�T����
				return false;
			}
		});
	}
}