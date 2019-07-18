package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Ad03ControllerSupport;

public class RegisterServlet extends Ad03ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("addEmp", "зЂВс");
		return "login";
	}
}
