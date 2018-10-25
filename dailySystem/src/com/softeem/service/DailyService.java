package com.softeem.service;

import com.softeem.dailySystem.dto.Daily;
import com.softeem.dailySystem.dto.ResultModel;

public interface DailyService {
	//根据学生id查询日志
	public ResultModel findBySid(String sid,int pageSize,int currentPage);
	
	//提交日志
	public ResultModel submit(Daily daily);
	
	//修改日志
	public ResultModel updateDaily(Daily daily);
	
	//删除日志
	public ResultModel delDaily(String id);
	
	//批量删除
	public ResultModel delAll(String[] ids);
}
