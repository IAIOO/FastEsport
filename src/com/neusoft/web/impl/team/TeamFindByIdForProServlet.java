package com.neusoft.web.impl.team;

import com.neusoft.web.impl.controllersupport.Ac02ControllerSupport;

public class TeamFindByIdForProServlet extends Ac02ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.savePageInstance();
		return "userProId";
	}

}
