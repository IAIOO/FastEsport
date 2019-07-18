package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Af02ControllerSupport;

public final class Af02ModifyEmpServlet extends Af02ControllerSupport {

	@Override
	public String execute() throws Exception
	{
		
		
		this.update("modifyEmp", "ÐÞ¸Ä");
		//this.savePageData();
		//return "af01QueryEmp";
		return "af02QueryEmp";
	}

}
