package com.neusoft.web.impl.team;

import com.neusoft.web.impl.controllersupport.Ac01ControllerSupport;

public class TeamMakeTeamServlet extends Ac01ControllerSupport
{	
	@Override
	public String execute() throws Exception {	
		this.update("makeTeam", "组建战队");	
		return "inCheck";
	}
}
