package com.softeem.dailySystem.dao;

import java.util.List;

public interface BaseDAO<T> {

	public boolean insert(T t);
	
	public boolean delete(T t);
	
	public boolean update(T t);
	
	public T findOne(T t);
	
	public List<T> findAll(T t);
}
