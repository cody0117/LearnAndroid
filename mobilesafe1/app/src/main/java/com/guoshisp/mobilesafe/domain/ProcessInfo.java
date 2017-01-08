package com.guoshisp.mobilesafe.domain;

import android.graphics.drawable.Drawable;

public class ProcessInfo {
	//�M�ε{���M��W��
	private String packname; 
	//�M�ε{���ϥ�
	private Drawable icon;
	//�M�ε{���Ҧ��Ϊ��O����Ŷ��A���Obyte
	private long memsize; 
	//�O�_�ݩ�ϥΪ̰����
	private boolean userprocess;
	//�������pid�]��������Хܡ^
	private int pid;
	//����ӵ{���W��
	private String appname;
	//�M�ε{���bItem���O�_�B��Q�Ŀ窱�A�]�w�]�U�S���Q�Ŀ�^
	private boolean checked;
	public boolean isChecked() {
		return checked;
	}
	public void setChecked(boolean checked) {
		this.checked = checked;
	}
	public String getAppname() {
		return appname;
	}
	public void setAppname(String appname) {
		this.appname = appname;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPackname() {
		return packname;
	}
	public void setPackname(String packname) {
		this.packname = packname;
	}
	public Drawable getIcon() {
		return icon;
	}
	public void setIcon(Drawable icon) {
		this.icon = icon;
	}
	public long getMemsize() {
		return memsize;
	}
	public void setMemsize(long memsize) {
		this.memsize = memsize;
	}
	public boolean isUserprocess() {
		return userprocess;
	}
	public void setUserprocess(boolean userprocess) {
		this.userprocess = userprocess;
	}
}
