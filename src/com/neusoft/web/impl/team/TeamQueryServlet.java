package com.neusoft.web.impl.team;

public class TeamQueryServlet extends TeamControllerSupport {

	@Override
	public String execute() throws Exception {
		this.getPage();
		return "team";
	}

}
