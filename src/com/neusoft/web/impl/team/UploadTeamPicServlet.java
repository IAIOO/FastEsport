package com.neusoft.web.impl.team;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import javax.websocket.Session;

import com.neusoft.services.impl.Ac01ServicesImpl;


@WebServlet("/uploadTeamPic")
@MultipartConfig
public class UploadTeamPicServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Part part = request.getPart("teamPic");
		String fileName = part.getSubmittedFileName();
		String filePath = request.getServletContext().getRealPath("")+"img/teamPic/";//�ҵ���Ŀ��tomcat������������ʱ����Ŀ¼
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
			Map<String,Object> dto = new HashMap<>();	
			dto.put("aac115","./img/teamPic/"+uuid+fileName);
			String aab101 = request.getSession().getAttribute("aab101").toString();
			dto.put("aab101",aab101);
			Ac01ServicesImpl services = new Ac01ServicesImpl();
			services.setMapDto(dto);
			if(fileName.endsWith(".jpg")||fileName.endsWith(".png"))
			{
				if(services.modifyTeamPic())
				{
					request.setAttribute("msg", "�ϴ��ɹ�!");
				}
				else
				{
					request.setAttribute("msg","�ϴ�ʧ�ܣ�");
				}
				
			}
		}
		catch(Exception e)
		{
			request.setAttribute("msg", "��ʾ���ϴ�ʧ�ܣ�");
			e.printStackTrace();
		}
//		������ʾͼƬ
		PrintWriter out = response.getWriter();
		response.setContentType("text");
		out.write("./img/teamPic/"+uuid+fileName); //����С�����һλ
		out.flush();
		out.close();	
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
	}

}
