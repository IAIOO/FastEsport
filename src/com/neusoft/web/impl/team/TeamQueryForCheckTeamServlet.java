package com.neusoft.web.impl.team;

import com.neusoft.web.impl.controllersupport.Ac01ControllerSupport;

public class TeamQueryForCheckTeamServlet extends Ac01ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.savePageData();
		return "checkMakeTeam";
	}

}
