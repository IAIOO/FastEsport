package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Ac01ControllerSupport;

public class MyTeamServlet extends Ac01ControllerSupport {

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		this.savePageInstance();
		return "makeTeam";
	}

}
