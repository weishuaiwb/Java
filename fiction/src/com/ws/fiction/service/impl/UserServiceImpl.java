package com.ws.fiction.service.impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;


import com.ws.fiction.dao.UserDAO;
import com.ws.fiction.dto.ResultModel;
import com.ws.fiction.dto.User;
import com.ws.fiction.service.UserService;
import com.ws.fiction.util.DBUtil;

public class UserServiceImpl implements UserService{
	
	Connection conn;
	UserDAO sDao;

	
	@Override
	public ResultModel register(User user) {

		ResultModel rm= new ResultModel();
		
		try {
			//1.�鿴�ֻ����Ƿ��ظ�
			conn = DBUtil.getConnection();
			sDao = new UserDAO(conn);
			User u1 = sDao.findOne(user);
			//�жϸõ绰�����Ƿ���ڡ��Ѵ��򲻿�ע��
			if(u1 != null){
				rm.setStatus(1);
				rm.setMsg("���ֻ����ѱ�ע��");
			}else{
				//����˻�
				boolean boo = sDao.insert(user);
				if(boo){
					rm.setStatus(0);
					rm.setMsg("ע��ɹ�");
				}else{
					rm.setStatus(1);
					rm.setMsg("ϵͳ��æ�����Ժ�����");
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.close(conn, null, null);
		}
		
		
		return rm;
	}

	@Override
	public ResultModel login(User user) {
		ResultModel rm= new ResultModel();
		
		try {
			//1.��ѯ�ֻ��Ŷ�Ӧ����Ϣ
			conn = DBUtil.getConnection();
			sDao = new UserDAO(conn);
			User u1 = sDao.findOne(user);
			
			
//			System.out.println(stu1.getName());
//			System.out.println(stu1.getDr());
			//�жϸõ绰������������Ƿ����
			if(u1 == null){
				rm.setStatus(1);
				rm.setMsg("�˺Ż��������");
			}else{
				if(user.getUpwd().equals(u1.getUpwd()) ){
					
					if(u1.getDr()!=0){
						rm.setStatus(0);
						rm.setMsg("��¼�ɹ�");
//						System.out.println(u1.getNickname());
						rm.setData(u1);
					}else{
						rm.setStatus(1);
						rm.setMsg("�˺�δ����");
					}

				}else{
					rm.setStatus(1);
					rm.setMsg("�˺Ż��������");
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.close(conn, null, null);
		}
		
		
		return rm;
	}

	@Override
	public ResultModel addSupport(String uid, int retickets, int monthretickets, int coin) {
		ResultModel rm= new ResultModel();
		
		try {
			//1.��ѯ�ֻ��Ŷ�Ӧ����Ϣ
			conn = DBUtil.getConnection();
			sDao = new UserDAO(conn);
			boolean boo = sDao.addSupport(uid, retickets, monthretickets, coin);
				if(boo==true){
					
					rm.setStatus(0);
					rm.setMsg("��ֵ�ɹ�");

				}else{
					rm.setStatus(1);
					rm.setMsg("ϵͳ�쳣������");
				}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.close(conn, null, null);
		}
		
		
		return rm;
	}

	@Override
	public ResultModel reduceSupport(String uid, int retickets, int monthretickets, int coin) {
		ResultModel rm= new ResultModel();
		
		try {
			//1.��ѯ�ֻ��Ŷ�Ӧ����Ϣ
			conn = DBUtil.getConnection();
			sDao = new UserDAO(conn);
			boolean boo = sDao.reduceSupport(uid, retickets, monthretickets, coin);
				if(boo==true){
					
					rm.setStatus(0);
					rm.setMsg("���ͳɹ�");

				}else{
					rm.setStatus(1);
					rm.setMsg("ϵͳ�쳣������");
				}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.close(conn, null, null);
		}
		
		
		return rm;
	}

}
