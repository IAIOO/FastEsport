package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Ac04ControllerSupport;

public class QueryForOnEnlistServlet extends Ac04ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.savePageData();
		return "queryForOnEnlist";
	}

}
