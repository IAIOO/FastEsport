package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Ad01ControllerSupport;

public class AdminLoginServlet extends Ad01ControllerSupport
{
	@Override
	public String execute() throws Exception 
	{
		this.login();
		if(this.getAttribute().containsKey("msg")) {
			return "adminlogin";
	}
		return "index";
	}
}
