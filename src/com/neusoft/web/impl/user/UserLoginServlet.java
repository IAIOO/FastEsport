package com.neusoft.web.impl.user;

import com.neusoft.web.impl.controllersupport.Ab01ControllerSupport;

public class UserLoginServlet extends Ab01ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.login();
		if(this.getAttribute().containsKey("msg")) {
			return "login";
		}
		return "index";
	}
}
