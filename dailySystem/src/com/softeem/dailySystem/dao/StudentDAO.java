package com.softeem.dailySystem.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import java.sql.Connection;
import com.softeem.dailySystem.dto.Student;
import com.softeem.util.DBUtil;
import com.softeem.util.DBUtil.CallBack;

public class StudentDAO implements BaseDAO<Student>{

	Connection conn = null;
	
	public StudentDAO(Connection conn) {
		this.conn = conn;
	}
	
	
	/**
	 * 学生注册数据库处理
	 */
	@Override
	public boolean insert(Student t) {
		try {
			return DBUtil.executeUpdate(conn, "insert into student"
					+ "(id,name,sex,phone,password,dr) value(?,?,?,?,?,?)",
					t.getId(),t.getName(),t.getSex(),t.getPhone(),t.getPassword(),t.getDr());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean delete(Student t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(Student t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Student findOne(Student t) {
		try {
			return DBUtil.queryOne(new CallBack<Student>() {
				@Override
				public Student findOne(ResultSet rs){
					Student student = null;
					try {
						if(rs.next()){
							student = new Student();
							student.setName(rs.getString("name"));
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					return student;
				}
			}, "select name from student where phone=?", t.getPhone());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<Student> findAll(Student t) {
		try {
			return DBUtil.queryList(new CallBack<Student>() {
				@Override
				public List<Student> findAll(ResultSet rs){
					List<Student> list = new ArrayList<>();
					try {
						while(rs.next()){
							Student stu = new Student();
							stu.setId(rs.getString("id"));
							stu.setName(rs.getString("name"));
							stu.setPassword(rs.getString("password"));
//							System.out.println(stu.getPassword());
							stu.setPhone(rs.getString("phone"));
//							System.out.println(stu.getPhone());
							stu.setDr(rs.getInt("dr"));
							list.add(stu);
						}
						
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
					return list;
				}
			}, "select id,name,password,phone,dr from student where phone=?", t.getPhone());
			

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
//	public boolean insert(Student s){
//		
//		try {
//			return DBUtil.executeUpdate(DBUtil.getConnection(), "insert into student(id,name,sex,phone,password,dr,)", s.getId(),s.getName(),s.getSex(),s.getPhone(),s.getPassword(),s.getDr());
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return false;
//	}
}
