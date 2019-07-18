package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Ac04ControllerSupport;

public class FindByIdOnEnlistServlet extends Ac04ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.savePageInstance1();
		return "ac04AddEmp";
	}

}
