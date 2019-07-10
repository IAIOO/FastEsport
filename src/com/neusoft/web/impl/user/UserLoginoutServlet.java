package com.neusoft.web.impl.user;

public class UserLoginoutServlet extends UserControllerSupport {

	@Override
	public String execute() throws Exception {
		this.loginout();
		return "login";
	}

}
