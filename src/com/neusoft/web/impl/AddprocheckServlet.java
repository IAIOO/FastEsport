package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Ac03ControllerSupport;

public class AddprocheckServlet extends Ac03ControllerSupport
{
	@Override
	public String execute() throws Exception
	{
		this.update("addprocheck", "хож╓");
		return "procheck";
	}
}
