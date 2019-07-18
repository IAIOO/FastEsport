package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Ac04ControllerSupport;

public final class Ac04QueryEmpServlet extends Ac04ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.savePageData();
		return "queryEmp";
	}

}
