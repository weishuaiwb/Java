package com.ws.fiction.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ws.fiction.dto.Text;
import com.ws.fiction.util.DBUtil;
import com.ws.fiction.util.DBUtil.CallBack;

public class TextDAO {

	Connection conn;
	
	public TextDAO(Connection conn) {
		this.conn = conn;
	}
	
	
	//开新书的插入操作
	public boolean insert(Text t){
		String sql = "insert into iptext(tid,tname,classes,author,introduce,StoPath,uid) value(?,?,?,?,?,?,?)";
		
		try {
			return DBUtil.executeUpdate(DBUtil.getConnection(), sql, t.getTid(),t.getTname(),t.getClasses(),t.getAuthor(),t.getIntroduce(),t.getStoPath(),t.getUid());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}
	
	
	//存储上传的图片路径
	public boolean subImagePath(Text t){
		String sql = "update iptext set image=? where tid=?";
		
		try {
			return DBUtil.executeUpdate(DBUtil.getConnection(), sql, t.getImage(),t.getTid());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	//完结操作--set condition1 = "已完结"
	public boolean updateCondition1(String tid){
		
		String sql = "update iptext set condition1="+"已完结"+" where tid=?";
	
		try {
			return DBUtil.executeUpdate(DBUtil.getConnection(), sql, tid);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	
	
	
	public List<Text> selectAllText(){	//按条件查询前几部所有小说基本信息
		String sql = "select tid,tname,author,classes,introduce,image,sectionNum from iptext order by coin desc limit 0,4";
		try {
			return DBUtil.queryList(new CallBack<Text>() {
				@Override
				public List<Text> findAll(ResultSet rs){
					List<Text> list = new ArrayList<>();
					try {
						while(rs.next()){
							Text t1 = new Text();
							t1.setTid(rs.getString("tid"));
							t1.setTname(rs.getString("tname"));
							t1.setAuthor(rs.getString("author"));
							t1.setClasses(rs.getString("classes"));
							t1.setIntroduce(rs.getString("introduce"));
							t1.setImage(rs.getString("image"));
							t1.setSectionNum(rs.getInt("sectionNum"));
//							System.out.println(t1.getTname());
							list.add(t1);
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
					return list;
				}
			}, sql);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return null;
	}
	
	
	
	public List<Text> selectAll(String uid){	//通过uid查询该作者小说基本信息
		String sql = "select tid,tname,author,classes,introduce,image,sectionNum,condition1 from iptext where uid = ?";
		try {
			return DBUtil.queryList(new CallBack<Text>() {
				@Override
				public List<Text> findAll(ResultSet rs){
					List<Text> list = new ArrayList<>();
					try {
						while(rs.next()){
							Text t1 = new Text();
							t1.setTid(rs.getString("tid"));
							t1.setTname(rs.getString("tname"));
							t1.setAuthor(rs.getString("author"));
							t1.setClasses(rs.getString("classes"));
							t1.setIntroduce(rs.getString("introduce"));
							t1.setImage(rs.getString("image"));
							t1.setSectionNum(rs.getInt("sectionNum"));
							t1.setCondition1(rs.getString("condition1"));
							list.add(t1);
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
					return list;
				}
			}, sql, uid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return null;
	}
	
	public boolean updateSectionNum(String tid){
		String sql ="update iptext set sectionNum=SectionNum+1 where tid=?";
		try {
			return DBUtil.executeUpdate(DBUtil.getConnection(), sql, tid);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean updateSupport(String tid,int retickets,int monthretickets,int coin){
		String sql ="update iptext set retickets=retickets+?,monthretickets=monthretickets+?,coin=coin+? where tid=?";
		try {
			return DBUtil.executeUpdate(DBUtil.getConnection(), sql,retickets,monthretickets,coin,tid);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	
	
	public Text selectTextByTid(String tid){
		String sql = "select tid,tname,author,classes,image,sectionNum,introduce,retickets,collect,subscribe,coin,monthretickets,condition1,uid,StoPath from iptext where tid=?";
		try {
			return DBUtil.queryOne(new CallBack<Text>() {
				@Override
				public Text findOne(ResultSet rs){
					Text t1 = null;
					try {
						if(rs.next()){
							t1 = new Text();
							t1.setTid(tid);
							t1.setTname(rs.getString("tname"));
							t1.setAuthor(rs.getString("author"));
							t1.setClasses(rs.getString("classes"));
							t1.setImage(rs.getString("image"));
							t1.setSectionNum(rs.getInt("sectionNum"));
							t1.setIntroduce(rs.getString("introduce"));
							t1.setRetickets(rs.getInt("retickets"));
							t1.setCollect(rs.getInt("collect"));
							t1.setSubscribe(rs.getInt("subscribe"));
							t1.setCoin(rs.getInt("coin"));
							t1.setMonthtickets(rs.getInt("monthretickets"));
							t1.setCondition1(rs.getString("condition1"));
							t1.setUid(rs.getString("uid"));
							t1.setStoPath(rs.getString("StoPath"));
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
					return t1;
				}
			}, sql, tid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
	
	
	public Text selectTextByTname(String tname){
		String sql = "select tid,tname,author,classes,image,sectionNum,introduce,retickets,collect,subscribe,coin,monthretickets,condition1,uid,StoPath from iptext where tname=?";
		try {
			return DBUtil.queryOne(new CallBack<Text>() {
				@Override
				public Text findOne(ResultSet rs){
					Text t1 = null;
					try {
						if(rs.next()){
							t1 = new Text();
							t1.setTid(rs.getString("tid"));
							t1.setTname(rs.getString("tname"));
							t1.setAuthor(rs.getString("author"));
							t1.setClasses(rs.getString("classes"));
							t1.setImage(rs.getString("image"));
							t1.setSectionNum(rs.getInt("sectionNum"));
							t1.setIntroduce(rs.getString("introduce"));
							t1.setRetickets(rs.getInt("retickets"));
							t1.setCollect(rs.getInt("collect"));
							t1.setSubscribe(rs.getInt("subscribe"));
							t1.setCoin(rs.getInt("coin"));
							t1.setMonthtickets(rs.getInt("monthretickets"));
							t1.setCondition1(rs.getString("condition1"));
							t1.setUid(rs.getString("uid"));
							t1.setStoPath(rs.getString("StoPath"));
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
					return t1;
				}
			}, sql, tname);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
}
