package com.neusoft.web.impl.judge;

import com.neusoft.web.impl.controllersupport.Af02ControllerSupport;

public class JudgeAf02FindByIdEmpServlet extends Af02ControllerSupport 
{

	@Override
	public String execute() throws Exception 
	{
		this.savePageInstance();

		return "af02ModifyEmp";
	}

}
