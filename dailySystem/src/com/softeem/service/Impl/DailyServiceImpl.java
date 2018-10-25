package com.softeem.service.Impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.softeem.dailySystem.dao.DailyDAO;
import com.softeem.dailySystem.dto.Daily;
import com.softeem.dailySystem.dto.ResultModel;
import com.softeem.service.DailyService;
import com.softeem.util.DBUtil;
import com.sun.org.apache.bcel.internal.generic.NEW;


public class DailyServiceImpl implements DailyService {
	
	DailyDAO dDAO = null;
	
	
	/**
	 * ����ѧ��id��ѯ��־
	 */
	@Override
	public ResultModel findBySid(String sid, int pageSize,int currentPage) {
		ResultModel rm = new ResultModel();
		dDAO = new DailyDAO(null);
		List<Daily> list = dDAO.findAll(sid, pageSize, currentPage);
		if(list!=null && list.size()>0){
			rm.setStatus(0);
			rm.setMsg("");
			rm.setData(list);
		}else{
			rm.setStatus(1);
			rm.setMsg("�㻹ûд����־");
			rm.setData(list);
		}
		
		return rm;
	}

	@Override
	public ResultModel submit(Daily daily) {
		ResultModel rm = new ResultModel();
		try {
			dDAO = new DailyDAO(DBUtil.getConnection());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(dDAO.insert(daily)){
			rm.setStatus(0);
			rm.setMsg("�ύ�ɹ�");
			
		}else{
			rm.setStatus(1);
			rm.setMsg("ϵͳ�쳣�����Ժ�����");
			
		}
		
		return rm;
	}

	@Override
	public ResultModel updateDaily(Daily daily) {
		ResultModel result = new ResultModel();
		Connection conn = null;
		try {
			conn = DBUtil.getConnection();
			boolean boo = new DailyDAO(conn).update(daily);
			if(boo){
				result.setStatus(0);
				result.setMsg("�޸ĳɹ�");
			}else{
				result.setStatus(1);
				result.setMsg("�޸�ʧ��");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(conn,null,null);
		}
		return result;
	}

	@Override
	public ResultModel delDaily(String id) {
		ResultModel rm = new ResultModel();
		Daily daily = new Daily();
		daily.setId(id);
		Connection conn = null;
		try {
			conn = DBUtil.getConnection();
			dDAO = new DailyDAO(conn);
			boolean boo = dDAO.delete(daily);
			if(boo){
				rm.setStatus(0);
				rm.setMsg("ɾ���ɹ�");
			}else{
				rm.setStatus(1);
				rm.setMsg("ϵͳ��æ");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			DBUtil.close(conn,null,null);
		}
		
		
		return rm;
	}

	@Override
	public ResultModel delAll(String[] ids) {
		ResultModel rm = new ResultModel();
		Connection conn = null;
		try {
			conn = DBUtil.getConnection();
			dDAO = new DailyDAO(conn);
			boolean boo = dDAO.deleteAll(ids);
			if(boo){
				rm.setStatus(0);
				rm.setMsg("ɾ���ɹ�");
			}else{
				rm.setStatus(1);
				rm.setMsg("ϵͳ��æ");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			DBUtil.close(conn, null, null);
		}
		
		return rm;
	}

}
