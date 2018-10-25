package com.ws.fiction.servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.sun.xml.internal.bind.v2.runtime.Location;
import com.ws.fiction.dao.TextDAO;
import com.ws.fiction.dto.ResultModel;
import com.ws.fiction.dto.Text;
import com.ws.fiction.dto.User;
import com.ws.fiction.service.impl.TextServiceImpl;
import com.ws.fiction.service.impl.UserServiceImpl;
import com.ws.fiction.util.DBUtil;
import com.ws.fiction.util.Tools;

import sun.nio.cs.ext.TIS_620;

/**
 * Servlet implementation class TextServlet
 */
@WebServlet("/text")
public class TextServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TextServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String method = request.getParameter("method");

		switch(method){
		case "newFiction":
			newFiction(request,response);
			break;
		case "findText":
			findTextByUid(request,response);
			break;
		case "findTextAjax":
			findTextAjax(request,response);
			break;
		case "findAllList":
			findAllList(request,response);
			break;
		case "searchText":
			searchText(request,response);
			break;
		case "supportText":
			supportText(request,response);
			break;
		case "delTextByTid":
			delTextByTid(request,response);
			break;
		default:
			break;
		}
	}
	
	private void findTextByUid(HttpServletRequest request, HttpServletResponse response) throws IOException {
		User user = (User)request.getSession().getAttribute("user");

		TextServiceImpl tsi = new TextServiceImpl();
		ResultModel rm = tsi.selectTextBase(user.getUid());
		if(rm.getStatus()==0){
			request.getSession().setAttribute("TextList", rm.getData());
			
			response.sendRedirect("novelMa.jsp");
		}
	}

	private void findTextAjax(HttpServletRequest request, HttpServletResponse response) throws IOException {
		User user = (User)request.getSession().getAttribute("user");
		System.out.println(user.getUid());
		TextServiceImpl tsi = new TextServiceImpl();
		ResultModel rm = tsi.selectTextBase(user.getUid());
		if(rm.getStatus()==0){
			Map<String,Object> map = new HashMap<String,Object>();
			map.put("statu", 1);
			map.put("msg", "成功");
			map.put("data", rm.getData());
			PrintWriter out = response.getWriter();
			out.print(JSON.toJSONString(map));
			
			
		}
		
	}

	private void delTextByTid(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String tid = request.getParameter("tid");
		TextServiceImpl tsi = new TextServiceImpl();
		ResultModel rm = tsi.delTextByTid(tid);//使本书完结
		if(rm.getStatus()==0){
			findTextByUid(request, response);
		}
	}

	private void supportText(HttpServletRequest request, HttpServletResponse response) throws IOException {
		Object obj1 = request.getSession().getAttribute("user");
		if(obj1==null){
			response.sendRedirect("login.jsp");
		}
		User user = (User)obj1;
		String tid = request.getParameter("tid");
		String tname = request.getParameter("tname");
		String saddr = request.getParameter("saddr");
		String sname = request.getParameter("sname");
		String count = request.getParameter("count");
		
		
		
		int retickets = Integer.parseInt(request.getParameter("retickets"));
		int monthretickets = Integer.parseInt(request.getParameter("monthretickets"));
		int coin = Integer.parseInt(request.getParameter("coin"));
		
		UserServiceImpl usi = new UserServiceImpl();
		ResultModel rm1 = usi.reduceSupport(user.getUid(), retickets, monthretickets, coin);
		if(rm1.getStatus()==1){
			System.out.println("扣除失败");
			request.getSession().setAttribute("msg", rm1.getMsg());
			
		}
		TextServiceImpl tsi = new TextServiceImpl();
		ResultModel rm2 = tsi.updateSupport(tid, retickets, monthretickets, coin);
		if(rm2.getStatus()==1){
			System.out.println("获取打赏失败");
			usi.addSupport(user.getUid(), retickets, monthretickets, coin);
		}
		request.getSession().setAttribute("support", "打赏成功");
		response.sendRedirect("Section?method=findContext&t=support&tid="+tid);
		
	}

	private void searchText(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String tname = request.getParameter("top-search");
		TextDAO tDao = null;
		try {
			tDao = new TextDAO(DBUtil.getConnection());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Text t1 = tDao.selectTextByTname(tname);
		if(t1!=null){
			response.sendRedirect("Section?method=findSection&tid="+t1.getTid());
	
		}else{
			request.getSession().setAttribute("msg", "查无此书...");
		}
		
	}

	private void findAllList(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

		TextServiceImpl tsi = new TextServiceImpl();
		ResultModel rm = tsi.selectAllText();
		if(rm.getStatus()==0){
			request.getSession().setAttribute("FourText", rm.getData());
			request.getSession().setMaxInactiveInterval(24*60*60*60);
			request.getRequestDispatcher("main.jsp").forward(request, response);
			//response.sendRedirect("main.jsp");
		}else{
			request.getSession().setAttribute("msg", rm.getMsg());
		}
		
	}

	

	private void newFiction(HttpServletRequest request, HttpServletResponse response) {
		String tid = Tools.getUID();
		String tname = request.getParameter("tname");
		User user = (User)request.getSession().getAttribute("user");
//		String author = request.getParameter("uname");
		String classes = request.getParameter("classes");
		String introduce = request.getParameter("introduce");
		TextServiceImpl tsi = new TextServiceImpl();
		Text text = new Text();
		text.setTid(tid);
		text.setTname(tname);
		text.setAuthor(user.getNickname());
		text.setUid(user.getUid());
		text.setClasses(classes);
		
		text.setIntroduce(introduce);
		String StoPath = "E:/file/"+tname;
		text.setStoPath(StoPath);
		File file = new File(StoPath);
		if(!file.exists()){
			file.mkdirs();
		}

		ResultModel rm = tsi.newFiciton(text);
		//开书成功,跳转至。。
		if(rm.getStatus()==0){
			try {
				request.getSession().setAttribute("tid", tid);
				request.getSession().setAttribute("tname", tname);
//				findTextByUid(request, response);
				response.sendRedirect("upload.jsp");
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		}else{
			try {
				response.sendRedirect("newfiction.jsp");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
