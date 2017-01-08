package com.guoshisp.mobilesafe;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.os.StatFs;
import android.text.format.Formatter;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.ScaleAnimation;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.widget.Toast;

import com.guoshisp.mobilesafe.domain.AppInfo;
import com.guoshisp.mobilesafe.engine.AppInfoProvider;
import com.guoshisp.mobilesafe.utils.DensityUtil;

public class AppManagerActivity extends Activity implements OnClickListener{
	protected static final int LOAD_APP_FINSISH = 50;
	private static final String TAG = "AppManagerActivity";
	private TextView tv_appmanager_mem_avail;//��ܤ���i�ΰO����
	private TextView tv_appmanager_sd_avail;//���Sdcard�i�ΰO����
	private ListView lv_appmanager;//�i�ܨϥΪ̵{���B�t�ε{��
	private LinearLayout ll_loading;//ProgressBar��������A�Ω󱱨�ӱ�������l��������
	private PackageManager pm; // �۷��windows�t�ΤU�����{���޲z���]�i�H���o������Ҧ����M�ε{���^
	private List<AppInfo> appinfos;//�s�������Ҧ����M�ε{���]�ϥΪ̵{��+�t�ε{���^
	private List<AppInfo> userappInfos;//�s��ϥΪ̵{��
	private List<AppInfo> systemappInfos;//�s��t�ε{��
	//PopupWindow��contentView�������T�ӱ��
	private LinearLayout ll_uninstall;//����
	private LinearLayout ll_start;//�Ұ�
	private LinearLayout ll_share;//����

	private PopupWindow popupWindow;

	private String clickedpackname;
	//��M�ε{���b�l��������������J���\��A���|�D�b�{��ܸ��
	private Handler handler = new Handler() {
		public void handleMessage(android.os.Message msg) {
			switch (msg.what) {
			case LOAD_APP_FINSISH:
				ll_loading.setVisibility(View.INVISIBLE);
				lv_appmanager.setAdapter(new AppManagerAdapter());
				break;
			}
		};
	};

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		setContentView(R.layout.app_manager);
		super.onCreate(savedInstanceState);
		tv_appmanager_mem_avail = (TextView) findViewById(R.id.tv_appmanager_mem_avail);
		tv_appmanager_sd_avail = (TextView) findViewById(R.id.tv_appmanager_sd_avail);
		ll_loading = (LinearLayout) findViewById(R.id.ll_appmanager_loading);
		lv_appmanager = (ListView) findViewById(R.id.lv_appmanager);
		tv_appmanager_sd_avail.setText("SD�d�i��" + getAvailSDSize());
		tv_appmanager_mem_avail.setText("�O����i��:" + getAvailROMSize());

