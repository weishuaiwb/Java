package com.softeem.service.Impl;


import java.sql.Connection;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;

import com.softeem.dailySystem.dao.StudentDAO;
import com.softeem.dailySystem.dto.ResultModel;
import com.softeem.dailySystem.dto.Student;
import com.softeem.service.StudentService;
import com.softeem.util.DBUtil;

public class StudentServiceImpl implements StudentService {
	
	Connection conn;
	StudentDAO sDao;
	
	//ѧ��ע��ҵ���߼�
	@Override
	public ResultModel register(Student stu) {
		
		ResultModel rm= new ResultModel();
		
		try {
			//1.�鿴�ֻ����Ƿ��ظ�
			conn = DBUtil.getConnection();
			sDao = new StudentDAO(conn);
			Student student = sDao.findOne(stu);
			//�жϸõ绰�����Ƿ���ڡ��Ѵ��򲻿�ע��
			if(student != null){
				rm.setStatus(1);
				rm.setMsg("���ֻ����ѱ�ע��");
			}else{
				//����˻�
				boolean boo = sDao.insert(stu);
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
	public ResultModel login(Student stu) {
		ResultModel rm= new ResultModel();
		
		try {
			//1.��ѯ�ֻ��Ŷ�Ӧ����Ϣ
			conn = DBUtil.getConnection();
			sDao = new StudentDAO(conn);
			List<Student> students = sDao.findAll(stu);
			Student stu1 = new Student();
			Iterator<Student> it = students.iterator();
			while(it.hasNext()){
				stu1 = it.next();
			}
//			System.out.println(stu1.getName());
//			System.out.println(stu1.getDr());
			//�жϸõ绰������������Ƿ����
			if(stu1 == null){
				rm.setStatus(1);
				rm.setMsg("�˺Ż��������");
			}else{
				if(stu.getPassword().equals(stu1.getPassword()) ){
					
					if(stu1.getDr()!=0){
						rm.setStatus(0);
						rm.setMsg("��¼�ɹ�");
						rm.setData(stu1);
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

}
