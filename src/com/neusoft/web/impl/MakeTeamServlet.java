package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Ac01ControllerSupport;

public class MakeTeamServlet extends Ac01ControllerSupport
{	
	@Override
	public String execute() throws Exception {	
		this.update("makeTeam", "�齨ս��");	;
		return "makeTeam";
	}
}
