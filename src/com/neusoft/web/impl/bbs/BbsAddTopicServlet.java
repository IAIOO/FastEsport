package com.neusoft.web.impl.bbs;

import com.neusoft.web.impl.controllersupport.Ab02ControllerSupport;

public class BbsAddTopicServlet extends Ab02ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("addTopic", "·¢±í");
		return "bbs";
	}

}
