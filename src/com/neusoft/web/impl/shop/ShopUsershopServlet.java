package com.neusoft.web.impl.shop;

import com.neusoft.web.impl.controllersupport.Ad02ControllerSupport;

public class ShopUsershopServlet extends Ad02ControllerSupport
{
	@Override
	public String execute() throws Exception 
	{
		this.savePageData();
		this.retMoney();
		return "usershop";
	}
}