package com.neusoft.web.impl.player;

import com.neusoft.web.impl.controllersupport.Ac05ControllerSupport;

public class PlayerAc05AddServlet extends Ac05ControllerSupport 
{

	@Override
	public String execute() throws Exception 
	{
	//	this.savePageInstance();
		
	//	this.update("findById", "");
		this.update("addEmp", "Ìí¼Ó");
		return "game";
	}

}
