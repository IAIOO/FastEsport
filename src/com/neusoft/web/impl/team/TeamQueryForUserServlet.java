package com.neusoft.web.impl.team;

public class TeamQueryForUserServlet extends TeamControllerSupport {

	@Override
	public String execute() throws Exception {
		this.getPage();
		return "team";
	}

}
