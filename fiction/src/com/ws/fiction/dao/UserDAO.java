package com.ws.fiction.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.sun.org.apache.bcel.internal.generic.RETURN;
import com.ws.fiction.dto.User;
import com.ws.fiction.util.DBUtil;
import com.ws.fiction.util.DBUtil.CallBack;

public class UserDAO {

	Connection conn = null;
	
	public UserDAO(Connection conn) {
		this.conn = conn;
	}

	public User findOne(User user) {
//		System.out.println(user.getPhone());
		try {
			return DBUtil.queryOne(new CallBack<User>() {
				@Override
				public User findOne(ResultSet rs){
					User user1 = null;
					try {
						if(rs.next()){
							user1 = new User();
							
							user1.setUid(rs.getString("uid"));
							user1.setUname(rs.getString("uname"));
							user1.setNickname(rs.getString("nickname"));
							user1.setUpwd(rs.getString("upwd"));
							user1.setSex(rs.getString("sex"));
							user1.setAge(rs.getInt("age"));
							user1.setXp(rs.getInt("xp"));
							user1.setGrade(rs.getString("grade"));
							user1.setCoin(rs.getInt("coin"));
							user1.setRetickets(rs.getInt("retickets"));
							user1.setMonthretickets(rs.getInt("monthretickets"));
							user1.setPhone(user.getPhone());
							user1.setDr(rs.getInt("dr"));
							System.out.println(user1.getUid()+rs.getString("uname")+rs.getString("nickname")+user1.getDr());
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					return user1;
				}
			}, "select uid,uname,nickname,upwd,sex,age,xp,grade,coin,retickets,monthretickets,dr from userbase where phone=?", user.getPhone());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public boolean insert(User user) {
		try {
			return DBUtil.executeUpdate(conn, "insert into userbase"
					+ "(uid,uname,nickanme,sex,phone,upwd,dr) value(?,?,?,?,?,?,?)",
					user.getUid(),user.getUname(),user.getUname(),user.getSex(),user.getPhone(),user.getUpwd(),user.getDr());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	public boolean update(User user){
		try {
			return DBUtil.executeUpdate(conn, "update ", user.getNickname());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}
	
	public boolean addSupport(String uid,int retickets,int monthretickets,int coin){
		String sql ="update userbase set retickets=retickets+?,monthretickets=monthretickets+?,coin=coin+? where uid=?";
		try {
			return DBUtil.executeUpdate(DBUtil.getConnection(), sql,retickets,monthretickets,coin,uid);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean reduceSupport(String uid,int retickets,int monthretickets,int coin){
		String sql ="update userbase set retickets=retickets-?,monthretickets=monthretickets-?,coin=coin-? where uid=?";
		try {
			return DBUtil.executeUpdate(DBUtil.getConnection(), sql,retickets,monthretickets,coin,uid);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
}
