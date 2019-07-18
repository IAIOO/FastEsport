package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Af01ControllerSupport;
public final class Af01ModifyEmpServlet extends Af01ControllerSupport {

	@Override
	public String execute() throws Exception
	{
		
		
		this.update("modifyEmp", "ÐÞ¸Ä");
		//this.savePageData();
		//return "af01QueryEmp";
		return "af01QueryEmp";
	}

}
