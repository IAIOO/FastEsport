package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Af01ControllerSupport;
public final class Af01AddEmpServlet extends Af01ControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.update("addEmp", "Ìí¼Ó");
		return "af01QueryEmp";
	}
}
