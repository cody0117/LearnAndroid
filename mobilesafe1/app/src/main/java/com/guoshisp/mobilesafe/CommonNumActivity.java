package com.guoshisp.mobilesafe;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.ExpandableListView.OnChildClickListener;
import android.widget.TextView;

import com.guoshisp.mobilesafe.db.dao.CommonNumDao;

public class CommonNumActivity extends Activity {
	protected static final String TAG = "CommonNumActivity";
	private ExpandableListView elv_common_num;//�i������ListView
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.common_num);
		elv_common_num = (ExpandableListView) findViewById(R.id.elv_common_num);
		elv_common_num.setAdapter(new CommonNumberAdapter());//��ExpandableListView�]�w�@�Ӥ����d����A�Ӫ���ݭn�OExpandableListAdapter���󪺤l���O
		//�����s�դ����C�ӫĤl�n���@�Ӻ�ť��
		elv_common_num.setOnChildClickListener(new OnChildClickListener() {
			public boolean onChildClick(ExpandableListView parent, View v,
					int groupPosition, int childPosition, long id) {
				//���o��TextView�����q�ܸ��X
				TextView tv = (TextView) v;
				String number = tv.getText().toString().split("\n")[1];
				//�ϥ������N�ϨӱҰʤ���t�Τ���������
				Intent intent = new Intent();
				intent.setAction(Intent.ACTION_DIAL);
				intent.setData(Uri.parse("tel:"+number));
				startActivity(intent);
				return false;
			}
		});
	}
	//ExpandableListView�������d����A�Ӫ���OExpandableListAdapter���󪺤l���O
	private class CommonNumberAdapter extends BaseExpandableListAdapter {
		//�x�s�����s�դ����l�Ĥl���ԲӰT��
		private List<String> groupNames;
		//�N�l�Ĥl���Ҧ��T���@���ʱq��Ʈw�����o�X�ӡA�o�˥i�H�קK���_�d�߸�Ʈw�O����֨����X�Ckey�G���s�ժ���m  value�G���s�ո̭��Ҧ��l�Ĥl���T��
		private Map<Integer, List<String>> childrenCache; 

		public CommonNumberAdapter() {
			childrenCache = new HashMap<Integer, List<String>>();
		}

		/**
		 * �Ǧ^�ثe�M�榳�h�ָs��
		 */
		public int getGroupCount() {
			// groupNames = CommonNumDao.getGroupNames();
			// return groupNames.size();
			return CommonNumDao.getGroupCount();
		}

		/**
		 * �Ǧ^�C�@�s�ո̭����h�֭Ӷ���
		 */
		public int getChildrenCount(int groupPosition) {
			// if(childrenCache.containsKey(groupPosition)){
			// return childrenCache.get(groupPosition).size(); //�Ǧ^�֨������
			// }else{
			// List<String> results =
			// CommonNumDao.getChildNameByPosition(groupPosition);
			// childrenCache.put(groupPosition, results);//���Ʃ�b�֨��̭�
			// return results.size();
			// }
			return CommonNumDao.getChildrenCount(groupPosition);
		}
		/**
		 * �Ǧ^���s�թҹ���������C�o�̧ڭ̥Τ���A�ҥH�Ǧ^null�C
		 */
		public Object getGroup(int groupPosition) {
			return null;
		}
		/**
		 * ���o���s�դ������ت���C�o�̧ڭ̥Τ���A�ҥH�Ǧ^null�C
		 */
		public Object getChild(int groupPosition, int childPosition) {
			return null;
		}
		/**
		 * ���o���s�թҹ�����id
		 */
		public long getGroupId(int groupPosition) {
			return groupPosition;
		}
		/**
		 * ���o���s�դ������ةҹ�����id
		 */
		public long getChildId(int groupPosition, int childPosition) {
			return childPosition;
		}
		/**
		 * �O�_�n�����s�դ������س]�w�@�Uid�Cfalse�N���γ]�w�C
		 */
		public boolean hasStableIds() {
			return false;
		}

		/**
		 * �Ǧ^�C�@�Ӥ��s�ժ�view����.
		 * �ѼƤ@�G�ثe���s�ժ�id
		 * �ѼƤG�G�ثe���s�ժ�View�O�_�i����
		 * �ѼƤT�G�֨���View����
		 * �Ѽƥ|�G�ثe���s�ժ���View����
		 */
		public View getGroupView(int groupPosition, boolean isExpanded,
				View convertView, ViewGroup parent) {
			TextView tv;
			//�ϥΧ֨���View����
			if (convertView == null) {
				tv = new TextView(getApplicationContext());
			} else {
				tv = (TextView) convertView;
			}
			tv.setTextSize(28);
			if (groupNames != null) {
				tv.setText("          " + groupNames.get(groupPosition));
			} else {
				groupNames = CommonNumDao.getGroupNames();
				tv.setText("          " + groupNames.get(groupPosition));
			}

			return tv;
		}

		/**
		 * �Ǧ^�C�@�Ӥ��s�� �Y�@�Ӧ�m�������Ĥl��view����
		 * �ѼƤ@�G�ثe���s�ժ�id
		 * �ѼƤG�G���s�դ����l�Ĥl��id
		 * �ѼƤT�G���s�դ����l�Ĥl�O�_�O�̫�@��
		 * �Ѽƥ|�G�l�ĤlView���֨�����
		 * �ѼƤ��G���s�դ����l�Ĥl�Ҧb����View����
		 */
		public View getChildView(int groupPosition, int childPosition,
				boolean isLastChild, View convertView, ViewGroup parent) {
			TextView tv;
			if (convertView == null) {

				tv = new TextView(getApplicationContext());
			} else {
				tv = (TextView) convertView;
			}
			tv.setTextSize(20);
			String result = null;
			if (childrenCache.containsKey(groupPosition)) {
				result = childrenCache.get(groupPosition).get(childPosition);
			} else {
				List<String> results = CommonNumDao
						.getChildNameByPosition(groupPosition);
				childrenCache.put(groupPosition, results);// ���Ʃ�b�֨��̭�
				result = results.get(childPosition);
			}
			tv.setText(result);
			return tv;
		}
		/**
		 * �Ǧ^�ȭY�G��true�A�h��ܨC�Ӥ��s�ժ��l�Ĥl���i�H�T�����I���ƥ�A�_�h�A���i�H�T��
		 */
		public boolean isChildSelectable(int groupPosition, int childPosition) {
			return true;
		}

	}
}
