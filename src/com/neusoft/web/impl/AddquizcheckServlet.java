package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Ab04ControllerSupport;

public class AddquizcheckServlet extends Ab04ControllerSupport
{
	@Override
	public String execute() throws Exception
	{
		this.update("addquizcheck", "хож╓");
		return "quizcheck";
	}
}
