package com.neusoft.web.impl.team;

import com.neusoft.web.impl.controllersupport.Ac03ControllerSupport;

public class TeamFindByIdEnlistServlet extends Ac03ControllerSupport {
	@Override
	public String execute() throws Exception {
		this.savePageInstance();
		return "enlistTeam";
	}

}
