package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Ac03ControllerSupport;

public class EnlistTeamServlet extends Ac03ControllerSupport {
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		this.update("enlistTeam","´´½¨ÕÐÄ¼±í");
		return "enlistTeam";
	}

}
