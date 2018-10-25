package com.ws.fiction.service;

import com.ws.fiction.dto.ResultModel;
import com.ws.fiction.dto.User;

public interface UserService {



	public ResultModel register(User user);

	ResultModel login(User user);
	
	ResultModel addSupport(String uid,int retickets,int monthretickets,int coin);

	ResultModel reduceSupport(String uid,int retickets,int monthretickets,int coin);
}
