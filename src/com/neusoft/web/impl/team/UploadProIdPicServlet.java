package com.neusoft.web.impl.team;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


@WebServlet("/uploadProIdPic")
@MultipartConfig
public class UploadProIdPicServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Part part = request.getPart("proIdPic");
		String fileName = part.getSubmittedFileName();
		String filePath = request.getServletContext().getRealPath("")+"img/proIdPic/";//�ҵ���Ŀ��tomcat������������ʱ����Ŀ¼
		File file = new File(filePath);	
		if(!file.exists())
		{
			file.mkdirs();
		}
		UUID uuid = UUID.randomUUID();
		String url = filePath+uuid+fileName;
		if(fileName.endsWith(".jpg")||fileName.endsWith(".png"))
		{
			part.write(url);
		}
		try
		{
			PrintWriter out = response.getWriter();
			response.setContentType("text");
			out.write("./img/idPic/"+uuid+fileName); //����С�����һλ
			out.flush();
			out.close();

		}
		catch(Exception e)
		{
			request.setAttribute("msg", "��ʾ���ϴ�ʧ�ܣ�");
			e.printStackTrace();
		}
		PrintWriter out = response.getWriter();
		response.setContentType("text");
		out.write("./img/proIdPic/"+uuid+fileName); //����С�����һλ
		out.flush();
		out.close();	
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
	}

}
