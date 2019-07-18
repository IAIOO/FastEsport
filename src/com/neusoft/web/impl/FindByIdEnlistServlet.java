package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Ac03ControllerSupport;

public class FindByIdEnlistServlet extends Ac03ControllerSupport {
	@Override
	public String execute() throws Exception {
		this.savePageInstance();
		return "enlistTeam";
	}

}
