package com.softeem.dailySystem.test;

//¾²Ì¬µ¼°ü
import static org.junit.Assert.*;

import java.util.UUID;

import org.junit.Test;

import com.softeem.dailySystem.dto.ResultModel;
import com.softeem.dailySystem.dto.Student;
import com.softeem.encrypt.MD5;
import com.softeem.service.Impl.StudentServiceImpl;

public class StudentService {

	@Test
	public void testRegister() {
		Student student = new Student();
		student.setId(UUID.randomUUID().toString());
		student.setPhone("13454044012");
		student.setName("ÕÅ·É");
		student.setSex("ÄÐ");
		student.setPassword(new MD5().getMD5ofStr("123456"));
		student.setDr(1);
		StudentServiceImpl ssi = new StudentServiceImpl();
		ResultModel rm = ssi.register(student);
		//¶ÏÑÔ
		assertEquals(0, rm.getStatus());
		
		
	}

}
