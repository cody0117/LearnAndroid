package com.guoshisp.mobilesafe;

import java.util.ArrayList;
import java.util.List;

import android.app.Activity;
import android.app.ActivityManager;
import android.graphics.Color;
import android.os.Bundle;
import android.text.format.Formatter;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;

import com.guoshisp.mobilesafe.domain.ProcessInfo;
import com.guoshisp.mobilesafe.engine.ProcessInfoProvider;
import com.guoshisp.mobilesafe.view.MyToast;

public class TaskManagerActivity extends Activity implements OnClickListener {
	// ��ܨϥΪ̰����
	private ListView lv1;
	// ��ܨt�ΰ����
	private ListView lv2;
	// �P�_�ثe��ܪ��M��O�ϥΪ̰�����٬O�t�ΰ����
	private boolean showUserApp;
	// �����ϥΪ̰�����M�t�ΰ���������s�]�Ω��T��������P���@��M�z�����s�ɡG�P�_�O�ϥΪ̰�����A�٬O�t�ΰ�����^
	private Button bt_user, bt_system;
	// �ϥΪ̰�����Ҧb�M�檺�����d
	private UserAdapter useradapter;
	// �t�ΰ�����Ҧb�M�檺�����d
	private SystemAdapter systemadapter;
	// �Ω���o������������
	private ProcessInfoProvider provider;
	// ���t�ΰ�����[�J���@��Item�A��Item�W��ܡ������t�ΰ�����|�ɭP�t�Τ�í�w����r�C
	private TextView tvheader;
	// �s��ϥΪ̰���������X
	private List<ProcessInfo> userProcessInfos;
	// �s��t�ΰ���������X
	private List<ProcessInfo> systemProcessInfos;

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.task_manager);
		// �w�]���p�U�A��ܪ��O�ϥΪ̰�����M��
		showUserApp = true;
		provider = new ProcessInfoProvider(this);
		userProcessInfos = new ArrayList<ProcessInfo>();
		systemProcessInfos = new ArrayList<ProcessInfo>();
		// �z�Lprovider�Ө��o��������Ҧ������
		List<ProcessInfo> mRunningProcessInfos = provider.getProcessInfos();
		// �N���o�쪺�Ҧ�������i������O�x�s�]�ϥΪ̰�����M�t�ΰ�����^
		for (ProcessInfo info : mRunningProcessInfos) {
			if (info.isUserprocess()) {
				userProcessInfos.add(info);
			} else {
				systemProcessInfos.add(info);
			}
		}
		// �ϥΪ̰����������ListView�γ]�wListView���I���ƥ�
		lv1 = (ListView) findViewById(R.id.lv_usertask);
		lv1.setOnItemClickListener(new OnItemClickListener() {

			public void onItemClick(AdapterView<?> parent, View view,
					int position, long id) {
				CheckBox cb = (CheckBox) view.findViewById(R.id.cb_taskmanager);
				// ���o��Q�I����Item����
				ProcessInfo info = (ProcessInfo) lv1
						.getItemAtPosition(position);
				// �P�_�Q�I����Item�O�_�O�ڭ̦ۤv������w���äh���ء]�ڭ̤��e�\�����ۤv���M�ε{���^
				if (info.getPackname().equals(getPackageName())) {
					return;
				}
				// ��ʪ��]�wCheckbox�����A
				if (info.isChecked()) {
					info.setChecked(false);
					cb.setChecked(false);
				} else {
					info.setChecked(true);
					cb.setChecked(true);
				}

			}
		});
		// �t�ΰ����������ListView�γ]�wListView���I���ƥ�
		lv2 = (ListView) findViewById(R.id.lv_systemtask);
		lv2.setOnItemClickListener(new OnItemClickListener() {
			public void onItemClick(AdapterView<?> parent, View view,
					int position, long id) {
				// �T�� �T���t�ΰ���������Ĥ@��Item���I���ƥ�
				if (view instanceof TextView) {
					return;
				}
				CheckBox cb = (CheckBox) view.findViewById(R.id.cb_taskmanager);
				// ���o��Q�I����Item����
				ProcessInfo info = (ProcessInfo) lv2
						.getItemAtPosition(position);
				// ��ʪ��]�wCheckbox�����A
				if (info.isChecked()) {
					info.setChecked(false);
					cb.setChecked(false);
				} else {
					info.setChecked(true);
					cb.setChecked(true);
				}
			}
		});
		// �����ϥΪ̰���������s�n���@�Ӻ�ť��
		bt_user = (Button) findViewById(R.id.bt_user);
		bt_user.setOnClickListener(this);
		bt_user.setBackgroundDrawable(getResources().getDrawable(
				R.drawable.bt_pressed));
		// �����t�ΰ���������s�n���@�Ӻ�ť��
		bt_system = (Button) findViewById(R.id.bt_system);
		bt_system.setOnClickListener(this);
		bt_system.setBackgroundDrawable(getResources().getDrawable(
				R.drawable.bg_normal));
		// �w�]���p�U��ܪ��O�ϥΪ̰�����M��A�ҥH�ڭ�����N�t�ΰ�����M��]�w�����i���CView.GONE�GView�L�ġA�B�����ΪŶ�
		lv2.setVisibility(View.GONE);
		// ���ϥΪ̰�����M��]�w��Ƥ����d
		useradapter = new UserAdapter();
		lv1.setAdapter(useradapter);
		// �N��TextView�����t�ΰ����������ListView���Ĥ@��Item
		tvheader = new TextView(getApplicationContext());
		tvheader.setText("�����t�ΰ�����|�ɭP�t�Τ�í�w");
		tvheader.setBackgroundColor(Color.YELLOW);
		// �Ntvheader�s�W��t�ΰ����������ListView���A���ɡAtvheader�ݩ��ListView���@���]�Ĥ@��Item�Y�O�^�C�����b�հt��ƫe�[�J
		lv2.addHeaderView(tvheader);
		// ���t�ΰ�����M��]�w��Ƥ����d
		systemadapter = new SystemAdapter();
		lv2.setAdapter(systemadapter);
	}

	// ���ϥΪ̰����������ListView�հt���
	private class UserAdapter extends BaseAdapter {

		public int getCount() {
			return userProcessInfos.size();
		}

		public Object getItem(int position) {
			return userProcessInfos.get(position);
		}

		public long getItemId(int position) {
			return position;
		}

		public View getView(int position, View convertView, ViewGroup parent) {
			View view;
			// �ϥΰ�O���餤���ߤ@���@���줸�սX�]ListView���ﵽ�^
			ViewHolder holder = new ViewHolder();
			// �_�Χ֨��]ListView���ﵽ�^
			if (convertView == null) {
				view = View.inflate(getApplicationContext(),
						R.layout.task_manager_item, null);
				holder = new ViewHolder();
				holder.iv_icon = (ImageView) view
						.findViewById(R.id.iv_taskmanger_icon);
				holder.tv_name = (TextView) view
						.findViewById(R.id.tv_taskmanager_appname);
				holder.tv_mem = (TextView) view
						.findViewById(R.id.tv_taskmanager_mem);
				holder.cb = (CheckBox) view.findViewById(R.id.cb_taskmanager);
				view.setTag(holder);
			} else {
				// �ϥΧ֨���view
				view = convertView;
				// ���o��֨���view���Х�
				holder = (ViewHolder) view.getTag();
			}
			// �q�ϥΪ̰�������������X�����X��������������ƪ��հt
			ProcessInfo info = userProcessInfos.get(position);
			// �Y�G�M�ε{���O�ڭ̦ۤv������äh�A���ñ�Checkbox�]�קK�����ۤv�^
			if (info.getPackname().equals(getPackageName())) {
				holder.cb.setVisibility(View.INVISIBLE);
			} else {
				holder.cb.setVisibility(View.VISIBLE);
			}
			// ��Item�հt��ơG�M�ιϥܡB�W�١B���ΰO����j�p�B�O�_�B��Ŀ窱�A�]�w�]���p�U���O���Ŀ窱�A�^
			holder.iv_icon.setImageDrawable(info.getIcon());
			holder.tv_name.setText(info.getAppname());
			holder.tv_mem.setText(Formatter.formatFileSize(
					getApplicationContext(), info.getMemsize()));
			holder.cb.setChecked(info.isChecked());
			// �Ǧ^Item������view
			return view;
		}
	}

	// �ϥ�static�׹��A�i�H�T�O�Ӫ���b��O���餤�u�s�b�@���줸�սX�ɮס]�Ҧ���Item�@�θӦ줸�սX�ɮס^
	static class ViewHolder {
		ImageView iv_icon;
		TextView tv_name;
		TextView tv_mem;
		CheckBox cb;
	}

	// ���t�ΰ����������ListView�հt���
	private class SystemAdapter extends BaseAdapter {

		public int getCount() {
			return systemProcessInfos.size();
		}

		public Object getItem(int position) {
			return systemProcessInfos.get(position);
		}

		public long getItemId(int position) {
			return position;
		}

		public View getView(int position, View convertView, ViewGroup parent) {

			View view;
			ViewHolder holder = new ViewHolder();
			if (convertView == null) {
				view = View.inflate(getApplicationContext(),
						R.layout.task_manager_item, null);
				holder = new ViewHolder();
				holder.iv_icon = (ImageView) view
						.findViewById(R.id.iv_taskmanger_icon);
				holder.tv_name = (TextView) view
						.findViewById(R.id.tv_taskmanager_appname);
				holder.tv_mem = (TextView) view
						.findViewById(R.id.tv_taskmanager_mem);
				holder.cb = (CheckBox) view.findViewById(R.id.cb_taskmanager);
				view.setTag(holder);
			} else {
				view = convertView;
				holder = (ViewHolder) view.getTag();
			}
			ProcessInfo info = systemProcessInfos.get(position);
			holder.iv_icon.setImageDrawable(info.getIcon());
			holder.tv_name.setText(info.getAppname());
			holder.tv_mem.setText(Formatter.formatFileSize(
					getApplicationContext(), info.getMemsize()));
			holder.cb.setChecked(info.isChecked());

			return view;
		}
	}

	// �T�M�Τ������B�t�ΰ���������s���I���ƥ�]�����ϥΪ̰�����M��M�t�ΰ�����M�檺�����^
	public void onClick(View v) {
		switch (v.getId()) {
		// �Ѩt�ΰ�����M�������ϥΪ̰�����M��]�άO�ثe�M�������ثe�M��^
		case R.id.bt_user:
			// �����t�ΰ�����M�椤���Ĥ@�ӥΩ󴣥ܪ�Item
			if (tvheader != null) {
				lv2.removeHeaderView(v);
				tvheader = null;
			}
			// �ثe��ܪ��O�ϥΪ̰����
			showUserApp = true;
			// �]�w��ӫ��s���I����A�H�ܰϤ�
			bt_user.setBackgroundDrawable(getResources().getDrawable(
					R.drawable.bt_pressed));
			bt_system.setBackgroundDrawable(getResources().getDrawable(
					R.drawable.bg_normal));
			// �Nlv1�]�w���i���Alv2�]�w�����i��
			lv1.setVisibility(View.VISIBLE);
			lv2.setVisibility(View.INVISIBLE);

			break;
		// �Ѩt�ϥΪ̵{�M�������t�ΰ�����M��]�άO�ثe�M�������ثe�M��^
		case R.id.bt_system:
			showUserApp = false;
			bt_system.setBackgroundDrawable(getResources().getDrawable(
					R.drawable.bt_pressed));
			bt_user.setBackgroundDrawable(getResources().getDrawable(
					R.drawable.bg_normal));
			lv2.setVisibility(View.VISIBLE);
			lv1.setVisibility(View.INVISIBLE);

			break;
		}

	}

	/**
	 * ������s���I���ƥ�
	 */
	public void selectAll(View view) {
		//�P�_�O�ϥΪ̰��������A�٬O�t�ΰ��������
		if (showUserApp) {
			//���N��������X�A�N�C��info����Checkbox���]�w��true�]�Ŀ�^�A�M�᪾�|�����d��s���
			for (ProcessInfo info : userProcessInfos) {
				info.setChecked(true);
				useradapter.notifyDataSetChanged();
			}

		} else {
			//���N��������X�A�N�C��info����Checkbox���]�w��true�]�Ŀ�^�A�M�᪾�|�����d��s���
			for (ProcessInfo info : systemProcessInfos) {
				info.setChecked(true);
				systemadapter.notifyDataSetChanged();
			}
		}
	}

	/**
	 * �@��M�z���I���ƥ�
	 */
	public void oneKeyClear(View v) {
		//���o��ActivityManager����A�Ӫ��󤤦�������������ʧ@
		ActivityManager am = (ActivityManager) getSystemService(ACTIVITY_SERVICE);
		//�p�ƭn�Q�����h�֭Ӱ����
		int count = 0;
		//�p�ƭn�Q�������Ҧ�������Ҧ��Ϊ��O����j�p
		long memsize = 0;
		//�s��w�Q�Q�����������
		List<ProcessInfo> killedProcessInfo = new ArrayList<ProcessInfo>();
		//�P�_�O�M�z�ϥΪ̰�����٬O�M�z�t�ΰ����
		if (showUserApp) {//�ϥΪ̰����
			for (ProcessInfo info : userProcessInfos) {
				//�ھ�Checkbox��������A�ӽT�w���ǰ�����ݭn�Q�M�z
				if (info.isChecked()) {
					//����֥[�ʧ@
					count++;
					memsize += info.getMemsize();
					//����kill�ʧ@
					am.killBackgroundProcesses(info.getPackname());
					//�N�����᪺������s�J���X��
					killedProcessInfo.add(info);
				}
			}

		} else {//�t�ΰ����
			for (ProcessInfo info : systemProcessInfos) {
				if (info.isChecked()) {
					count++;
					memsize += info.getMemsize();
					am.killBackgroundProcesses(info.getPackname());
					killedProcessInfo.add(info);

				}
			}
		}
		//���N�X�Q������������A�P�_���Ӷ��X���]�A�Ӱ�����A�Y�G�]�A�A�h�������]�Ω��s�M����ܡ^
		for (ProcessInfo info : killedProcessInfo) {
			if (info.isUserprocess()) {
				if (userProcessInfos.contains(info)) {
					userProcessInfos.remove(info);
				}
			} else {
				if (systemProcessInfos.contains(info)) {
					systemProcessInfos.remove(info);
				}
			}
		}
		//��s������
		if (showUserApp) {
			useradapter.notifyDataSetChanged();
		} else {
			systemadapter.notifyDataSetChanged();
		}

		
		/* Toast.makeText( this, "�����F" + count + "�Ӱ����,����F" +
		  Formatter.formatFileSize(this, memsize) + "�O����", 1) .show();*/
		
		//�ϥΦۭq��Toast����ܱ�����������ơA�H�����񪺰O����Ŷ��C
		MyToast.showToast(
				this,
				"�����F" + count + "�Ӱ����,����F"
						+ Formatter.formatFileSize(this, memsize) + "�O����");
	}
}