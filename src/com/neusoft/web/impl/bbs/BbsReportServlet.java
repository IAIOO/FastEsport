package com.neusoft.web.impl.bbs;

import com.neusoft.web.impl.controllersupport.Ab06ControllerSupport;

public class BbsReportServlet extends Ab06ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.retReport("addReport");
		return "reportsuccess";
	}

}
