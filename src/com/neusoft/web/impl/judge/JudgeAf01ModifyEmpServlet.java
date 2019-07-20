package com.neusoft.web.impl.judge;

import com.neusoft.web.impl.controllersupport.Af01ControllerSupport;
public final class JudgeAf01ModifyEmpServlet extends Af01ControllerSupport {

	@Override
	public String execute() throws Exception
	{
		
		
		this.update("modifyEmp", "ÐÞ¸Ä");
		//this.savePageData();
		this.queryTwo();
		return "af01QueryEmp";
	}

}
