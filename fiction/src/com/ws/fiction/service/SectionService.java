package com.ws.fiction.service;

import java.util.List;

import com.ws.fiction.dto.ResultModel;
import com.ws.fiction.dto.Section;
import com.ws.fiction.dto.Text;

public interface SectionService {
	
	public ResultModel subSection(Section s);

	public ResultModel findSection(Text t);
	
	public boolean updateCount(int num,String sid);
}
