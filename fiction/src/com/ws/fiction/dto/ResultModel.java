package com.ws.fiction.dto;
/**
 * �������ڴ洢���طḻ���ʽ�����ģ�״̬�������ʾ��Ϣ�����ݣ�
 * 
 * @author Administrator
 *
 */
public class ResultModel {
	private int status;//0:�ɹ�  1��ʧ��
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
