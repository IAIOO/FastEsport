package com.neusoft.web.impl.judge;

import com.neusoft.web.impl.controllersupport.Ad03ControllerSupport;

public class JudgeLoginServlet extends Ad03ControllerSupport 
{

	@Override
	public String execute() throws Exception 
	{
		this.Login();
		if(this.getAttribute().containsKey("msg")) {
			return "judgeLogin";
			
		}
		return "judgeGame";
		
		
	}

	

}


