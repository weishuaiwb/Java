package com.ws.fiction.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.net.httpserver.Filter.Chain;


public class LoginFilter implements Filter{
	static String pass = null;
	
	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// 获取初始化参数
		pass = arg0.getInitParameter("pass");
		
	}
	
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
		
		HttpServletRequest request = (HttpServletRequest)arg0;
		HttpServletResponse response = (HttpServletResponse)arg1;

		//获取请求路径
		String uri = request.getRequestURI(); /* fiction/test.jsp */
//		System.out.println(1+uri);
		uri = uri.substring(uri.lastIndexOf("/")+1);//截取出test.jsp
		
		//放行路径
		String[] puri = pass.split(",");
		for (String s : puri) {
//			System.out.println(2+s);
			if(uri.equals(s)){
				arg2.doFilter(arg0, arg1);
				return;
			}
		}
		if(request.getSession().getAttribute("user")!=null){
			arg2.doFilter(arg0, arg1);
			return;
		}
		response.sendRedirect("login.jsp");
		
	}

	

}
