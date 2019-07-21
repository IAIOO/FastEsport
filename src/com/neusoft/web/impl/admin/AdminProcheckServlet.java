package com.neusoft.web.impl.admin;

import com.neusoft.web.impl.controllersupport.Ac02ControllerSupport;

public class AdminProcheckServlet extends Ac02ControllerSupport
{
	@Override
	public String execute() throws Exception 
	{
		this.savePageData();
		return "procheck";
	}
}
