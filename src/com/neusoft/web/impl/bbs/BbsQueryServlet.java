package com.neusoft.web.impl.bbs;

public class BbsQueryServlet extends BbsControllerSupport {

	@Override
	public String execute() throws Exception {
		this.getPage();
		return "bbs";
	}

}
