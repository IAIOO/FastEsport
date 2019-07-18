package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Ab04ControllerSupport;

public class QuizcheckServlet extends Ab04ControllerSupport
{
	@Override
	public String execute() throws Exception 
	{
		this.queryTwo();
		return "quizcheck";
	}
}
