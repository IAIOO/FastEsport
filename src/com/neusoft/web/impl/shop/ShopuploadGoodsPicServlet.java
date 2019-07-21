package com.neusoft.web.impl.shop;

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


@WebServlet("/uploadGoodsPic")
@MultipartConfig
public class ShopuploadGoodsPicServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Part part = request.getPart("goodsPic");
		String fileName = part.getSubmittedFileName();
		String filePath = request.getServletContext().getRealPath("")+"img/goodsPic/";//找到项目在tomcat服务器上运行时所在目录
		System.out.println(filePath);
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
			if(fileName.endsWith(".jpg")||fileName.endsWith(".png"))
			{
				PrintWriter out = response.getWriter();
				response.setContentType("text");
				out.write("./img/goodsPic/"+uuid+fileName); 
				out.flush();
				out.close();
			}
		}
		catch(Exception e)
		{
			request.setAttribute("msg", "提示：上传失败！");
			e.printStackTrace();
		}
	}


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
	}

}
