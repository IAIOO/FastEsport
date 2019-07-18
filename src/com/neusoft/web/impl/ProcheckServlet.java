package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Ac03ControllerSupport;

public class ProcheckServlet extends Ac03ControllerSupport
{
	@Override
	public String execute() throws Exception 
	{
		this.queryTwo();
		return "procheck";
	}
}
