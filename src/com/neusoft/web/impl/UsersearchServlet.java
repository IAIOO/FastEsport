package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Ab06ControllerSupport;

public class UsersearchServlet extends Ab06ControllerSupport
{
	@Override
	public String execute() throws Exception 
	{
		this.savePageData();
		return "userdelete";
	}
}
