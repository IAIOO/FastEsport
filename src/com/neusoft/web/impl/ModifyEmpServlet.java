package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Ac04ControllerSupport;
import com.neusoft.web.support.ControllerSupport;

public class ModifyEmpServlet extends Ac04ControllerSupport {

	@Override
	public String execute() throws Exception
	{
		this.update("modifyEmp", "ÐÞ¸Ä");
		return "addEmp";
	}

}
