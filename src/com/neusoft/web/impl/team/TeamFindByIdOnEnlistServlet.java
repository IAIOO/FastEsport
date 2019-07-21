package com.neusoft.web.impl.team;

import com.neusoft.web.impl.controllersupport.Ac04ControllerSupport;

public class TeamFindByIdOnEnlistServlet extends Ac04ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.savePageInstance();
		return "ac04AddEmp";
	}

}
