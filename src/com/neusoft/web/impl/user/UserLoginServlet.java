package com.neusoft.web.impl.user;

import com.neusoft.web.impl.controllersupport.Ab01ControllerSupport;

public class UserLoginServlet extends Ab01ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.login();
		return "index";
	}
}
