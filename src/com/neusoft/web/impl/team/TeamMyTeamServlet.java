package com.neusoft.web.impl.team;

import com.neusoft.web.impl.controllersupport.Ac01ControllerSupport;

public class TeamMyTeamServlet extends Ac01ControllerSupport {

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		this.savePageInstance();
		return "makeTeam";
	}

}
