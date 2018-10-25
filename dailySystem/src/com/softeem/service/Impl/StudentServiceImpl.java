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
	
	//学生注册业务逻辑
	@Override
	public ResultModel register(Student stu) {
		
		ResultModel rm= new ResultModel();
		
		try {
			//1.查看手机号是否重复
			conn = DBUtil.getConnection();
			sDao = new StudentDAO(conn);
			Student student = sDao.findOne(stu);
			//判断该电话号码是否存在。已存则不可注册
			if(student != null){
				rm.setStatus(1);
				rm.setMsg("该手机号已被注册");
			}else{
				//添加账户
				boolean boo = sDao.insert(stu);
				if(boo){
					rm.setStatus(0);
					rm.setMsg("注册成功");
				}else{
					rm.setStatus(1);
					rm.setMsg("系统繁忙，请稍后再试");
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
			//1.查询手机号对应的信息
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
			//判断该电话号码相关数据是否存在
			if(stu1 == null){
				rm.setStatus(1);
				rm.setMsg("账号或密码错误");
			}else{
				if(stu.getPassword().equals(stu1.getPassword()) ){
					
					if(stu1.getDr()!=0){
						rm.setStatus(0);
						rm.setMsg("登录成功");
						rm.setData(stu1);
					}else{
						rm.setStatus(1);
						rm.setMsg("账号未激活");
					}

				}else{
					rm.setStatus(1);
					rm.setMsg("账号或密码错误");
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
