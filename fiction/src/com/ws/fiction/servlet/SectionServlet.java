package com.ws.fiction.servlet;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ws.fiction.dao.SectionDAO;
import com.ws.fiction.dao.TextDAO;
import com.ws.fiction.dto.ResultModel;
import com.ws.fiction.dto.Section;
import com.ws.fiction.dto.Text;
import com.ws.fiction.service.impl.SectionServiceImpl;
import com.ws.fiction.service.impl.TextServiceImpl;
import com.ws.fiction.util.DBUtil;


/**
 * Servlet implementation class SectionServlet
 */
@WebServlet("/Section")
public class SectionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SectionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//转码
		request.setCharacterEncoding("utf-8");
		//获取隐藏域值
		String method = request.getParameter("method");
		//判断方法使用
		switch (method) {
		case "findSection"://根据小说id查询小说信息（基本资料加章节信息）
			findSection(request,response);
			break;
		case "findContext":
			findContext(request,response);
			break;
		case "nextSection":
			nextSection(request,response);
			break;
		default:
			break;
		}
	}

	

	
	
	private void nextSection(HttpServletRequest request, HttpServletResponse response) {
		String tid = request.getParameter("tid");
		
		String tname = request.getParameter("tname");
		
		int count = Integer.parseInt(request.getParameter("count"));
		
		Text t = new Text();
		t.setTid(tid);
		
		Section section = new Section();
		SectionDAO sDao = new SectionDAO();
		
		List<Section> list = sDao.findSection(t);
		for (Section s1 : list) {
			if(s1.getCount()==count){
				section = s1;

			}
		}
		String saddr = section.getSaddr();
		String sname = section.getSname();
		saddr = saddr.replace("/photo", "E:/file");
		File file = new File(saddr);
		try {
			InputStreamReader isr = new InputStreamReader(new FileInputStream(file),"GBK");
			BufferedReader br = new BufferedReader(isr);
			String Txt = null;
			String TxtAll =null;
			while((Txt=br.readLine()) != null){

				TxtAll = TxtAll+"<br>"+"&nbsp;&nbsp;&nbsp;&nbsp;"+Txt;
				
			}
			request.getSession().setAttribute("context", TxtAll);
			request.getSession().setAttribute("sname", sname);
			request.getSession().setAttribute("count", count);
			request.getSession().setAttribute("tname", tname);

			request.getSession().setAttribute("tid", tid);
			response.sendRedirect("context.jsp");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	private void findContext(HttpServletRequest request, HttpServletResponse response) {
		String tid = request.getParameter("tid");
		String tname = null;
		String saddr = null;
		String sname = null;
		String count = null;
		if(request.getParameter("t")== null){
			tname = request.getParameter("tname");
			saddr = request.getParameter("saddr");
			sname = request.getParameter("sname");
			count = request.getParameter("count");
			
		}else{
			tname = (String)request.getSession().getAttribute("tname");
			saddr = (String)request.getSession().getAttribute("saddr");
			sname = (String)request.getSession().getAttribute("sname");
			count = (String)request.getSession().getAttribute("count");
		}
		
		saddr = saddr.replace("/photo", "E:/file");
		File file = new File(saddr);
		try {
			InputStreamReader isr = new InputStreamReader(new FileInputStream(file),"GBK");
			BufferedReader br = new BufferedReader(isr);
			String Txt = null;
			String TxtAll =null;
			while((Txt=br.readLine()) != null){

				TxtAll = TxtAll+"<br>"+"&nbsp;&nbsp;&nbsp;&nbsp;"+Txt;
				
			}
			TxtAll = TxtAll.substring(4);
			request.getSession().setAttribute("context", TxtAll);
			request.getSession().setAttribute("saddr", saddr);
			request.getSession().setAttribute("sname", sname);
			request.getSession().setAttribute("count", count);
			request.getSession().setAttribute("tname", tname);
			request.getSession().setAttribute("tid", tid);
			request.getSession().setMaxInactiveInterval(60*60*60);
			response.sendRedirect("context.jsp");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	//通过小说信息查询章节信息--进入小说列表页面
	private void findSection(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String tid = request.getParameter("tid");
		
		TextDAO tDao = null;
		try {
			tDao = new TextDAO(DBUtil.getConnection());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Text t = tDao.selectTextByTid(tid);
		request.getSession().setAttribute("textBase",t);
		TextServiceImpl tsi = new TextServiceImpl();
		ResultModel rm1 = tsi.selectAllText();
		request.getSession().setAttribute("FourText", rm1.getData());
		SectionServiceImpl ssi = new SectionServiceImpl();
		ResultModel rm = ssi.findSection(t);
		List<Section> list = (List<Section>)rm.getData();
		Section s1 = list.get(list.size()-1);
		
		
		request.getSession().setAttribute("LastSection", s1);
//		request.getSession().setAttribute("Section_msg", rm.getMsg());
		request.getSession().setAttribute("SectionInfo", rm.getData());
		request.getRequestDispatcher("list.jsp").forward(request, response);
//		response.sendRedirect("list.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
