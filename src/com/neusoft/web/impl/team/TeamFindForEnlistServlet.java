package com.neusoft.web.impl.team;

import com.neusoft.web.impl.controllersupport.Ac0302ControllerSupport;

public class TeamFindForEnlistServlet extends Ac0302ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.savePageInstance();
		return "enlistTeam";
	}

}
