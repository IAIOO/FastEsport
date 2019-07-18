package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Ac04ControllerSupport;

public class AddEmpServlet extends Ac04ControllerSupport 
{

	@Override
	public String execute() throws Exception 
	{
		this.update("addEmp", "зЂВс");
		return "addEmp";
	}

}
