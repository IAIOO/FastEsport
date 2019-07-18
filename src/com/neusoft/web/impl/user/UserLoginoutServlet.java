package com.neusoft.web.impl.user;

import com.neusoft.web.impl.controllersupport.Ab01ControllerSupport;

public class UserLoginoutServlet extends Ab01ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.loginout();
		return "login";
	}

}
