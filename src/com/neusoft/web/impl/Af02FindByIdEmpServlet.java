package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Af02ControllerSupport;

public class Af02FindByIdEmpServlet extends Af02ControllerSupport 
{

	@Override
	public String execute() throws Exception 
	{
		this.savePageInstance();
		//return "af01AddEmp";
		return "af02ModifyEmp";
	}

}
