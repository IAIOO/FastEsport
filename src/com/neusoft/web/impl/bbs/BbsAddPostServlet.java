package com.neusoft.web.impl.bbs;

import com.neusoft.web.impl.controllersupport.Ab02ControllerSupport;

public class BbsAddPostServlet extends Ab02ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.retPost("addPost");
		return "retsuccess";
	}

}
