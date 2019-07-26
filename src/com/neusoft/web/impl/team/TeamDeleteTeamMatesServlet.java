package com.neusoft.web.impl.team;

import com.neusoft.web.impl.controllersupport.Ac04ControllerSupport;

public class TeamDeleteTeamMatesServlet extends Ac04ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("deleteTeamMates", "É¾³ý");
		return "ac04AddEmp";
	}

}
