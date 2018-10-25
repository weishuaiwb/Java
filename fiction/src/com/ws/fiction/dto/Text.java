package com.ws.fiction.dto;

public class Text {

	private String tid;
	private String tname;
	private String author;
	private String classes;
	private int sectionNum;
	private String image;
	private String introduce;
	private int retickets;
	private int collect;
	private int subscribe;
	private int coin;
	private int monthtickets;
	private String condition1;
	private String stoPath;
	private String uid;
	public String getStoPath() {
		return stoPath;
	}
	public void setStoPath(String stoPath) {
		this.stoPath = stoPath;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public Text() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getClasses() {
		return classes;
	}
	public void setClasses(String classes) {
		this.classes = classes;
	}
	public int getSectionNum() {
		return sectionNum;
	}
	public void setSectionNum(int sectionNum) {
		this.sectionNum = sectionNum;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public int getRetickets() {
		return retickets;
	}
	public void setRetickets(int retickets) {
		this.retickets = retickets;
	}
	public int getCollect() {
		return collect;
	}
	public void setCollect(int collect) {
		this.collect = collect;
	}
	public int getSubscribe() {
		return subscribe;
	}
	public void setSubscribe(int subscribe) {
		this.subscribe = subscribe;
	}
	public int getCoin() {
		return coin;
	}
	public void setCoin(int coin) {
		this.coin = coin;
	}
	public int getMonthtickets() {
		return monthtickets;
	}
	public void setMonthtickets(int monthtickets) {
		this.monthtickets = monthtickets;
	}
	public String getCondition1() {
		return condition1;
	}
	public void setCondition1(String condition1) {
		this.condition1 = condition1;
	}
	@Override
	public String toString() {
		return "Text [tid=" + tid + ", tname=" + tname + ", author=" + author + ", classes=" + classes + ", sectionNum="
				+ sectionNum + ", image=" + image + ", introduce=" + introduce + ", retickets=" + retickets
				+ ", collect=" + collect + ", subscribe=" + subscribe + ", coin=" + coin + ", monthtickets="
				+ monthtickets + ", condition1=" + condition1 + ", stoPath=" + stoPath + ", uid=" + uid + "]";
	}
	
	
}
