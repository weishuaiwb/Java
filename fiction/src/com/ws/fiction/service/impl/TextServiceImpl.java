package com.ws.fiction.service.impl;

import java.sql.SQLException;
import java.util.List;

import com.ws.fiction.dao.TextDAO;
import com.ws.fiction.dto.ResultModel;

import com.ws.fiction.dto.Text;

import com.ws.fiction.service.TextService;
import com.ws.fiction.util.DBUtil;

public class TextServiceImpl implements TextService {

	TextDAO tDAO = null;
	ResultModel rm = new ResultModel();
	
	@Override
	public ResultModel newFiciton(Text text) {
		
		try {
			tDAO = new TextDAO(DBUtil.getConnection());
			if(tDAO.insert(text)){
				rm.setMsg("������ɹ�");
				rm.setStatus(0);
			}else{
				rm.setStatus(1);
				rm.setMsg("ϵͳ�쳣,���Ժ�����");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rm;
	}


	@Override
	public ResultModel selectTextBase(String uid) {
		
		try {
			tDAO = new TextDAO(DBUtil.getConnection());
			List<Text> text = tDAO.selectAll(uid);
			if(text!=null){
				rm.setData(text);
				rm.setStatus(0);
			}else{
				rm.setStatus(1);
				rm.setMsg("ϵͳ�쳣,���Ժ�����");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rm;
	}


	@Override
	public ResultModel updateSectionNum(String tid) {
		try {
			tDAO = new TextDAO(DBUtil.getConnection());
			boolean boo = tDAO.updateSectionNum(tid);
			if(boo==true){

				rm.setStatus(0);
			}else{
				rm.setStatus(1);
				rm.setMsg("���ݿ�ϵͳ�쳣,���Ժ�����");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rm;
	}


	@Override
	public ResultModel selectTextByTid(String tid) {
		try {
			tDAO = new TextDAO(DBUtil.getConnection());
			Text text = tDAO.selectTextByTid(tid);
			if(text!=null){
				rm.setData(text);
				rm.setStatus(0);
			}else{
				rm.setStatus(1);
				rm.setMsg("ϵͳ�쳣,���Ժ�����");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rm;
	}


	@Override
	public ResultModel selectAllText() {
		try {
			tDAO = new TextDAO(DBUtil.getConnection());
			List<Text> text = tDAO.selectAllText();
			if(text!=null){
				rm.setData(text);
				rm.setStatus(0);
			}else{
				rm.setStatus(1);
				rm.setMsg("ϵͳ�쳣,���Ժ�����");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rm;
	}


	@Override
	public ResultModel selectTextByTname(String tname) {
		try {
			tDAO = new TextDAO(DBUtil.getConnection());
			Text text = tDAO.selectTextByTid(tname);
			if(text!=null){
				rm.setData(text);
				rm.setStatus(0);
			}else{
				rm.setStatus(1);
				rm.setMsg("ϵͳ�쳣,���Ժ�����");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rm;
	}


	@Override
	public ResultModel updateSupport(String tid, int retickets, int monthretickets, int coin) {
		try {
			tDAO = new TextDAO(DBUtil.getConnection());
			boolean boo = tDAO.updateSupport(tid, retickets, monthretickets, coin);
			if(boo == true){
				rm.setStatus(0);
				rm.setMsg("��ȡ����");
			}else{
				rm.setStatus(1);
				rm.setMsg("δ��ȡ����");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rm;
	}


	@Override
	public ResultModel subImagePath(Text text) {
		try {
			tDAO = new TextDAO(DBUtil.getConnection());
			boolean boo = tDAO.subImagePath(text);
			if(boo == true){
				rm.setStatus(0);
				rm.setMsg("·���洢�ɹ�");
			}else{
				rm.setStatus(1);
				rm.setMsg("·���洢ʧ��");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rm;
	}


	@Override
	public ResultModel delTextByTid(String tid) {
		try {
			tDAO = new TextDAO(DBUtil.getConnection());
			boolean boo = tDAO.updateCondition1(tid);
			if(boo == true){
				rm.setStatus(0);
				rm.setMsg("�������");
			}else{
				rm.setStatus(1);
				rm.setMsg("����ʧ��");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rm;
	}

	
	
}
