package com.neusoft.web.impl.admin;

import com.neusoft.web.impl.controllersupport.Ac02ControllerSupport;

public class AdminAddprocheckServlet extends Ac02ControllerSupport
{
	@Override
	public String execute() throws Exception
	{
		this.update("addprocheck", "хож╓");
		return "procheck";
	}
}