		pm = getPackageManager();
		//���J�Ҧ��M�ε{�������
		fillData();
		//��ListView�]�w�I���ƥ�
		lv_appmanager.setOnItemClickListener(new OnItemClickListener() {

			public void onItemClick(AdapterView<?> parent, View view,
					int position, long id) {
				//��ϥΪ��I���U�@��Item�ɡA�ݭn�����w�g�s�b��PopupWindow
				dismissPopupWindow();
				//�N�G���ɮ��নview�A��view�Ω����PopupWindow�������e
				View contentView = View.inflate(getApplicationContext(),
						R.layout.popup_item, null);
				//���O���o��PopupWindow���餤��"�����B�ҰʡB����"����ҹ����������
				ll_uninstall = (LinearLayout) contentView
						.findViewById(R.id.ll_popup_uninstall);
				ll_start = (LinearLayout) contentView
						.findViewById(R.id.ll_popup_start);
				ll_share = (LinearLayout) contentView
						.findViewById(R.id.ll_popup_share);
				//��"�����B�ҰʡB����"�]�w�I���ƥ�
				ll_share.setOnClickListener(AppManagerActivity.this);
				ll_start.setOnClickListener(AppManagerActivity.this);
				ll_uninstall.setOnClickListener(AppManagerActivity.this);
				//���o�Ω����PopupWindow���e��View���ڧG���A�o�̬O�n���ӧG���]�w�ʵe�]�۷��PopupWindow�]�w�ʵe�^
				LinearLayout ll_popup_container = (LinearLayout) contentView
						.findViewById(R.id.ll_popup_container);
				//�]�w�@���Y�񪺰ʵe�ĪG
				ScaleAnimation sa = new ScaleAnimation(0.0f, 1.0f, 0.0f, 1.0f);
				//�]�w�ʵe���檺�ɶ�
				sa.setDuration(300);
				//���o��ثeItem������
				Object obj = lv_appmanager.getItemAtPosition(position);
				//��Item���t�ήM�ήɡA���ɬ�PopupWindow����"����"�]�w�@�ӼХܡA�b�����ɧP�_�ӼХܡA�T����t�ήM��
				if (obj instanceof AppInfo) {
					AppInfo appinfo = (AppInfo) obj;
					clickedpackname = appinfo.getPackname();
					if (appinfo.isUserapp()) {
						ll_uninstall.setTag(true);
					} else {
						ll_uninstall.setTag(false);
					}
				} else {
					return;
				}
				//���o��ثeItem�������B�������Z��
				int top = view.getTop();
				int bottom = view.getBottom();            
				//�إ�PopupWindow����ɥ����n���w���骺�j�p�A�_�h���|��ܦb�ɭ��W�C�ѼƤ@�G���餤�Ω���ܤ��e��viewContent�A�ѼƤG�B�T�G���PopupWindow���骺�e�M��
				popupWindow = new PopupWindow(contentView, DensityUtil.dip2px(getApplicationContext(), 200), bottom - top
						+ DensityUtil.dip2px(getApplicationContext(), 20));
				// �`�N:�@�w�n��popwindow�]�w�I���Ϥ��έI���귽,�Y�G���]�w�I���귽 , �ʵe�B �J�I���B�z ���|���Ͱ��D�C
				popupWindow.setBackgroundDrawable(new ColorDrawable(
						Color.TRANSPARENT));
				//���o��Item�b���餤��ܪ���m
				int[] location = new int[2];
				view.getLocationInWindow(location);
				//�ѼƤ@�GPopupWindow�����b����View�W�A�ѼƤG�G�]�wPopupWindow��ܪ����ߦ�m
				//�ѼƤT�GPopupWindow�bView�WX�b�������q�A�Ѽƥ|�GPopupWindow�bView�WY�b�������q�CX�BY�b�������q�O�۹��ثeActivity�Ҧb������A�ѷ��I���]0�A0�^
				popupWindow.showAtLocation(view, Gravity.TOP | Gravity.LEFT,
						location[0] + 20, location[1]);
				// ����@���Y�񪺰ʵe.
				ll_popup_container.startAnimation(sa);
			}
		});

