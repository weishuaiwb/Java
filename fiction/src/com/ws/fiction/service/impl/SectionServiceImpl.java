package com.ws.fiction.service.impl;

import java.util.List;

import com.ws.fiction.dao.SectionDAO;
import com.ws.fiction.dto.ResultModel;
import com.ws.fiction.dto.Section;
import com.ws.fiction.dto.Text;
import com.ws.fiction.service.SectionService;

public class SectionServiceImpl implements SectionService {
	
	ResultModel rm = new ResultModel();
	SectionDAO sDAO = new SectionDAO();

	@Override
	public ResultModel findSection(Text t) {
		List<Section> list = sDAO.findSection(t);
		if(list != null){
			rm.setStatus(0);
			rm.setData(list);
		}else{
			rm.setStatus(1);
			rm.setMsg("系统繁忙");
		}
		return rm;
	}
	
	@Override
	public ResultModel subSection(Section s) {
		if(sDAO.insert(s)){
			rm.setStatus(0);
			rm.setMsg("上传成功");
		}else{
			rm.setStatus(1);
			rm.setMsg("系统繁忙");
		}
		return rm;
	}

	@Override
	public boolean updateCount(int num, String sid) {
		if(sDAO.updateCount(num, sid)){
			return true;
		}
		return false;
	}
	
	
}
