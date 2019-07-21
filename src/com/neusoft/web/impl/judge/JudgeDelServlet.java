package com.neusoft.web.impl.judge;

import com.neusoft.web.impl.controllersupport.Ad03ControllerSupport;

public class JudgeDelServlet extends Ad03ControllerSupport 
{

	@Override
	public String execute() throws Exception 
	{
		this.update("deleteById", "É¾³ý");
		return "judgeLogin";
	}

}
