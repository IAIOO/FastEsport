package com.neusoft.web.impl.user;

import com.neusoft.web.impl.controllersupport.Ab01ControllerSupport;

public class UserQueryServlet extends Ab01ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.getPage();
		return "prouser";
	}

}
