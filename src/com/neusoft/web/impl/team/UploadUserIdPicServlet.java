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

import com.neusoft.services.impl.Ac02ServicesImpl;


@WebServlet("/uploadUserIdPic")
@MultipartConfig
public class UploadUserIdPicServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Part part = request.getPart("userIdPic");
		String fileName = part.getSubmittedFileName();
		String filePath = request.getServletContext().getRealPath("")+"img/userIdPic/";//找到项目在tomcat服务器上运行时所在目录
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
			dto.put("aab101","1");//应该由session获取aab101的值		
			dto.put("aac208","./img/userIdPic/"+uuid+fileName);
			Ac02ServicesImpl services = new Ac02ServicesImpl();
			services.setMapDto(dto);
			if(fileName.endsWith(".jpg")||fileName.endsWith(".png"))
			{
				if(services.uploadUserIdPic())
				{
					request.setAttribute("msg", "上传成功!");
				}
				else
				{
					request.setAttribute("msg","上传失败！");
				}
				
			}
		}
		catch(Exception e)
		{
			request.setAttribute("msg", "提示：上传失败！");
			e.printStackTrace();
		}
//		PrintWriter out = response.getWriter();
//		response.setContentType("text");
//		out.write("./img/proIdPic/"+uuid+fileName); //保留小数点后一位
//		out.flush();
//		out.close();	
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
	}

}
