package com.neusoft.web.impl.team;

import com.neusoft.web.impl.controllersupport.Ac01ControllerSupport;

public class TeamCheckTeamServlet extends Ac01ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("updateCheck","Í¨¹ý");
		return "checkMakeTeam";
	}

}
