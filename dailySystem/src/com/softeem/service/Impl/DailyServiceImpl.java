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
	 * 根据学生id查询日志
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
			rm.setMsg("你还没写过日志");
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
			rm.setMsg("提交成功");
			
		}else{
			rm.setStatus(1);
			rm.setMsg("系统异常，请稍后再试");
			
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
				result.setMsg("修改成功");
			}else{
				result.setStatus(1);
				result.setMsg("修改失败");
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
				rm.setMsg("删除成功");
			}else{
				rm.setStatus(1);
				rm.setMsg("系统繁忙");
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
				rm.setMsg("删除成功");
			}else{
				rm.setStatus(1);
				rm.setMsg("系统繁忙");
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
