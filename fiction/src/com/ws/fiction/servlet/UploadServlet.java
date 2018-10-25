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
@MultipartConfig(location="E:/temp",//location中配置临时存储空间，不是目标位置，必须配置
				fileSizeThreshold=1024*1024*5,//设置内存的缓存大小(超过这个大小后进入临时空间)
				maxFileSize=1024*1024*1024*2L,//设置单个文件大小(字节)
				maxRequestSize=1024*1024*1024*4L//设置总文件大小(字节)
				)//基于servlet3.0以上版本自带的文件上传组件
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
				//根据表单控件中的name获取一个包含表单数据的Part对象
				Part part = request.getPart("myFile");
				//获取文件名
				String name = part.getSubmittedFileName();
				/*System.out.println("文件名:" + name);*/
				
				String tname = request.getParameter("tname");
				String tid = request.getParameter("tid");
				

				//路径存入数据库
				Text text = new Text();
				text.setTid(tid);
				text.setImage("/photo"+tid+name);//将图片路径后半部分存入数据库
				TextServiceImpl tsi = new TextServiceImpl();
				ResultModel rm = tsi.subImagePath(text);
				if(rm.getStatus()!=0){
					//System.out.println(rm.getMsg());
					return;
				}
				//图片存入指定文件夹
				String StoPath = "E:/file/"+tid+name;//图片存储路径
//				System.out.println(StoPath);
				part.write(StoPath);
				PrintWriter out = response.getWriter();
				out.print("上传完毕");
	}

	private void txtFile(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

		
		//根据表单控件中的name获取一个包含表单数据的Part对象
		Part part = request.getPart("myFile");
		//获取文件名
		String name = part.getSubmittedFileName();
		/*System.out.println("文件名:" + name);*/
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
		
		//存入目标位置
		String StoPath = "E:/file/"+tname;
		part.write(StoPath+"/" + name);
		TextServiceImpl tsi = new TextServiceImpl();
		tsi.updateSectionNum(s.getTid());
		ResultModel rm = tsi.selectTextByTid(s.getTid());
		Text text = (Text)rm.getData();
		
		ssi.updateCount(text.getSectionNum(), s.getSid());
		
		
		PrintWriter out = response.getWriter();
		out.print("上传完毕");
	}

}
