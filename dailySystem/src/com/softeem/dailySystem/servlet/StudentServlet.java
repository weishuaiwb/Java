package com.softeem.dailySystem.servlet;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.softeem.dailySystem.dto.ResultModel;
import com.softeem.dailySystem.dto.Student;
import com.softeem.service.Impl.StudentServiceImpl;
import com.softeem.util.Tools;


@WebServlet("/stu")
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	ResultModel rm = new ResultModel();

    public StudentServlet() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//��������ͷ
		request.setCharacterEncoding("utf-8");
		//������Ӧͷ
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;Charset='utf-8'");
		
		
		String method = request.getParameter("method");
		switch(method){						//���ݻ�ȡ���������ֵ�����з���ѡ��
		case "reg":
			register(request,response);		//ע��
			break;
		case "login":
			login(request,response);		//��¼
			break;
		default:
			break;
		}
	}

	
	private void login(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String phone = request.getParameter("phone");
		String psw = request.getParameter("password");
		String password = Tools.getMD5(psw);
		
		Student stu = new Student();
		stu.setPhone(phone);
		stu.setPassword(password);
		StudentServiceImpl ssi = new StudentServiceImpl();
		rm = ssi.login(stu);
		if(rm.getStatus()==0){
			//��¼�ɹ�
			request.getSession().setAttribute("student", rm.getData());
			
			response.sendRedirect("daily?method=findBySid");
		}else{
			request.setAttribute("msg", rm.getMsg());
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}


	private void register(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		
		String name = request.getParameter("name");
		String sex = request.getParameter("sex");
		String psw = request.getParameter("psw");
		String phone = request.getParameter("phone");
//		System.out.println(name+sex+password+phone);
		
		//�������ݴ������
		String id = Tools.getUID();
		String password = Tools.getMD5(psw);
		int dr = 1;
		Student stu = new Student(id, name, sex, phone, password, dr);
		//����service�����߼�--ע��
		StudentServiceImpl ssi = new StudentServiceImpl();
		rm = ssi.register(stu);
		
		if(rm.getStatus()==0){
			//ע��ɹ�
			request.getSession().setAttribute("phone", phone);
			response.sendRedirect("login.jsp");
		}else{
			request.setAttribute("msg", rm.getMsg());
			request.getRequestDispatcher("reg.jsp").forward(request, response);
		}
	}


	
	
	
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
