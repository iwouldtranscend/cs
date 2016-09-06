package com.web.entity;

import java.io.Serializable;

public class User implements Serializable{
	private int uid;
	private String yname;
	private String ypass;
	private String about;
	
	
	
	
	public User() {}
	
	public User(int uid, String yname, String ypass, String about) {
		this.uid = uid;
		this.yname = yname;
		this.ypass = ypass;
		this.about = about;
	}

	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getYname() {
		return yname;
	}
	public void setYname(String yname) {
		this.yname = yname;
	}
	public String getYpass() {
		return ypass;
	}
	public void setYpass(String ypass) {
		this.ypass = ypass;
	}
	public String getAbout() {
		return about;
	}
	public void setAbout(String about) {
		this.about = about;
	}
	
}
