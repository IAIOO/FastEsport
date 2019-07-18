package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Af01ControllerSupport;

public class FindByIdEmpServlet extends Af01ControllerSupport 
{

	@Override
	public String execute() throws Exception 
	{
		this.savePageInstance();
		//return "af01AddEmp";
		return "af01ModifyEmp";
	}

}
