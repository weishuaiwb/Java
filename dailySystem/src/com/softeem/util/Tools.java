package com.softeem.util;

import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.UUID;

import com.softeem.encrypt.MD5;

public class Tools {
	public static String getUID() {
		return UUID.randomUUID().toString();
	}
	
	/**
	 * 
	 * @param str
	 * @return MD5加密后字符串
	 */
	public static String getMD5(String str){
		return new MD5().getMD5ofStr(str);
	}
	
	
	/**
	 * 将给定的date数据按给定格式转为字符串
	 * @param date
	 * @param str
	 * @return	时间格式字符串
	 */
	public static String getDateToString(Date date,String str){
		SimpleDateFormat sdf = new SimpleDateFormat(str);
		return sdf.format(date);
	}
}
