package com.neusoft.web.impl.team;

import com.neusoft.web.impl.controllersupport.Ac04ControllerSupport;

public class TeamAc04AddEmpServlet extends Ac04ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		update("addEmp","����");
		return "ac04AddEmp";
	}
}
