package com.guoshisp.mobilesafe.domain;

import android.graphics.drawable.Drawable;

public class TrafficInfo {
	//�M�Ϊ��M��W��
	private String packname;
	//�M�Ϊ��W��
	private String appname;
	//�W�Ǫ����
	private long tx;
	//�U�������
	private long rx;
	//�M�ιϥ�
	private Drawable icon;
	public String getPackname() {
		return packname;
	}
	public void setPackname(String packname) {
		this.packname = packname;
	}
	public String getAppname() {
		return appname;
	}
	public void setAppname(String appname) {
		this.appname = appname;
	}
	public long getTx() {
		return tx;
	}
	public void setTx(long tx) {
		this.tx = tx;
	}
	public long getRx() {
		return rx;
	}
	public void setRx(long rx) {
		this.rx = rx;
	}
	public Drawable getIcon() {
		return icon;
	}
	public void setIcon(Drawable icon) {
		this.icon = icon;
	}
	
}
