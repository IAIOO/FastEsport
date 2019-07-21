package com.neusoft.web.impl.shop;

import com.neusoft.web.impl.controllersupport.Ad02ControllerSupport;

public class ShopGoodsdeleteServlet extends Ad02ControllerSupport
{
	@Override
	public String execute() throws Exception 
	{
		this.update("goodsdelete", "É¾³ý");
		this.savePageDataForDelete();
		//this.savePageData();
		return "goodssearch";
	}
}
