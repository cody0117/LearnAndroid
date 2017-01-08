package com.guoshisp.mobilesafe.domain;

import android.graphics.drawable.Drawable;

public class AppInfo {
	//套用套件名稱
	private String packname;
	//套用版本號
	private String version;
	//套用名稱
	private String appname;
	//套用圖示
	private Drawable appicon;
	//該套用是否屬於使用者程式
	private boolean userapp;
	public boolean isUserapp() {
		return userapp;
	}
	public void setUserapp(boolean userapp) {
		this.userapp = userapp;
	}
	public String getPackname() {
		return packname;
	}
	public void setPackname(String packname) {
		this.packname = packname;
	}
	public String getVersion() {
		return version;
	}
	public void setVersion(String version) {
		this.version = version;
	}
	public String getAppname() {
		return appname;
	}
	public void setAppname(String appname) {
		this.appname = appname;
	}
	public Drawable getAppicon() {
		return appicon;
	}
	public void setAppicon(Drawable appicon) {
		this.appicon = appicon;
	}
}
