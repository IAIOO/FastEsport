package com.neusoft.web.impl.team;

import com.neusoft.web.impl.controllersupport.Ac0102ControllerSupport;

public class TeamFindMyTeamServlet extends Ac0102ControllerSupport {

	public String execute() throws Exception {
		this.savePageInstance();
		return "makeTeam";
	}

}
