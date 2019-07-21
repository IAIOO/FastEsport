package com.neusoft.web.impl.shop;

import com.neusoft.web.impl.controllersupport.Ad02ControllerSupport;

public class ShopGoodsaddServlet extends Ad02ControllerSupport
{

	@Override
	public String execute() throws Exception 
	{
		this.update("goodsadd", "Ìí¼Ó");
		return "goodsadd";
	}
}
