package com.neusoft.web.impl.judge;

import com.neusoft.web.impl.controllersupport.Af02ControllerSupport;

public final class JudgeAf02QueryEmpServlet extends Af02ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.savePageData2();
		return "af02QueryEmp";
	}

}
