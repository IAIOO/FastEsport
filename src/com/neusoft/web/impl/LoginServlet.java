package com.neusoft.web.impl;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.neusoft.system.db.DBUtils;
import com.neusoft.web.impl.controllersupport.Ad03ControllerSupport;

public class LoginServlet extends Ad03ControllerSupport 
{

	@Override
	public String execute() throws Exception 
	{
//		//this.update("addEmp", "", "", "");
//		this.update("addEmp", "зЂВс");
//		this.savePageInstance();
		
		return "af01QueryEmp";
		
		
	}

}


