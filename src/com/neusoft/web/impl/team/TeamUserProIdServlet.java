package com.neusoft.web.impl.team;

import com.neusoft.web.impl.controllersupport.Ac02ControllerSupport;

public class TeamUserProIdServlet extends Ac02ControllerSupport {

	@Override
	public String execute() throws Exception {
		update("updateProId", "提交认证申请");
		return "inCheck";
	}

}
