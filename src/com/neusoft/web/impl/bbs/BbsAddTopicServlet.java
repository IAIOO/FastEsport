package com.neusoft.web.impl.bbs;

public class BbsAddTopicServlet extends BbsControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("addTopic", "����");
		return "bbs";
	}

}
