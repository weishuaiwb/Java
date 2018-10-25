package com.softeem.dailySystem.dto;

import java.sql.Timestamp;
import java.util.Date;



public class Daily {
	@Override
	public String toString() {
//		StringBuilder builder = new StringBuilder();
//		builder.append("{'id':");
//		builder.append(this.id);
//		builder.append(",'todayTask':");
//		builder.append(this.todayTask);
//		builder.append(",'completeInfo':");
//		builder.append(this.completeInfo);
//		builder.append(",'nextPlan':");
//		builder.append(this.nextPlan);
//		builder.append(",'subTime':");
//		builder.append(this.subTime);
//		builder.append(",'lastTime':");
//		builder.append(this.lastTime).append(",'dr':").append(this.dr).append(",'sid':").append(this.sid);
		
		return "{'id':'" + id + "', 'todayTask':'" + todayTask + "', 'completeInfo':'" + completeInfo + "', 'nextPlan':'"
		+ nextPlan + "', 'subTime':'" + subTime + "', 'lastTime':'" + lastTime + "', 'sid':'" + sid + "'}";
		
	}
	private String id;
	private String todayTask;
	private String completeInfo;
	private String nextPlan;
	private Timestamp subTime;
	private Timestamp lastTime;
	private int dr;
	private String sid;
	private String RESERVE1;
	private String RESERVE2;
	private String RESERVE3;
	private String RESERVE4;
	private String RESERVE5;
	public Daily() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Daily(String id, String todayTask, String completeInfo, String nextPlan, int dr, String sid) {
		super();
		this.id = id;
		this.todayTask = todayTask;
		this.completeInfo = completeInfo;
		this.nextPlan = nextPlan;

		this.dr = dr;
		this.sid = sid;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTodayTask() {
		return todayTask;
	}
	public void setTodayTask(String todayTask) {
		this.todayTask = todayTask;
	}
	public String getCompleteInfo() {
		return completeInfo;
	}
	public void setCompleteInfo(String completeInfo) {
		this.completeInfo = completeInfo;
	}
	public String getNextPlan() {
		return nextPlan;
	}
	public void setNextPlan(String nextPlan) {
		this.nextPlan = nextPlan;
	}
	public Date getSubTime() {
		return subTime;
	}
	public void setSubTime(Timestamp subTime) {
		this.subTime = subTime;
	}
	public Timestamp getLastTime() {
		return lastTime;
	}
	public void setLastTime(Timestamp lastTime) {
		this.lastTime = lastTime;
	}
	public int getDr() {
		return dr;
	}
	public void setDr(int dr) {
		this.dr = dr;
	}
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
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
