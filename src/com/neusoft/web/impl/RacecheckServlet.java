package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Af01ControllerSupport;

public class RacecheckServlet extends Af01ControllerSupport
{
	@Override
	public String execute() throws Exception 
	{
		this.queryTwo();
		return "racecheck";
	}
}
