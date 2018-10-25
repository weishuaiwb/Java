package com.softeem.dailySystem.test;

import static org.junit.Assert.*;

import java.sql.SQLException;

import org.junit.Test;

import com.softeem.dailySystem.dao.DailyDAO;
import com.softeem.dailySystem.dto.Daily;
import com.softeem.util.DBUtil;
import com.softeem.util.Tools;

public class DailyDAOtest {

	@Test
	public void testInsert() throws SQLException {
		Daily daily = new Daily();
		daily.setId(Tools.getUID());
		daily.setTodayTask("学习了日报管理");
		daily.setCompleteInfo("模仿完成");
		daily.setNextPlan("完成分页，解决刷新重复提交问题");
		daily.setSid("8ee6a954-c7f9-460c-a3b5-80d4b2cd28df");
		daily.setDr(0);
		boolean boo = new DailyDAO(DBUtil.getConnection()).insert(daily);
		assertTrue(boo);
	}

}
