package com.softeem.dailySystem.servlet;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.softeem.dailySystem.dao.DailyDAO;
import com.softeem.dailySystem.dto.Daily;
import com.softeem.dailySystem.dto.ResultModel;
import com.softeem.dailySystem.dto.Student;
import com.softeem.service.Impl.DailyServiceImpl;
import com.softeem.util.Tools;

/**
 * Servlet implementation class DailyServlet
 */
@WebServlet("/daily")
public class DailyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DailyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//ת��
		request.setCharacterEncoding("utf-8");
		//��ȡ������ֵ
		String method = request.getParameter("method");
		//�жϷ���ʹ��
		switch (method) {
		case "findBySid"://����ѧ��id��ѯ��־
			findBySid(request,response);
			break;
		case "subDaily"://�ύ��־
			submit(request,response);
			break;
		case "updateDaily"://�޸���־
			updateDaily(request,response);
			break;
		case "del"://ɾ����־
			delDaily(request,response);
			break;
		case "delAll":
			delAllDaily(request,response);
			break;
		default:

			break;
		}
	
	}
	
	
	private void delAllDaily(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String ids = request.getParameter("ids");
		String[] id  = ids.split(",");
		DailyServiceImpl dsi = new DailyServiceImpl();
		ResultModel rm = dsi.delAll(id);
		request.getSession().setAttribute("daily_msg", rm.getMsg());
		findBySid(request, response);
		
	}

	private void delDaily(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String id = request.getParameter("id");
		DailyServiceImpl dsi = new DailyServiceImpl();
		ResultModel rm = dsi.delDaily(id);
		request.getSession().setAttribute("daily_msg",rm.getMsg());
		findBySid(request, response);
	}

	private void updateDaily(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//��ȡ����
				String id = request.getParameter("did").trim();
				String todaytask = request.getParameter("todayTask").trim();
				String completeinfo = request.getParameter("completeInfo").trim();
				String nextplan = request.getParameter("nextPlan").trim();
				Daily daily = new Daily();
				daily.setId(id);
				daily.setTodayTask(todaytask);
				daily.setCompleteInfo(completeinfo);
				daily.setNextPlan(nextplan);
				ResultModel result = new DailyServiceImpl().updateDaily(daily);
				
				request.getSession().setAttribute("daily_msg", result.getMsg());
				new DailyServlet().findBySid(request, response);
		
	}

	private void submit(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		Object obj = request.getSession().getAttribute("student");
		if(obj==null){
			response.sendRedirect("login.jsp");
			return;
		}
		Student stu = (Student)obj;
		
		String id = Tools.getUID();
		String todayTask = request.getParameter("todayTask");

		String completeInfo = request.getParameter("completeInfo");
		String nextPlan = request.getParameter("nextPlan");
//		String time = Tools.getDateToString(new Date(), "yyyy-MM-dd HH-mm-ss");
//		Timestamp subTime = Timestamp.valueOf(time);
		int dr = 0;
		String sid = stu.getId();
		
		Daily daily = new Daily(id, todayTask, completeInfo, nextPlan, dr, sid);
		DailyServiceImpl dsi = new DailyServiceImpl();
		ResultModel rm = dsi.submit(daily);
		if(rm.getStatus()==0){
			request.getSession().setAttribute("sub_msg", rm.getMsg());
			request.getSession().setAttribute("daily_msg", "");
			new DailyServlet().findBySid(request, response);
			
		}
		
	}

	//����ѧ��id��ѯ��־
	private void findBySid(HttpServletRequest request, HttpServletResponse response) throws IOException {
		Object obj = request.getSession().getAttribute("student");
		if(obj==null){
			response.sendRedirect("login.jsp");
			return;
		}
		//��session�л�ȡѧ�������е�id
		Student stu = (Student)obj;
		String sid = stu.getId();
		//Ĭ�ϵ�һҳ ��ÿҳ5��
		int pageSize = 5;
		int currentPage= 1;
		int totalNum = 0;
		int totalPage =0;
		String cp = request.getParameter("cp");
		if(cp!=null){
			currentPage = Integer.parseInt(cp);
		}
		
		if(currentPage<1){  //��ֹ������һҳ
			currentPage=1;
		}
		
		DailyDAO dao = new DailyDAO(null);
		totalNum = dao.findCount(sid);
		//��ҳ��
		if(totalNum%pageSize==0){
			totalPage = totalNum/pageSize;
		}else{
			totalPage = totalNum/pageSize+1;
		}
		//��ֹ������һҳ
		if(currentPage>totalPage){
			currentPage = totalPage;
		}
				
		
		DailyServiceImpl dsi = new DailyServiceImpl();
		ResultModel rm = dsi.findBySid(sid, pageSize, currentPage);
		request.getSession().setAttribute("dailys", rm.getData());
		//����ǰҳ����session
		request.getSession().setAttribute("cp", currentPage);
		//����ҳ������session
		request.getSession().setAttribute("tp", totalPage);
		//�ض�����ҳ
		response.sendRedirect("main.jsp");
	}

}
