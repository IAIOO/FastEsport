package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Ad03ControllerSupport;

public class Ad03DelEmpServlet extends Ad03ControllerSupport
{

	@Override
	public String execute() throws Exception 
	{
		this.update("deleteById", "ɾ��");
		//this.savePageDataForDelete();
		//this.savePageData();
		return "login";
	}

}
