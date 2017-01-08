package com.guoshisp.mobilesafe;

import java.util.List;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

import com.guoshisp.mobilesafe.db.dao.BlackNumberDao;
import com.guoshisp.mobilesafe.domain.BlackNumber;

public class CallSmsSafeActivity extends Activity {
	protected static final int LOAD_DATA_FINISH = 40;
	public static final String TAG = "CallSmsSafeActivity";
	//�Ω�i�{�X�Ҧ����¦W�渹�X
	private ListView lv_call_sms_safe;
	//�ʧ@�¦W�渹�X��Ʈw������
	private BlackNumberDao dao;
	//�N�¦W�渹�X�q��Ʈw���@���ʨ��X�s�J�֨����X���]�קK�b�����d���W�c���ʧ@��Ʈw�^
	private List<BlackNumber> blacknumbers;
	//��ܶ¦W�渹�X�������d����
	private BlackNumberAdapter adpater;
	//ProgressBar�����������A�Ω󱱨�l�������ܡ]���t�FProgressBar�^
	private LinearLayout ll_call_sms_safe_loading;
	
	//private String initnumber;
	//�Ω󱵦��l������ǰe�L�Ӫ��T���A��{UI����s
	private Handler handler = new Handler() {
		public void handleMessage(android.os.Message msg) {
			switch (msg.what) {
			case LOAD_DATA_FINISH://�q��Ʈw�����J�¦W�渹�X����
				//�N�i�׫��ܾ��Ρ����b���J���...������
				ll_call_sms_safe_loading.setVisibility(View.INVISIBLE);
				//��lv_call_sms_safe�]�w�����d
				adpater = new BlackNumberAdapter();
				lv_call_sms_safe.setAdapter(adpater);
				break;
			}
		};
	};

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.call_sms_safe);
		ll_call_sms_safe_loading = (LinearLayout) findViewById(R.id.ll_call_sms_safe_loading);
		dao = new BlackNumberDao(this);
		lv_call_sms_safe = (ListView) findViewById(R.id.lv_call_sms_safe);
		//ll_call_sms_safe_loading��������Ҧ��l����]�w���i���]ProgressBar�M�����b���J���...���^
		ll_call_sms_safe_loading.setVisibility(View.VISIBLE);
				
		/*Intent intent  = getIntent();//���o�Ұʥثe����intent;
		initnumber = intent.getStringExtra("blacknumber");
		Log.i(TAG,"initnumber:"+initnumber);
		if(initnumber!=null){
			showBlackNumberDialog(0, 0);
		}*/

		// 1.��lv_call_sms_safe�n���@�ӤW�U����
		registerForContextMenu(lv_call_sms_safe);
		//�@���ʨ��o��Ʈw�����Ҧ���ƪ��ʧ@�O�@�Ӥ���Ӯɪ��ʧ@�A��ĳ�b�l�����������
		new Thread() {
			public void run() {
				blacknumbers = dao.findAll();
				//���|�D�b�{��s�ɭ�
				Message msg = Message.obtain();
				msg.what = LOAD_DATA_FINISH;
				handler.sendMessage(msg);
			};
		}.start();
	}

	/*@Override
	protected void onNewIntent(Intent intent) {
		initnumber = intent.getStringExtra("blacknumber");
		Log.i(TAG,"initnumber:"+initnumber);
		if(initnumber!=null){
			showBlackNumberDialog(0, 0);
		}
		super.onNewIntent(intent);
	}*/
	
	// 2.���s�w�q�إߤW�U���檺��k
	@Override
	public void onCreateContextMenu(ContextMenu menu, View v,
			ContextMenuInfo menuInfo) {
		super.onCreateContextMenu(menu, v, menuInfo);
		//�]�w����Item��n��ܪ��G��
		MenuInflater inflater = getMenuInflater();
		inflater.inflate(R.menu.call_sms_safe_menu, menu);
	}

	// 3.�T���W�U���檺�I���ƥ�
	@Override
	public boolean onContextItemSelected(MenuItem item) {
		//���o��Item����������
		AdapterContextMenuInfo info = (AdapterContextMenuInfo) item
				.getMenuInfo();
		int position = (int) info.id; // �ثe�W�U���������listview�̭������@�Ӷ���
		switch (item.getItemId()) {
		case R.id.item_delete:
			Log.i(TAG, "�����¦W��O��");
			deleteBlackNumber(position);
			return true;
		case R.id.item_update:
			Log.i(TAG, "��s�¦W��O��");
			updateBlackNumber(position);

			return true;
		default:
			return super.onContextItemSelected(item);
		}
	}

	/**
	 * ��s�¦W�渹�X
	 * 
	 * @param position
	 */
	private void updateBlackNumber(int position) {
		showBlackNumberDialog(1, position);
	}

	/**
	 * �����@���¦W��O��
	 * 
	 * @param position
	 */
	private void deleteBlackNumber(int position) {
		BlackNumber blackNumber = (BlackNumber) lv_call_sms_safe
				.getItemAtPosition(position);
		String number = blackNumber.getNumber();
		dao.delete(number); // �����F ��Ʈw�̭����O��
		blacknumbers.remove(blackNumber);// �����ثelistview�̭������.
		adpater.notifyDataSetChanged();
	}
	/**
	 * ���¦W�渹�X����lv_call_sms_safe����Item�հt���
	 * @author Administrator
	 *
	 */
	private class BlackNumberAdapter extends BaseAdapter {
		//���oItem���ƥ�
		public int getCount() {
			return blacknumbers.size();
		}
		//���oItem������
		public Object getItem(int position) {
			return blacknumbers.get(position);
		}
		//���oItem������id
		public long getItemId(int position) {
			return position;
		}

		//�b�ù��W�A�C��ܤ@��Item�N�I�s�@���Ӥ�k
		public View getView(int position, View convertView, ViewGroup parent) {
			View view;
			ViewHolder holder;
			//�_�ξ��v�֨���View����
			if (convertView == null) {
				Log.i(TAG, "�إ߷s��view����");
				//�NItem�নView����
				view = View.inflate(getApplicationContext(),
						R.layout.call_sms_item, null);
				holder = new ViewHolder();
				holder.tv_number = (TextView) view
						.findViewById(R.id.tv_callsms_item_number);
				holder.tv_mode = (TextView) view
						.findViewById(R.id.tv_callsms_item_mode);
				view.setTag(holder);// �ⱱ�id���Ѧ� �s��bview����̭�
			} else {
				view = convertView;
				Log.i(TAG, "�ϥξ��v�֨���view����");
				holder = (ViewHolder) view.getTag();
			}
			//��Item�]�w�d�I�Ҧ�
			BlackNumber blacknumber = blacknumbers.get(position);
			holder.tv_number.setText(blacknumber.getNumber());
			int mode = blacknumber.getMode();
			if (mode == 0) {
				holder.tv_mode.setText("�q���d�I");
			} else if (mode == 1) {
				holder.tv_mode.setText("²�T�d�I");
			} else {
				holder.tv_mode.setText("�����d�I");
			}
			return view;
		}
	}
	//�NItem��������ϥ�static�׹��A�Qstatic�׹������O���줸�սX�bJVM���u�|�s�b�@���Ctv_number�Ptv_mode�b���|���]�|�u�s�b�@��
	private static class ViewHolder {
		TextView tv_number;
		TextView tv_mode;
	}

	/**
	 * �����[�J�¦W�渹�X���n�����I���ƥ�
	 * �[�J�@���¦W�渹�X
	 * @param view
	 */
	public void addBlackNumber(View view) {
		showBlackNumberDialog(0, 0);
	}

	/**
	 * ��ܥ[�J�¦W��ɪ��[�J��͵����άO�ק��͵����]��̦@�ΦP�@�ӥ�͵����^
	 * 
	 * @param flag
	 *            0 �N��[�J�A 1 �N��ק�
	 * @param position
	 *            �Q�ק諸Item�b���餤����m�C�Y�G�[�J ��ơA�[�J����ƥi�H����
	 */
	private void showBlackNumberDialog(final int flag, final int position) {
		//��o�@�ӵ���غc��
		AlertDialog.Builder builder = new Builder(this);
		//�N�[�J���X���G���ɮ��ഫ���@��View
		View dialogview = View.inflate(this, R.layout.add_black_number, null);
		//���o��J�¦W�渹�X��EditText
		final EditText et_number = (EditText) dialogview
				.findViewById(R.id.et_add_black_number);
		/*if(!TextUtils.isEmpty(initnumber)){
			et_number.setText(initnumber);
		}*/
		//���o��X�{����͵��������U�Ӥ���
		final CheckBox cb_phone = (CheckBox) dialogview
				.findViewById(R.id.cb_block_phone);
		final CheckBox cb_sms = (CheckBox) dialogview
				.findViewById(R.id.cb_block_sms);
		TextView tv_title = (TextView) dialogview
				.findViewById(R.id.tv_black_number_title);
		if (flag == 1) {//�ק�¦W����
			tv_title.setText("�ק�");
			//�N�n�ק諸�¦W�渹�X�^���츹�X��J�ؤ�
			BlackNumber blackNumber = (BlackNumber) lv_call_sms_safe
					.getItemAtPosition(position);
			String oldnumber = blackNumber.getNumber();
			et_number.setText(oldnumber);
			int m = blackNumber.getMode();
			//�z�L�d�I�Ҧ��ӫ��wCheckbox��������A
			if(m==0){//�q���d�I
				cb_phone.setChecked(true);
				cb_sms.setChecked(false);
			}else if(m==1){//²�T�d�I
				cb_sms.setChecked(true);
				cb_phone.setChecked(false);
			}else{//�q�ܻP²�T�d�I
				cb_phone.setChecked(true);
				cb_sms.setChecked(true);
			}
		}
		//�N�ഫ���G���ɮ׷s�W�쵡��W
		builder.setView(dialogview);
		//�����͵����������T�w�����s
		builder.setPositiveButton("�T�w", new DialogInterface.OnClickListener() {

			public void onClick(DialogInterface dialog, int which) {
				//���o���J�����X�A�ñN���X�e�᪺�Ů�M����
				String number = et_number.getText().toString().trim();
				//flag=1�N���O�ק�A�B�z�ܧ󪺮ɭ� �קK�ܧ�X�ӬۦP���q�ܸ��X.
				if(flag==1&&dao.find(number)){
					Toast.makeText(getApplicationContext(), "�n�ק諸�q�ܸ��X�w�g�s�b",0).show();
					return ;
				}
				//�Y�G��J���O�šA�h���������ثe��k
				if (TextUtils.isEmpty(number)) {
					return;
				} else {//��J�����X������
					// �[�J���G�C�Y�G�[�J���\ �A�ݭn���|�ɭ���s�¦W���ơC�w�]���O�[�J����
					boolean result = false;
					BlackNumber blacknumber = new BlackNumber();
					blacknumber.setNumber(number);
					//�q���d�I�g�M²�T�d�I�g���Q�Ŀ諸�ܡA�d�I�Ҧ����Ӭ�2
					if (cb_phone.isChecked() && cb_sms.isChecked()) {
						if (flag == 0) {//flag=1��ܬO�[�J�¦W�渹�X
							result = dao.add(number, "2");
							blacknumber.setMode(2);
						} else {//�ק�¦W�渹�X
							//���o��n�ק諸Item����
							BlackNumber blackNumber = (BlackNumber) lv_call_sms_safe
									.getItemAtPosition(position);
							//��s��Ʈw���n�ק諸�������
							dao.update(blackNumber.getNumber(), number, "2");
							blackNumber.setMode(2);
							blackNumber.setNumber(number);
							//���|�����d���s��ܸ�ơ]���ɡA�ɭ��W����ƳQ��s�^
							adpater.notifyDataSetChanged();
						}
					} else if (cb_phone.isChecked()) {//�q���d�I�A�d�I�Ҧ���0
						if (flag == 0) {//�[�J�¦W����
							result = dao.add(number, "0");
							blacknumber.setMode(0);
						} else {//�ק�¦W����
							//���o��n�ק諸Item����
							BlackNumber blackNumber = (BlackNumber) lv_call_sms_safe
									.getItemAtPosition(position);
							//��s��Ʈw���n�ק諸�������
							dao.update(blackNumber.getNumber(), number, "0");
							blackNumber.setMode(0);
							blackNumber.setNumber(number);
							//���|�����d���s��ܸ�ơ]���ɡA�ɭ��W����ƳQ��s�^
							adpater.notifyDataSetChanged();

						}
					} else if (cb_sms.isChecked()) {//�d�I�Ҧ���²�T�d�I�]�������Ʀr��1�^
						if (flag == 0) {//�[�J�¦W����
							result = dao.add(number, "1");
							blacknumber.setMode(1);
						}else{//�ק�¦W����
							//���o��n�ק諸Item����
							BlackNumber blackNumber = (BlackNumber) lv_call_sms_safe
									.getItemAtPosition(position);
							//��s��Ʈw���n�ק諸�������
							dao.update(blackNumber.getNumber(), number, "1");
							blackNumber.setMode(1);
							blackNumber.setNumber(number);
							//���|�����d���s��ܸ�ơ]���ɡA�ɭ��W����ƳQ��s�^
							adpater.notifyDataSetChanged();
						}
					} else {//�S����������d�I�Ҧ�
						Toast.makeText(getApplicationContext(), "�d�I�Ҧ����ର��", 0)
								.show();
						return;
					}
					if (result) {//�[�J�έק��Ʀ��\�A���ɻݭn��s�ɭ��M�椤�����
						//�N�s�[�J����Ʒs�W�춰�X���A�]�������d�O�q���X������ƪ�
						blacknumbers.add(blacknumber);
						//���|�����d���s��ܸ�ơ]���ɡA�ɭ��W����ƳQ��s�^
						adpater.notifyDataSetChanged();
					}
				}
			}
		});
		//�����͵����������������s���������I���ƥ�
		builder.setNegativeButton("����", new DialogInterface.OnClickListener() {
			public void onClick(DialogInterface dialog, int which) {

			}
		});
		//�إߨ���ܥX�����͵���
		builder.create().show();
	}
}
