package com.softeem.service;

import com.softeem.dailySystem.dto.Daily;
import com.softeem.dailySystem.dto.ResultModel;

public interface DailyService {
	//����ѧ��id��ѯ��־
	public ResultModel findBySid(String sid,int pageSize,int currentPage);
	
	//�ύ��־
	public ResultModel submit(Daily daily);
	
	//�޸���־
	public ResultModel updateDaily(Daily daily);
	
	//ɾ����־
	public ResultModel delDaily(String id);
	
	//����ɾ��
	public ResultModel delAll(String[] ids);
}
