package com.guoshisp.mobilesafe;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.GridView;

import com.guoshisp.mobilesafe.adapter.MainAdapter;
public class MainActivity extends Activity {
	//��ܥD�ɭ������E�j�Ҳժ�GridView
	private GridView gv_main;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main);
		gv_main = (GridView) findViewById(R.id.gv_main);
		//��gv_main����]�w�@�Ӥ����d�A�Ӥ����d���@�άO�Ω󬰨C��item��R���������
		gv_main.setAdapter(new MainAdapter(this));
		//��GridView���󤤪�item�]�w�I���ɪ���ť�ƥ�
		gv_main.setOnItemClickListener(new OnItemClickListener() {
			//�ѼƤ@�Gitem��������A�]�N�OGridView �ѼƤG�G�ثe�I����item �ѼƤT�G�ثe�I����item�bGridView������m
			//�Ѽƥ|�Gid���Ȭ��I���FGridView�����@���������ƭȡA�I���FGridView��9���A��id�N����8
			public void onItemClick(AdapterView<?> parent, View view,
					int position, long id) {
				switch (position) {
				case 0: //������s
					//���D�졨������s��������Activity�ɭ�
					Intent lostprotectedIntent = new Intent(MainActivity.this,LostProtectedActivity.class);
					startActivity(lostprotectedIntent);
					break;
				case 1: //�q�H�äh
					Intent callSmsIntent = new Intent(MainActivity.this,CallSmsSafeActivity.class);
					startActivity(callSmsIntent);
					break;
				case 2: //�{���޲z
					Intent appManagerIntent = new Intent(MainActivity.this,AppManagerActivity.class);
					startActivity(appManagerIntent);
				case 3: //������޲z
					Intent taskManagerIntent = new Intent(MainActivity.this,TaskManagerActivity.class);
					startActivity(taskManagerIntent);
					break;
				case 4: //�y�q�޲z
					Intent trafficInfoIntent = new Intent(MainActivity.this,TrafficInfoActivity.class);
					startActivity(trafficInfoIntent);
					break;
				case 5: //������r
					Intent antiVirusIntent = new Intent(MainActivity.this,AntiVirusActivity.class);
					startActivity(antiVirusIntent);
					break;
				case 6: //�t�Χﵽ
					Intent cleanCacheIntent = new Intent(MainActivity.this,CleanCacheActivity.class);
					startActivity(cleanCacheIntent);
					break;
				case 7://�i���u��
					Intent atoolsIntent = new Intent(MainActivity.this,AtoolsActivity.class);
					startActivity(atoolsIntent);
					break;
				case 8://�]�w����
					//���D�졨�]�w���ߡ�������Activity�ɭ�
					Intent settingIntent = new Intent(MainActivity.this,SettingCenterActivity.class);
					startActivity(settingIntent);
					break;
				}
			}
		});
	}
}

