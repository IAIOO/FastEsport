package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Ac03ControllerSupport;

public class QueryForTeamServlet extends Ac03ControllerSupport
{
	@Override
	public String execute() throws Exception {
		this.savePageData();
		return "queryForTeam";
	}

}
