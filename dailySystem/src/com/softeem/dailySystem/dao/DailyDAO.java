package com.softeem.dailySystem.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.softeem.dailySystem.dto.Daily;
import com.softeem.util.DBUtil;
import com.softeem.util.DBUtil.CallBack;

public class DailyDAO implements BaseDAO<Daily>{
	
	Connection conn;
	
	public DailyDAO(Connection conn) {
		this.conn = conn;
	}
	
	@Override
	public boolean insert(Daily d) {
		String sql = "insert into daily(id,todayTask,completeInfo,nextPlan,subTime,dr,sid) value"
				+ "(?,?,?,?,now(),?,?)";
		try {
			return DBUtil.executeUpdate(conn, sql, d.getId(),d.getTodayTask(),d.getCompleteInfo(),d.getNextPlan(),d.getDr(),d.getSid());
		} catch (Exception e) {

			e.printStackTrace();
		}
		
		return false;
	}

	@Override
	public boolean delete(Daily t) {
		String sql = "update daily set dr=1 where id=?";
		
		try {
			return DBUtil.executeUpdate(conn, sql, t.getId());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean deleteAll(String[] ids){
		String placeholder = "";
		for (int i=0;i<ids.length;i++){

			placeholder +="?,";          //存储  ?,占位符
		}
		
		placeholder = placeholder.substring(0,placeholder.length()-1);

		
		String sql = "update daily set dr=1 where id in ("+placeholder+")";
		try {
			return DBUtil.executeUpdate(conn, sql, ids);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean update(Daily t) {
		String sql = "update daily set todayTask=?,completeInfo=?,nextPlan=? "
				+ "where id = ?";
		try {
			return DBUtil.executeUpdate(conn, sql, 
					t.getTodayTask(),
					t.getCompleteInfo(),
					t.getNextPlan(),
					t.getId());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public Daily findOne(Daily t) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Daily> findAll(String id,int pageSize,int currentPage) {
		String sql = "select id,todayTask,completeInfo,nextPlan,subTime,lastTime,sid from "
				+ "daily where sid=? and dr=0 order by lastTime desc limit ?,?";
		List<Daily> list = new ArrayList<>();
		try {
			return DBUtil.queryList(new CallBack<Daily>(){
				@Override
				public List<Daily> findAll(ResultSet rs){
					
					try {
						while(rs.next()){
							Daily daily = new Daily();
							daily.setId(rs.getString("id"));
							daily.setTodayTask(rs.getString("todayTask"));
							daily.setCompleteInfo(rs.getString("completeInfo"));
							daily.setNextPlan(rs.getString("nextPlan"));
							daily.setSubTime(rs.getTimestamp("subTime"));
							daily.setLastTime(rs.getTimestamp("lastTime"));
							daily.setSid(rs.getString("sid"));
							list.add(daily);
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					return list;
				}
			}, sql, id,(currentPage-1)*pageSize,currentPage*pageSize);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return null;
	}

	@Override
	public List<Daily> findAll(Daily t) {
		// TODO Auto-generated method stub
		return null;
	}
	
	//根据学生id获取该学生的日志总数
		public int findCount(String sid){
			String sql = "select count(id) "
					+ "from daily where sid=? and dr=0";
			try {
				return DBUtil.queryOne(new CallBack<Integer>() {
					@Override
					public Integer findOne(ResultSet rs) {
						Integer i = 0;
						try {
							if(rs.next()){
								int count = rs.getInt(1);
								i = count;
							}
						} catch (SQLException e) {
							e.printStackTrace();
						}
						return i;
					}
				}, sql, sid);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return 0;
		}
	
}
