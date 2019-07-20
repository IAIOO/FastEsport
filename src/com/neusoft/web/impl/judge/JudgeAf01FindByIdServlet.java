package com.neusoft.web.impl.judge;

import com.neusoft.web.impl.controllersupport.Af01ControllerSupport;

public class JudgeAf01FindByIdServlet extends Af01ControllerSupport 
{

	@Override
	public String execute() throws Exception 
	{
		this.savePageInstance();
		//return "af01AddEmp";
		return "af01ModifyEmp";
	}

}
