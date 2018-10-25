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
			//1.查看手机号是否重复
			conn = DBUtil.getConnection();
			sDao = new UserDAO(conn);
			User u1 = sDao.findOne(user);
			//判断该电话号码是否存在。已存则不可注册
			if(u1 != null){
				rm.setStatus(1);
				rm.setMsg("该手机号已被注册");
			}else{
				//添加账户
				boolean boo = sDao.insert(user);
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
	public ResultModel login(User user) {
		ResultModel rm= new ResultModel();
		
		try {
			//1.查询手机号对应的信息
			conn = DBUtil.getConnection();
			sDao = new UserDAO(conn);
			User u1 = sDao.findOne(user);
			
			
//			System.out.println(stu1.getName());
//			System.out.println(stu1.getDr());
			//判断该电话号码相关数据是否存在
			if(u1 == null){
				rm.setStatus(1);
				rm.setMsg("账号或密码错误");
			}else{
				if(user.getUpwd().equals(u1.getUpwd()) ){
					
					if(u1.getDr()!=0){
						rm.setStatus(0);
						rm.setMsg("登录成功");
//						System.out.println(u1.getNickname());
						rm.setData(u1);
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

	@Override
	public ResultModel addSupport(String uid, int retickets, int monthretickets, int coin) {
		ResultModel rm= new ResultModel();
		
		try {
			//1.查询手机号对应的信息
			conn = DBUtil.getConnection();
			sDao = new UserDAO(conn);
			boolean boo = sDao.addSupport(uid, retickets, monthretickets, coin);
				if(boo==true){
					
					rm.setStatus(0);
					rm.setMsg("充值成功");

				}else{
					rm.setStatus(1);
					rm.setMsg("系统异常。。。");
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
			//1.查询手机号对应的信息
			conn = DBUtil.getConnection();
			sDao = new UserDAO(conn);
			boolean boo = sDao.reduceSupport(uid, retickets, monthretickets, coin);
				if(boo==true){
					
					rm.setStatus(0);
					rm.setMsg("打赏成功");

				}else{
					rm.setStatus(1);
					rm.setMsg("系统异常。。。");
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
