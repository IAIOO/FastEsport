package com.neusoft.web.impl.team;

import com.neusoft.web.impl.controllersupport.Ac01ControllerSupport;

public class TeamQueryForUserServlet extends Ac01ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.getPage();
		return "team";
	}

}
