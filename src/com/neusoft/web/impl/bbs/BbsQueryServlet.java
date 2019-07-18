package com.neusoft.web.impl.bbs;

import com.neusoft.web.impl.controllersupport.Ab02ControllerSupport;

public class BbsQueryServlet extends Ab02ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.getPage();
		return "bbs";
	}

}
