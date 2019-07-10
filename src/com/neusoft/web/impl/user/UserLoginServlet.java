package com.neusoft.web.impl.user;

public class UserLoginServlet extends UserControllerSupport {

	@Override
	public String execute() throws Exception {
		this.login();
		if(this.getAttribute().containsKey("msg")) {
			return "login";
		}
		return "index";
	}
}
