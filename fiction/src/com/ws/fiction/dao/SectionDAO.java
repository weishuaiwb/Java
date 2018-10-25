package com.ws.fiction.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ws.fiction.dto.ResultModel;
import com.ws.fiction.dto.Section;
import com.ws.fiction.dto.Text;
import com.ws.fiction.util.DBUtil;

import com.ws.fiction.util.DBUtil.CallBack;

public class SectionDAO {

	public boolean insert(Section s){
		String sql = "insert into tsection(sid,sname,saddr,tid) value (?,?,?,?)";
		try {
			return DBUtil.executeUpdate(DBUtil.getConnection(), sql, s.getSid(),s.getSname(),s.getSaddr(),s.getTid());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false ;	
	}
	
	public boolean updateCount(int num,String sid){
		String sql = "update tsection set count=? where sid=?";
		try {
			return DBUtil.executeUpdate(DBUtil.getConnection(), sql, num,sid);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	
	public List<Section> findSection(Text t){
		String sql ="select sid,sname,saddr,count,tid,subTime from tsection where tid=? and dr=0 order by count";
		List<Section> list = new ArrayList<>();
		try {
			return DBUtil.queryList(new CallBack<Section>() {
				@Override
				public List<Section> findAll(ResultSet rs){
					
					try {
						while(rs.next()){
							Section se = new Section();
							se.setSid(rs.getString("sid"));

							se.setSname(rs.getString("sname"));
							se.setSubtime(rs.getTimestamp("subTime"));
							se.setSaddr(rs.getString("saddr"));
							se.setCount(rs.getInt("count"));
							se.setTid(rs.getString("tid"));
							
							list.add(se);
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
					return list;
					
				}
			}, sql, t.getTid());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			
		}
		return null;	
	}
	
	/*public Section findSecionByCount(String count,String tid){
		String sql = "select sid,sname,saddr,subTime"
		
		return null;
	}*/
}
