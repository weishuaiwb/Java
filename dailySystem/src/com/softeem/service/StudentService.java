package com.softeem.service;

import com.softeem.dailySystem.dto.ResultModel;
import com.softeem.dailySystem.dto.Student;

public interface StudentService {

	abstract public ResultModel register(Student stu);

	public ResultModel login(Student stu);

}
