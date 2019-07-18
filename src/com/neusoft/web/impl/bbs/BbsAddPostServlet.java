package com.neusoft.web.impl.bbs;

public class BbsAddPostServlet extends BbsControllerSupport {

	@Override
	public String execute() throws Exception {
		this.retPost("addPost");
		return "retsuccess";
	}

}
