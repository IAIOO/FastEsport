package com.neusoft.web.impl.shop;

import com.neusoft.web.impl.controllersupport.Ad02ControllerSupport;

public class ShopbuyServlet extends Ad02ControllerSupport
{
	@Override
	public String execute() throws Exception
	{
		this.update("shopbuy", "¹ºÂò");
		this.update("coindelete", "´ú±Ò¿Û³ý");
	    this.retMoney();
		return "usershop";
	}
}
