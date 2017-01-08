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
	//���n�]�w�x�s����
	private SharedPreferences sp;
	//�Ĥ@���i�J��������s���ɭ��ɪ��ɭ��������
	private EditText et_first_dialog_pwd;
	private EditText et_first_dialog_pwd_confirm;
	private Button bt_first_dialog_ok;
	private Button bt_first_dialog_cancle;
	//�ĤG���i�J��������s���ɭ��ɪ��ɭ��������
	private EditText et_normal_dialog_pwd;
	private Button bt_normal_dialog_ok;
	private Button bt_normal_dialog_cancle;
	//�]�w���F�����᪺���G�ɭ��������
	private TextView tv_lost_protect_number;//�j�w���w�����X
	private RelativeLayout rl_lost_protect_setting;//���s�O�@�]�w�O�_�}�ҩҦb��������A���o�ӱ���O�n���ӱ���]�w�I���ƥ�]�I���ӱ���������N�@�ӱ�����|�T���I���ƥ�^
	private CheckBox cb_lost_protect_setting;//���s�O�@�O�_�}��
	private TextView tv_lost_protect_reentry_setup;//�ӱ�����I���ƥ����G���s�i�J�]�w���F�ɭ�
	//��͵�������
	private AlertDialog dialog;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		//���oSdcard�U��config.xml�ɮסA�Y�G���ɮפ��s�b�A����N�|�۰ʫإ߸��ɮ�
		sp = getSharedPreferences("config", MODE_PRIVATE);
		// �P�_�ϥΪ̬O�_�]�w�L�K�X
		if (isSetupPwd()) {
			//�i�J�D�Ĥ@���i�J��������s���ɭn��ܪ���͵���
			showNormalEntryDialog();
		} else {
			//�i�J�Ĥ@���i�J��������s���ɭn��ܪ���͵���
			showFirstEntryDialog();
		}
	}

	/**
	 * �Ĥ@���i�J��������s���ɭn��ܪ���͵���
	 */
	private void showFirstEntryDialog() {
		//�o���͵������غc��
		AlertDialog.Builder builder = new Builder(this);
		//�z�LView����inflate(Context context, int resource, ViewGroup root)����N�Ĥ@���i�J��������s���n�X�{�������͵������G���ɮ��ର�@��View����
		View view = View.inflate(this, R.layout.first_entry_dialog, null);
		//�d��view���󤤪��U�ӱ��
		et_first_dialog_pwd = (EditText) view
				.findViewById(R.id.et_first_dialog_pwd);
		et_first_dialog_pwd_confirm = (EditText) view
				.findViewById(R.id.et_first_dialog_pwd_confirm);
		bt_first_dialog_ok = (Button) view
				.findViewById(R.id.bt_first_dialog_ok);
		bt_first_dialog_cancle = (Button) view
				.findViewById(R.id.bt_first_dialog_cancle);
		//���O�����������B���T�w�����s�]�w�@�Ӻ�ť��
		bt_first_dialog_cancle.setOnClickListener(this);
		bt_first_dialog_ok.setOnClickListener(this);
		//�N�W����View����s�W���͵����W
		builder.setView(view);
		//���o���͵�������
		dialog = builder.create();
		//��ܥX��͵���
		dialog.show();
	}

	/**
	 * ��]�w�L�K�X��A�зǶi�J��������s���ɭn��ܪ���͵���
	 */
	private void showNormalEntryDialog() {
		AlertDialog.Builder builder = new Builder(this);
		builder.setOnCancelListener(new OnCancelListener() {
			//���I�������������s�ɡA�����������ثe��LostProtectedActivity�A�{���|�i�J��D�ɭ�
			public void onCancel(DialogInterface dialog) {
				finish();
			}
		});
		//�z�LView����inflate(Context context, int resource, ViewGroup root)����N�D�Ĥ@���i�J��������s���n�X�{�������͵������G���ɮ��ର�@��View����
		View view = View.inflate(this, R.layout.normal_entry_dialog, null);
		//�d��view���󤤪��U�ӱ��
		et_normal_dialog_pwd = (EditText) view
				.findViewById(R.id.et_normal_dialog_pwd);
		bt_normal_dialog_ok = (Button) view
				.findViewById(R.id.bt_normal_dialog_ok);
		bt_normal_dialog_cancle = (Button) view
				.findViewById(R.id.bt_normal_dialog_cancle);
		//���O�����������B���T�w�����s�]�w�@�Ӻ�ť��
		bt_normal_dialog_cancle.setOnClickListener(this);
		bt_normal_dialog_ok.setOnClickListener(this);
		//�N�W����View����s�W���͵����W
		builder.setView(view);
		//���o���͵�������
		dialog = builder.create();
		//��ܥX��͵���
		dialog.show();
	}

	/**
	 * �P�_�ϥΪ̬O�_�]�w�L�K�X
	 * 
	 * @return
	 */
	private boolean isSetupPwd() {
		String savedpwd = sp.getString("password", "");
		if (TextUtils.isEmpty(savedpwd)) {//�z�L�@�Ӥ�r�u�����O�ӧP�_String�O�_����
			return false;
		} else {
			return true;
		}
		// return (!TextUtils.isEmpty(savedpwd));
	}
	/**
	 * ����ӥ�͵����������T�w���M�����������s�]�w����ť��
	 */
	public void onClick(View v) {

		switch (v.getId()) {
		//�Ĥ@���i�J��������s���ɥX�{����͵������A����������s�ƥ󪺳B�z
		case R.id.bt_first_dialog_cancle:
			dialog.cancel();//������͵���
			finish();//�����ثe��Activity��|�i�J�{�����D�ɭ�
			break;
		//�Ĥ@���i�J��������s���ɥX�{����͵������A��T�w�����s�ƥ󪺳B�z	
		case R.id.bt_first_dialog_ok:
			//���o����EditText������J���K�X�A�ñNEditText�e�᪺�Ů浹�h����
			String pwd = et_first_dialog_pwd.getText().toString().trim();
			String pwd_confirm = et_first_dialog_pwd_confirm.getText()
					.toString().trim();
			//�P�_���EditText�������e�O�_����
			if (TextUtils.isEmpty(pwd_confirm) || TextUtils.isEmpty(pwd)) {
				Toast.makeText(this, "�K�X���ର��", 1).show();
				return;
			}
			//�P�_���EditText�������e�O�_�ۦP
			if (pwd.equals(pwd_confirm)) {
				//���o��@�ӽs�边����A���B�Ω�sp���s����
				Editor editor = sp.edit();
				//�N�[�K�᪺�K�X�s�J��sp�ҹ������ɮפ�
				editor.putString("password", Md5Encoder.encode(pwd));
				//�N�s�誺��ƶǰe��~��u�����s�J�isp��
				editor.commit();
				//�P���ثe����͵���
				dialog.dismiss();
				//�������ثe��Activity��A���D�ܥD�ɭ�
				finish();
			} else {
				Toast.makeText(this, "�⦸�K�X���ۦP", 1).show();
				return;
			}

			break;
			//�D�Ĥ@���i�J��������s���ɥX�{����͵������A����������s�ƥ󪺳B�z
		case R.id.bt_normal_dialog_cancle:
			dialog.cancel();
			finish();
			break;
			//�D�Ĥ@���i�J��������s���ɥX�{����͵������A��T�w�����s�ƥ󪺳B�z	
		case R.id.bt_normal_dialog_ok:
			String userentrypwd = et_normal_dialog_pwd.getText().toString()
					.trim();
			if (TextUtils.isEmpty(userentrypwd)) {
				Toast.makeText(this, "�K�X���ର��", 1).show();
				return;
			}
			String savedpwd = sp.getString("password", "");
			//�]���ڭ̦b�]�w�K�X��A�s�J���O�[�K�᪺�K�X�A�ҥH��ڭ̱N��J���K�X�P�]�w���K�X����ɻݭn�N��J���K�X���[�K
			if (savedpwd.equals(Md5Encoder.encode(userentrypwd))) {
				Toast.makeText(this, "�K�X���T�i�J�ɭ�", 1).show();
				dialog.dismiss();
				// �P�_�ϥΪ̬O�_�i��L�]�w���F.
				if(isSetupAlready()){
					//�i�J�짹���]�w���F�᪺�ɭ�
					Log.i(TAG,"�i�J�짹���]�w���F�᪺�ɭ�");
					setContentView(R.layout.lost_protected);
					//�j�w���w�����X
					tv_lost_protect_number = (TextView) findViewById(R.id.tv_lost_protect_number);
					String safemuber = sp.getString("safemuber", "");
					tv_lost_protect_number.setText(safemuber);
					//���s�O�@�]�w�O�_�}�ҩҦb��������A���o�ӱ���O�n���ӱ���]�w�I���ƥ�]�I���ӱ���������N�@�ӱ�����|�T���I���ƥ�^
					rl_lost_protect_setting = (RelativeLayout)findViewById(R.id.rl_lost_protect_setting);
					//���s�O�@�O�_�}��
					cb_lost_protect_setting = (CheckBox)findViewById(R.id.cb_lost_protect_setting);
					boolean protecting = sp.getBoolean("protecting", false);
					cb_lost_protect_setting.setChecked(protecting);
					if(protecting){
						cb_lost_protect_setting.setText("���s�O�@�w�g�}��");
					}else{
						cb_lost_protect_setting.setText("���s�O�@�S���}��");
					}
					//�ӱ�����I���ƥ����G���s�i�J�]�w���F�ɭ�
					tv_lost_protect_reentry_setup = (TextView)findViewById(R.id.tv_lost_protect_reentry_setup);
					
					rl_lost_protect_setting.setOnClickListener(this);
					tv_lost_protect_reentry_setup.setOnClickListener(this);
					
				}else{
					//�i�J�]�w���F�ɭ�
					Log.i(TAG,"�i�J��]�w���F�ɭ�");
					Intent intent = new Intent(this,Setup1Activity.class);
					//����Ӥ�k����]�b��G��ϥΪ̧����]�w���F���back��ɡA�קK�X�{���e���ɭ��A�W�j�ϥΪ̸g��ĪG
					finish();
					startActivity(intent);
				}
				return;
			} else {
				Toast.makeText(this, "�K�X�����T", 1).show();
				return;
			}
		case R.id.tv_lost_protect_reentry_setup://���s�i�J�]�w���F
			Intent reentryIntent = new Intent(this,Setup1Activity.class);
			startActivity(reentryIntent);
			finish();
			break;
		case R.id.rl_lost_protect_setting://�O�_�}�Ҩ��s�O�@
			Editor editor =	sp.edit();
			if(cb_lost_protect_setting.isChecked()){
				cb_lost_protect_setting.setChecked(false);
				cb_lost_protect_setting.setText("���s�O�@�S���}��");
				editor.putBoolean("protecting", false);
				
			}else{
				cb_lost_protect_setting.setChecked(true);
				cb_lost_protect_setting.setText("���s�O�@�w�g�}��");
				editor.putBoolean("protecting", true);
			}
			editor.commit();
			break;
		}
	}
	/**
	 * �P�_�ϥΪ̬O�_�����L�]�w���F
	 * 
	 * @return
	 */
	private boolean isSetupAlready() {
		//�w�]���p�U�Ǧ^false�A��ܨϥΪ̨S���i��L�]�w���F
		return sp.getBoolean("issetup", false);
	}
	/**
	 * �����Menu��ɷ|�}�Ҥ@�ӿ��A��m�J�Ĥ@���Q�}�ҮɡA�ج[�^�ոӤ�k
	 */
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		//�ѼƤ@�G�ثeItem�Ҧb���s�աA�ѼƤG�G�ثeItem��id���A�bSwitch���n�Ψ�
		//�ѼƤT�G��X�{�h��Item�ɡA�ӼƦr�i�H�M�wItem�b��椤���e���m�A�Ѽƥ|�G�ثeItem�b��椤�����D
		menu.add(1, 1, 1, "�ܧ���D�W��");
		return true;
	}
	/**
	 * ��@�ӿ�椤��Item�Q�Ŀ�ɡA�ج[�^�ոӤ�k�A�ñN���I�諸Item�ǤJ
	 */
	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		//�W���w�q��id��1
		if (item.getItemId() == 1) {
			//���o�@�ӵ���غc��
			AlertDialog.Builder builder = new Builder(this);
			//�إߤ@�Ӥ�r��J��
			final EditText et = new EditText(this);
			//�]�w��r��J�ؤ����ܪ����e�A���I����r��J�خɡA�Ӥ��e�|�۰ʮ���
			et.setHint("�п�J�s�����D�W��,�i�H�d��");
			//�N��r��J�طs�W�쵡���͵����W
			builder.setView(et);
			//�������͵����[�J�@�ӡ��T�w�����s
			builder.setPositiveButton("�T�w",
					new DialogInterface.OnClickListener() {
						//���I�����T�w�����s�ɭn���檺�^�դ�k
						public void onClick(DialogInterface dialog, int which) {
							//���o��r��J�ؤ������e�A�ñN��r�e�᪺�Ů�h����
							String newname = et.getText().toString().trim();
							//���osp�������s�边
							Editor editor = sp.edit();
							//�N�ק�᪺�W���x�s��sp���A���ɸ���٥u�b�֨���
							editor.putString("newname", newname);
							//��Ưu�����Q�x�s��sp�������ɮפ�
							editor.commit();
						}
					});
			//�إߨ���ܥX�����͵���
			builder.create().show();
		}
		 return super.onOptionsItemSelected(item);
	}
}
