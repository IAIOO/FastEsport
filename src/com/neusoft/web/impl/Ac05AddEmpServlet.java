package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Ac05ControllerSupport;

public class Ac05AddEmpServlet extends Ac05ControllerSupport 
{

	@Override
	public String execute() throws Exception 
	{
	//	this.savePageInstance();
		
	//	this.update("findById", "");
		this.update("addEmp", "Ìí¼Ó");
		return "addGame";
	}

}
