package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Ac04ControllerSupport;

public class Ac04AddEmpServlet extends Ac04ControllerSupport 
{

	@Override
	public String execute() throws Exception 
	{
		this.update("addEmp", "");
		return "ac04AddEmp";
	}

}
