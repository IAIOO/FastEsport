package com.neusoft.web.impl.shop;

import com.neusoft.web.impl.controllersupport.Ad02ControllerSupport;

public class ShopbuyServlet extends Ad02ControllerSupport
{
	@Override
	public String execute() throws Exception
	{
		this.update("shopbuy", "����");
		this.update("coindelete", "���ҿ۳�");
	    this.retMoney();
		return "usershop";
	}
}
