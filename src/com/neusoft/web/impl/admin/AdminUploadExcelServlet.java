package com.neusoft.web.impl.admin;

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

import com.neusoft.services.impl.Af02ServicesImpl;


@WebServlet("/uploadExcel")
@MultipartConfig
public class AdminUploadExcelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Part part = request.getPart("excel");
		String fileName = part.getSubmittedFileName().substring(part.getSubmittedFileName().lastIndexOf("."));
		String filePath = request.getServletContext().getRealPath("")+"file/excel/";//找到项目在tomcat服务器上运行时所在目录
		File file = new File(filePath);	
		if(!file.exists())
		{
			file.mkdirs();
		}
		UUID uuid = UUID.randomUUID();
		String url = filePath+uuid+fileName;
		if(fileName.endsWith(".xls")||fileName.endsWith(".xlsx"))
		{
			part.write(url);
		}
		try
		{
			Map<String,Object> dto = new HashMap<>();	
			dto.put("filePath",url);
			Af02ServicesImpl services = new Af02ServicesImpl();
			services.setMapDto(dto);
			if(services.excelInsertInto())
			{
				request.setAttribute("msg", "上传成功!");
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
