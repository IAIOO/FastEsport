package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Af02ControllerSupport;

public final class Af02QueryEmpServlet extends Af02ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.savePageData();
		return "af02QueryEmp";
	}

}
