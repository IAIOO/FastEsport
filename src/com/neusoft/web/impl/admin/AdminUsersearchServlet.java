package com.neusoft.web.impl.admin;

import com.neusoft.web.impl.controllersupport.Ab06ControllerSupport;

public class AdminUsersearchServlet extends Ab06ControllerSupport
{
	@Override
	public String execute() throws Exception 
	{
		this.savePageData();
		return "userdelete";
	}
}
