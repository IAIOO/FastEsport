package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Ac02ControllerSupport;

public class UserProIdServlet extends Ac02ControllerSupport {

	@Override
	public String execute() throws Exception {
		update("updateProId", "�ύ��֤����");
		return "userProId";
	}

}
