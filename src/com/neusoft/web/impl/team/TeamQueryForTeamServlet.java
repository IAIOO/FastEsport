package com.neusoft.web.impl.team;

import com.neusoft.web.impl.controllersupport.Ac03ControllerSupport;

public class TeamQueryForTeamServlet extends Ac03ControllerSupport
{
	@Override
	public String execute() throws Exception {
		this.savePageData();
		return "queryForTeam";
	}

}
