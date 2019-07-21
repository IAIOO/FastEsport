package com.neusoft.web.impl.team;

import com.neusoft.web.impl.controllersupport.Ac04ControllerSupport;

public class TeamQueryForOnEnlistServlet extends Ac04ControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.savePageData();
		return "queryForOnEnlist";
	}

}
