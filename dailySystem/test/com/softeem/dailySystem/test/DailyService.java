package com.softeem.dailySystem.test;

import static org.junit.Assert.*;

import org.junit.Test;

import com.softeem.dailySystem.dto.ResultModel;
import com.softeem.service.Impl.DailyServiceImpl;

public class DailyService {

	@Test
	public void testFindBySid() {
		DailyServiceImpl dsi = new DailyServiceImpl();
		ResultModel result = dsi.findBySid("38268534-e92e-4560-b0b3-4d2b7222f5b3", 5, 1);
		assertEquals(1, result.getStatus());
	}

}
