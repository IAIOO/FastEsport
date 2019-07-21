package com.neusoft.web.impl.admin;

import com.neusoft.web.impl.controllersupport.Ab06ControllerSupport;

public class AdminUserdeleteServlet extends Ab06ControllerSupport {
	@Override
	public String execute() throws Exception 
	{
		this.update("deleteById", "É¾³ý");
		this.savePageDataForDelete();
		//this.savePageData();
		return "userdelete";
	}
}

