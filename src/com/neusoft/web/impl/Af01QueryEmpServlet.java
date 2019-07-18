package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Af01ControllerSupport;
public final class Af01QueryEmpServlet extends Af01ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.savePageData();
		return "af01QueryEmp";
	}

}
