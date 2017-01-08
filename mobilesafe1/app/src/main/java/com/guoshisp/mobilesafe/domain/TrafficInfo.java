package com.guoshisp.mobilesafe.domain;

import android.graphics.drawable.Drawable;

public class TrafficInfo {
	//套用的套件名稱
	private String packname;
	//套用的名稱
	private String appname;
	//上傳的資料
	private long tx;
	//下載的資料
	private long rx;
	//套用圖示
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