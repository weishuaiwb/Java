package com.ws.fiction.dto;
/**
 * 该类用于存储返回丰富访问结果集的（状态，相关提示信息，数据）
 * 
 * @author Administrator
 *
 */
public class ResultModel {
	private int status;//0:成功  1：失败
	private String msg;
	private Object data;
	public ResultModel() {
		super();
		
	}
	public ResultModel(int status, String msg, Object data) {
		super();
		this.status = status;
		this.msg = msg;
		this.data = data;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public Object getData() {
		return data;
	}
	public void setData(Object data) {
		this.data = data;
	}
	
	
	
}