		/**
		 * ��ϥΪ̷ưʵ��骺�ɭ�,�ݭn�����w�g�s�b��PopupWindow
		 */
		lv_appmanager.setOnScrollListener(new OnScrollListener() {

			// ��listview�����ʪ��A�o�ͧ��ܪ��ɭ� �I�s����k.
			public void onScrollStateChanged(AbsListView view, int scrollState) {
			}

			// ��listview�B����ʪ��A���ɭ� �I�s����k
			public void onScroll(AbsListView view, int firstVisibleItem,
					int visibleItemCount, int totalItemCount) {
				   dismissPopupWindow();
			}
		});

	}

	/**	
	 * �N��������M�ε{���������o�X��
	 */
	private void fillData() {
		//���J��ƮɡAll_loading�������ProgressBar�H��TextView�����������b���J���...����ܥX��
		ll_loading.setVisibility(View.VISIBLE);
		new Thread() {
			public void run() {
				AppInfoProvider provider = new AppInfoProvider(
						AppManagerActivity.this);
				appinfos = provider.getInstalledApps();
				initAppInfo();
				//�V�D�b�{�ǰe�T��
				Message msg = Message.obtain();
				msg.what = LOAD_APP_FINSISH;
				handler.sendMessage(msg);
			};

		}.start();
	}

	/**
	 * �_�l�ƨt�ΩM�ϥΪ�appinfos�����X
	 */
	protected void initAppInfo() {
		systemappInfos = new ArrayList<AppInfo>();
		userappInfos = new ArrayList<AppInfo>();
		for (AppInfo appinfo : appinfos) {
			//�Ϥ��X�ϥΪ̵{���M�t�ε{��
			if (appinfo.isUserapp()) {
				userappInfos.add(appinfo);
			} else {
				systemappInfos.add(appinfo);
			}
		}
	}
	/**
	 * ��Activity�P���ɡA�ݭn����PopupWindow�A�]��PopupWindow������TextView�A
	 * �Y�G�������ӵ��骺�ܡA�ä��v�T�{��������A��Log���|�X�{"AppManagerActivity has leaked window"��������~���ܡC
	 */
	@Override
	protected void onDestroy() {
		dismissPopupWindow();
		super.onDestroy();
	}

	//�����d����
	private class AppManagerAdapter extends BaseAdapter {
		//���oListView��Item�����
		public int getCount() {
			// �]��listview�n�h��ܨ�Ӷ��ء]�ϥΪ̵{���M�t�ε{���^
			return userappInfos.size() + 1 + systemappInfos.size() + 1;
		}
		//���o��Item�ҹ���������
		public Object getItem(int position) {
			//��position == 0�h�������O���ϥΪ̵{��������
			if (position == 0) {
				return position;
			} else if (position <= userappInfos.size()) {//��position <= userappInfos.size()�h�������O������Ҧ��ϥΪ̵{������
				// �n��ܪ��ϥΪ̵{�������ئb���X������m�]�]���ϥΪ̵{��������Item�O�q1�}�l���A�Ӷ��X�������ЬO�q0�}�l���^
				int newpostion = position - 1;
				return userappInfos.get(newpostion);
			} else if (position == (userappInfos.size() + 1)) {//��position == (userappInfos.size() + 1)�h�������O���t�ε{��������
				return position;
			} else {//�Ҧ��t�ήM�ζ���
				int newpostion = position - userappInfos.size() - 2;
				return systemappInfos.get(newpostion);
			}
		}
		//���oItem�ҹ�����id
		public long getItemId(int position) {
			return position;
		}
		//�NView��ܦbItem�W�A�C��ܤ@��Item�A�I�s�@���Ӥ�k
		public View getView(int position, View convertView, ViewGroup parent) {
			if (position == 0) {//��position == 0�h�������O���ϥΪ̵{�������ءA�ڭ̫إߥX�Ӷ��ع�����View
				TextView tv = new TextView(getApplicationContext());
				tv.setTextSize(20);
				tv.setText("�ϥΪ̵{�� (" + userappInfos.size() + ")");
				return tv;
			} else if (position <= userappInfos.size()) {//��position <= userappInfos.size()�h�������O������Ҧ��ϥΪ̵{������
				// �n��ܪ��ϥΪ̵{�������ئb���X������m�]�]���ϥΪ̵{��������Item�O�q1�}�l���A�Ӷ��X�������ЬO�q0�}�l���^
				int newpostion = position - 1;
				View view;
				ViewHolder holder;
				//�_�ξ��v�֨�
				if (convertView == null || convertView instanceof TextView) {
					view = View.inflate(getApplicationContext(),
							R.layout.app_manager_item, null);
					holder = new ViewHolder();
					holder.iv_icon = (ImageView) view
							.findViewById(R.id.iv_appmanger_icon);
					holder.tv_name = (TextView) view
							.findViewById(R.id.tv_appmanager_appname);
					holder.tv_version = (TextView) view
							.findViewById(R.id.tv_appmanager_appversion);
					view.setTag(holder);
				} else {
					view = convertView;
					holder = (ViewHolder) view.getTag();
				}
				//���ϥΪ̮M�ε{���հt���
				AppInfo appInfo = userappInfos.get(newpostion); // �q�ϥΪ̵{�����X�̭����o��ƪ�����
				holder.iv_icon.setImageDrawable(appInfo.getAppicon());
				holder.tv_name.setText(appInfo.getAppname());
				holder.tv_version.setText("������:" + appInfo.getVersion());
				return view;

			} else if (position == (userappInfos.size() + 1)) {//��position == (userappInfos.size() + 1)�h�������O���t�ε{��������
				TextView tv = new TextView(getApplicationContext());
				tv.setTextSize(20);
				tv.setText("�t�ε{�� (" + systemappInfos.size() + ")");
				return tv;
			} else {//�Ҧ��t�ήM�Ϊ�Item
				int newpostion = position - userappInfos.size() - 2;
				View view;
				ViewHolder holder;
				if (convertView == null || convertView instanceof TextView) {
					view = View.inflate(getApplicationContext(),
							R.layout.app_manager_item, null);
					holder = new ViewHolder();
					holder.iv_icon = (ImageView) view
							.findViewById(R.id.iv_appmanger_icon);
					holder.tv_name = (TextView) view
							.findViewById(R.id.tv_appmanager_appname);
					holder.tv_version = (TextView) view
							.findViewById(R.id.tv_appmanager_appversion);
					view.setTag(holder);
				} else {
					view = convertView;
					holder = (ViewHolder) view.getTag();
				}
				//���t�ήM�ε{���հt���
				AppInfo appInfo = systemappInfos.get(newpostion); // �q�t�ε{�����X�̭����o��ƪ�����
				holder.iv_icon.setImageDrawable(appInfo.getAppicon());
				holder.tv_name.setText(appInfo.getAppname());
				holder.tv_version.setText("������:" + appInfo.getVersion());
				return view;

			}
		}

		/**
		 * �̽������TextView�]�ϥΪ̵{���M�t�ε{���^�Q�I���ɪ��J�I
		 */
		@Override
		public boolean isEnabled(int position) {
			if (position == 0 || position == (userappInfos.size() + 1)) {
				return false;
			}
			return super.isEnabled(position);
		}
	}
	//�NItem��������ϥ�static�׹��A�Qstatic�׹������O���줸�սX�bJVM���u�|�s�b�@���Civ_icon�Atv_name�Ptv_version�b���|���]�|�u�s�b�@��
	private static class ViewHolder {
		ImageView iv_icon;
		TextView tv_name;
		TextView tv_version;
	}

	/**
	 * ���osd�d�i�Ϊ��O����j�p
	 * 
	 * @return
	 */
	private String getAvailSDSize() {
		//���oSdcard�ڥؿ��Ҧb���ɮת���
		File path = Environment.getExternalStorageDirectory();
		//���A�Ŷ�����
		StatFs stat = new StatFs(path.getPath());
		// ���oSdcard�d�����h�ֶ����ϡ]���Sdcard���Ŷ��Q�����h���^
		long totalBlocks = stat.getBlockCount();
		// ���oSdcard�d�i�Ϊ����ϼƶq
		long availableBlocks = stat.getAvailableBlocks();
		// ���oSdcard�d�C�@�����ϥi�H�s��byte�ƶq
		long blockSize = stat.getBlockSize();
		//�p�⤤����byte
		long availSDsize = availableBlocks * blockSize;
		//�ɧUFormatter�ӱN���ରM
		return Formatter.formatFileSize(this, availSDsize);
	}

	/**
	 * ���o����ѧE�i�Ϊ��O����Ŷ�
	 * 
	 * @return
	 */
	private String getAvailROMSize() {
		File path = Environment.getDataDirectory();
		StatFs stat = new StatFs(path.getPath());
		long blockSize = stat.getBlockSize();
		long availableBlocks = stat.getAvailableBlocks();
		return Formatter.formatFileSize(this, availableBlocks * blockSize);
	}
	/**
	 * ��ϥΪ̦b�ɭ��W�I���U�@��Item�ɡA�n�����W�@��PopupWindow
	 */
	private void dismissPopupWindow() {
		if (popupWindow != null && popupWindow.isShowing()) {
			popupWindow.dismiss();
			popupWindow = null;
		}
	}
	/**
	 * PopupWindow�����I���ƥ�
	 */
	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.ll_popup_share:
			Log.i(TAG, "����");
			shareApplication();
			break;

		case R.id.ll_popup_start:
			Log.i(TAG, "�}��");
			startAppliction();

			break;
		case R.id.ll_popup_uninstall:
			//���o��Item����ll_popup_uninstall���]�w���Х�
			boolean result = (Boolean) v.getTag();
			//�T����t�ήM��
			if (result) {
				Log.i(TAG, "����" + clickedpackname);
				uninstallApplication();
			}else{
				Toast.makeText(this, "�t�ήM�Τ���Q����", 1).show();
			}
			break;
		}

	}

	/**
	 * ���ɤ@�ӮM�ε{��
	 */
	private void shareApplication() {
        /*<intent-filter>
        <action android:name="android.intent.action.SEND" />
        <category android:name="android.intent.category.DEFAULT" />
        <data android:mimeType="text/plain" />
        </intent-filter>*/
		Intent intent = new Intent();
		//�z�L�N�Ϫ����ʧ@�B���A�ӱҰʤ�����㦳���ɥ\�઺�M�Ρ]²�T�A���ں���...�^�A�o�g�㦳���ɥ\�઺�M�η|�H�M�檺�榡�i�{�X��
		intent.setAction("android.intent.action.SEND");
		intent.addCategory("android.intent.category.DEFAULT");
		//��J�����e����r���A
		intent.setType("text/plain");
		//�]�w���ɪ����D
		intent.putExtra("subject", "���ɪ����D");
		//�]�w���ɪ��w�]���e
		intent.putExtra("sms_body", "���˧A�ϥΤ@�ڳn��"+clickedpackname);
		intent.putExtra(Intent.EXTRA_TEXT, "extra_text");
		startActivity(intent);
	}

	/**
	 * �����@�ӮM�ε{��
	 */
	private void uninstallApplication() {
		
		/* * <intent-filter> <action android:name="android.intent.action.VIEW" />
		 * <action android:name="android.intent.action.DELETE" /> <category
		 * android:name="android.intent.category.DEFAULT" /> <data
		 * android:scheme="package" /> </intent-filter>*/
		 
		dismissPopupWindow();
		Intent intent = new Intent();
		intent.setAction("android.intent.action.DELETE");
		intent.addCategory("android.intent.category.DEFAULT");
		intent.setData(Uri.parse("package:" + clickedpackname));
		//�����@�ӮM�ε{����A������Sdcard�ΰO����|�o���ܤơA���ɧڭ������s�ӰT���C�åB�ݭn�N�������M�αq�M�椤����
		startActivityForResult(intent, 1);
	}
	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		if (requestCode == 1) {
			// ���|�ɭ���s���.
			fillData();
			tv_appmanager_sd_avail.setText("SD�d�i��" + getAvailSDSize());
			tv_appmanager_mem_avail.setText("�O����i��:" + getAvailROMSize());
		}
		super.onActivityResult(requestCode, resultCode, data);
	}

	/**
	 * �}�Ҥ@�ӮM�ε{��
	 */
	private void startAppliction() {
		dismissPopupWindow();
		Intent intent = new Intent();
		PackageInfo packinfo;
		try {
			//PackageManager.GET_ACTIVITIES�i�D�]�޲z�̡A�b�ѪR�M���ɮ׮ɡA�u�ѪRActivity�������`�I
			packinfo = pm.getPackageInfo(clickedpackname,
					PackageManager.GET_ACTIVITIES);

			ActivityInfo[] activityinfos = packinfo.activities;
			//�P�_�M���ɮפ��O�_�s�bActivity�������`�I
			if (activityinfos != null && activityinfos.length > 0) {
				//�ҰʲM���ɮפ����Ĥ@��Activity�`�I
				String className = activityinfos[0].name;
				intent.setClassName(clickedpackname, className);
				startActivity(intent);
			} else {
				Toast.makeText(this, "����Ұʥثe�M��", 0).show();
			}
		} catch (NameNotFoundException e) {//�ϥ�C�y�t��{���M�ε{���A�bDDMS���S���������M��W��
			e.printStackTrace();
			Toast.makeText(this, "����Ұʥثe�M��", 0).show();
		}
	}
	/**
	 * ���o�㦳�Ұ��ݩʪ�intent �t�ήୱ�M��(luncher)
	 */
	public Intent getIntent() {
		Intent intent = new Intent();
		intent.setAction("android.intent.action.MAIN");
		intent.addCategory("android.intent.category.LAUNCHER");
		List<ResolveInfo> resoveInfo = pm.queryIntentActivities(intent,
				PackageManager.GET_INTENT_FILTERS
						| PackageManager.MATCH_DEFAULT_ONLY);
		for (ResolveInfo info : resoveInfo) {
			// info.activityInfo.packageName;
		}
		return null;
	}
}
