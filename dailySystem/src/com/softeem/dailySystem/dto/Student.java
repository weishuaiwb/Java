package com.softeem.dailySystem.dto;

import java.sql.Timestamp;

public class Student {
	private String id;
	private String name;
	private String sex;
	private String phone;
	private String password;
	private int dr;
	private Timestamp regtime;
	
	private String RESERVE1;
	private String RESERVE2;
	private String RESERVE3;
	private String RESERVE4;
	private String RESERVE5;
	public Student() {
		super();
		
	}
	public Student(String id, String name, String sex, String phone, String password, int dr) {
		super();
		this.id = id;
		this.name = name;
		this.sex = sex;
		this.phone = phone;
		this.password = password;
		this.dr = dr;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getDr() {
		return dr;
	}
	public void setDr(int dr) {
		this.dr = dr;
	}
	public Timestamp getRegtime() {
		return regtime;
	}
	public void setRegtime(Timestamp regtime) {
		this.regtime = regtime;
	}
	public String getRESERVE1() {
		return RESERVE1;
	}
	public void setRESERVE1(String rESERVE1) {
		RESERVE1 = rESERVE1;
	}
	public String getRESERVE2() {
		return RESERVE2;
	}
	public void setRESERVE2(String rESERVE2) {
		RESERVE2 = rESERVE2;
	}
	public String getRESERVE3() {
		return RESERVE3;
	}
	public void setRESERVE3(String rESERVE3) {
		RESERVE3 = rESERVE3;
	}
	public String getRESERVE4() {
		return RESERVE4;
	}
	public void setRESERVE4(String rESERVE4) {
		RESERVE4 = rESERVE4;
	}
	public String getRESERVE5() {
		return RESERVE5;
	}
	public void setRESERVE5(String rESERVE5) {
		RESERVE5 = rESERVE5;
	}
	
}
