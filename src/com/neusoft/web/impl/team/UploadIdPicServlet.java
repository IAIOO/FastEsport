package com.neusoft.web.impl.team;

import java.io.File;
import java.io.IOException;
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

import com.neusoft.services.impl.Ac01ServicesImpl;


@WebServlet("/uploadIdPic")
@MultipartConfig
public class UploadIdPicServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Part part = request.getPart("idPic");
		String fileName = part.getSubmittedFileName();
		String filePath = request.getServletContext().getRealPath("")+"img/idPic/";//�ҵ���Ŀ��tomcat������������ʱ����Ŀ¼
//		System.out.println(filePath);
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
			dto.put("aab101","1");//Ӧ����session��ȡaab101��ֵ		
			dto.put("aac109","./img/idPic/"+uuid+fileName);
			Ac01ServicesImpl services = new Ac01ServicesImpl();
			services.setMapDto(dto);
			if(fileName.endsWith(".jpg")||fileName.endsWith(".png"))
			{
				if(services.modifyIdPic())
				{
					request.setAttribute("msg", "�ϴ��ɹ�!");
					HttpSession session=request.getSession();
					session.setAttribute("aac109", "./img/idPic/"+uuid+fileName);
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
	}


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
	}

}
