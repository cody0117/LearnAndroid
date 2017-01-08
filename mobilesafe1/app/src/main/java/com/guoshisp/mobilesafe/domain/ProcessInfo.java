package com.guoshisp.mobilesafe.domain;

import android.graphics.drawable.Drawable;

public class ProcessInfo {
	//套用程式套件名稱
	private String packname; 
	//套用程式圖示
	private Drawable icon;
	//套用程式所佔用的記憶體空間，單位是byte
	private long memsize; 
	//是否屬於使用者執行緒
	private boolean userprocess;
	//執行緒的pid（執行緒的標示）
	private int pid;
	//應喲個程式名稱
	private String appname;
	//套用程式在Item中是否處於被勾選狀態（預設下沒有被勾選）
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