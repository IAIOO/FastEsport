package com.neusoft.web.impl.admin;
import com.neusoft.web.impl.controllersupport.Ac02ControllerSupport;

public class AdminDelprocheckServlet extends Ac02ControllerSupport
{
	@Override
	public String execute() throws Exception 
	{
		this.update("delprocheck", "É¾³ý");
		this.savePageDataForDelete();
		//this.savePageData();
		return "procheck";
	}
}
