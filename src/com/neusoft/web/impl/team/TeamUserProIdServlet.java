package com.neusoft.web.impl.team;

import com.neusoft.web.impl.controllersupport.Ac02ControllerSupport;

public class TeamUserProIdServlet extends Ac02ControllerSupport {

	@Override
	public String execute() throws Exception {
		update("updateProId", "�ύ��֤����");
		return "inCheck";
	}

}
