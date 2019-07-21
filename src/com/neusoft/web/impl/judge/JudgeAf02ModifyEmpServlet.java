package com.neusoft.web.impl.judge;

import com.neusoft.web.impl.controllersupport.Af02ControllerSupport;

public final class JudgeAf02ModifyEmpServlet extends Af02ControllerSupport {

	@Override
	public String execute() throws Exception
	{
		
		
		this.update("modifyEmp", "ÐÞ¸Ä");
		this.savePageData2();
		return "af02QueryEmp";
	}

}
