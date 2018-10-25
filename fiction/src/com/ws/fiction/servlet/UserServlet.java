package com.ws.fiction.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.ws.fiction.dto.ResultModel;
import com.ws.fiction.dto.User;
import com.ws.fiction.service.impl.UserServiceImpl;
import com.ws.fiction.util.Tools;




/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/user")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	ResultModel rm = new ResultModel();

    public UserServlet() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(1);
		//设置请求头
		request.setCharacterEncoding("utf-8");
		//设置响应头
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;Charset='utf-8'");
		
		
		String method = request.getParameter("method");
		switch(method){						//根据获取的隐藏域的值，进行方法选择
		case "register":
			register(request,response);		//注册
			break;
		case "login":
			login(request,response);		//登录
			break;
		case "ajax1":
			ajax1(request,response);
		case "quit":
			Squit(request,response);
		default:
			break;
		}
	}

	
	private void Squit(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.getSession().removeAttribute("user");
		response.sendRedirect("login.jsp");
	}


	private void ajax1(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String name = request.getParameter("name");

		if(name.equals("")||name.length()<=0){
			
			String new_name = new String(name.getBytes("ISO8859-1"),"utf-8");
			Map<String,Object> map = new HashMap<String,Object>();
			map.put("statu", 0);
			map.put("msg", "未登录");
			map.put("data", null);
			PrintWriter out = response.getWriter();
			out.print(JSON.toJSONString(map));
			
		}
		String new_name = new String(name.getBytes("ISO8859-1"),"utf-8");
		System.out.println(new_name);
		Map<String,Object> map = new HashMap<String,Object>();
		System.out.println(2+name);
		map.put("statu", 1);
		map.put("msg", "成功");
		map.put("data", null);
		PrintWriter out = response.getWriter();
		out.print(JSON.toJSONString(map));
		
	}


	private void login(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		/*String token = request.getParameter("token");
		Object obj = request.getSession().getAttribute("token");
		String stoken = obj!=null?obj.toString():null;
		if(token.equals(stoken)){*/

			String phone = request.getParameter("phone");
			String psw = request.getParameter("password");
			String upwd = Tools.getMD5(psw);
			
			User stu = new User();
			stu.setPhone(phone);
			stu.setUpwd(upwd);
			UserServiceImpl ssi = new UserServiceImpl();
			rm = ssi.login(stu);
			if(rm.getStatus()==0){
				//登录成功
				request.getSession().setAttribute("user", rm.getData());
				request.getSession().setMaxInactiveInterval(24*60*60*60);
				request.getRequestDispatcher("index.jsp").forward(request, response);
//				response.sendRedirect("index.jsp");

			}else{
				request.setAttribute("msg", rm.getMsg());
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
		/*}else{
			System.out.println("重复提交");
			
		}*/
		
	}


	private void register(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		String token = request.getParameter("token");
		Object obj = request.getSession().getAttribute("token");
		String stoken = obj!=null?obj.toString():null;
		if(token.equals(stoken)){


			String name = request.getParameter("name");
			String sex = request.getParameter("sex");
			String psw = request.getParameter("psw");
			String phone = request.getParameter("phone");
			
			
			//创建数据传输对象
			String id = Tools.getUID();
			String password = Tools.getMD5(psw);
			int dr = 0;
//			System.out.println(id+name+sex+password+phone+dr);
			User user = new User();
			user.setUid(id);
			user.setUname(name);
			user.setSex(sex);
			user.setUpwd(password);
			user.setPhone(phone);
			user.setDr(dr);
			//调用service处理逻辑--注册
			UserServiceImpl ssi = new UserServiceImpl();
			rm = ssi.register(user);
			
			if(rm.getStatus()==0){
				//注册成功
				request.getSession().setAttribute("phone", phone);
				response.sendRedirect("login.jsp");
			}else{
				request.setAttribute("msg", rm.getMsg());
				request.getRequestDispatcher("register.jsp").forward(request, response);
			}
		}else{
			System.out.println("重复提交");
		}
		
	}



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
