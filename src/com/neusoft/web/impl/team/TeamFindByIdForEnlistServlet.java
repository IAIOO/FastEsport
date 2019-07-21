package com.neusoft.web.impl.team;

import com.neusoft.web.impl.controllersupport.Ab0102ControllerSupport;

public class TeamFindByIdForEnlistServlet extends Ab0102ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.savePageInstance();
		return "ac04AddEmp";
	}

}
