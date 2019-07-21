package com.neusoft.web.impl.admin;

import com.neusoft.web.impl.controllersupport.Af01ControllerSupport;

public class AdminAddracecheckServlet extends Af01ControllerSupport
{
	@Override
	public String execute() throws Exception
	{
		this.update("addracecheck", "…Û∫À");
		return "racecheck";
	}
}
