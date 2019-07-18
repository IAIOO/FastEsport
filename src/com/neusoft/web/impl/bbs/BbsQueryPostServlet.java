package com.neusoft.web.impl.bbs;

public class BbsQueryPostServlet extends BbsControllerSupport {

	@Override
	public String execute() throws Exception {
		this.savePageData();
		return "postinfo";
	}

}
