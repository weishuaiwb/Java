package com.ws.fiction.service;

import com.ws.fiction.dto.ResultModel;
import com.ws.fiction.dto.Text;

public interface TextService {

	public ResultModel newFiciton(Text text);
	
	public ResultModel subImagePath(Text text);
	
	public ResultModel selectTextBase(String uid);
	
	public ResultModel selectAllText();
	
	public ResultModel selectTextByTid(String tid);
	
	public ResultModel selectTextByTname(String tname);
	
	public ResultModel updateSectionNum(String tid);
	
	public ResultModel updateSupport(String tid,int retickets,int monthretickets,int coin);

	public ResultModel delTextByTid(String tid);

}
