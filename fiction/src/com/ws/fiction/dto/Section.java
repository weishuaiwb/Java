package com.ws.fiction.dto;

import java.sql.Timestamp;

public class Section {

	private String sid;
	private String sname;
	private String saddr;
	private String tid;
	private int dr;
	private Timestamp subtime;
	private int count;
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public Timestamp getSubtime() {
		return subtime;
	}
	public void setSubtime(Timestamp subtime) {
		this.subtime = subtime;
	}
	public Section() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSaddr() {
		return saddr;
	}
	public void setSaddr(String saddr) {
		this.saddr = saddr;
	}
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public int getDr() {
		return dr;
	}
	@Override
	public String toString() {
		return "Section [sid=" + sid + ", sname=" + sname + ", saddr=" + saddr + ", tid=" + tid + ", dr=" + dr
				+ ", subtime=" + subtime + ", count=" + count + "]";
	}
	public void setDr(int dr) {
		this.dr = dr;
	}
	
	
}
