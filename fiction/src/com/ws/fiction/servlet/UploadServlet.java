package com.ws.fiction.servlet;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.ws.fiction.dao.TextDAO;
import com.ws.fiction.dto.ResultModel;
import com.ws.fiction.dto.Section;
import com.ws.fiction.dto.Text;
import com.ws.fiction.service.impl.SectionServiceImpl;
import com.ws.fiction.service.impl.TextServiceImpl;
import com.ws.fiction.util.DBUtil;
import com.ws.fiction.util.Tools;


@WebServlet("/upload")
@MultipartConfig(location="E:/temp",//location��������ʱ�洢�ռ䣬����Ŀ��λ�ã���������
				fileSizeThreshold=1024*1024*5,//�����ڴ�Ļ����С(���������С�������ʱ�ռ�)
				maxFileSize=1024*1024*1024*2L,//���õ����ļ���С(�ֽ�)
				maxRequestSize=1024*1024*1024*4L//�������ļ���С(�ֽ�)
				)//����servlet3.0���ϰ汾�Դ����ļ��ϴ����
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UploadServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String method = request.getParameter("method");
		switch(method){
		case "txtFile":
			txtFile(request,response);
			break;
		case "imageFile":
			imageFile(request,response);
			break;
		default:
			break;
		}
		
		
	}

	private void imageFile(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
				//���ݱ��ؼ��е�name��ȡһ�����������ݵ�Part����
				Part part = request.getPart("myFile");
				//��ȡ�ļ���
				String name = part.getSubmittedFileName();
				/*System.out.println("�ļ���:" + name);*/
				
				String tname = request.getParameter("tname");
				String tid = request.getParameter("tid");
				

				//·���������ݿ�
				Text text = new Text();
				text.setTid(tid);
				text.setImage("/photo"+tid+name);//��ͼƬ·����벿�ִ������ݿ�
				TextServiceImpl tsi = new TextServiceImpl();
				ResultModel rm = tsi.subImagePath(text);
				if(rm.getStatus()!=0){
					//System.out.println(rm.getMsg());
					return;
				}
				//ͼƬ����ָ���ļ���
				String StoPath = "E:/file/"+tid+name;//ͼƬ�洢·��
//				System.out.println(StoPath);
				part.write(StoPath);
				PrintWriter out = response.getWriter();
				out.print("�ϴ����");
	}

	private void txtFile(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

		
		//���ݱ��ؼ��е�name��ȡһ�����������ݵ�Part����
		Part part = request.getPart("myFile");
		//��ȡ�ļ���
		String name = part.getSubmittedFileName();
		/*System.out.println("�ļ���:" + name);*/
		String name1 = name.substring(4, name.length()-4);
		/*System.out.println(name1);*/
		String tname = request.getParameter("tname");

		
		Section s = new Section();
		s.setSid(Tools.getUID());
		s.setSname(name1);
		s.setSaddr("/photo/"+tname+"/"+name);
		s.setTid(request.getParameter("tid"));
		
		SectionServiceImpl ssi = new SectionServiceImpl();
		ssi.subSection(s);
		
		//����Ŀ��λ��
		String StoPath = "E:/file/"+tname;
		part.write(StoPath+"/" + name);
		TextServiceImpl tsi = new TextServiceImpl();
		tsi.updateSectionNum(s.getTid());
		ResultModel rm = tsi.selectTextByTid(s.getTid());
		Text text = (Text)rm.getData();
		
		ssi.updateCount(text.getSectionNum(), s.getSid());
		
		
		PrintWriter out = response.getWriter();
		out.print("�ϴ����");
	}

}
