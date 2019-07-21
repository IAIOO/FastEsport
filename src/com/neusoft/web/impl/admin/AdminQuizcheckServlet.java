package com.neusoft.web.impl.admin;

import com.neusoft.web.impl.controllersupport.Ab04ControllerSupport;

public class AdminQuizcheckServlet extends Ab04ControllerSupport
{
	@Override
	public String execute() throws Exception 
	{
		this.queryTwo();
		return "quizcheck";
	}
}
