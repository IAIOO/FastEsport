package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Ac03ControllerSupport;

public class UpdateEnlistServlet extends Ac03ControllerSupport {

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		this.update("updateEnlist", "ͨ��");
		return "ac04AddEmp";
	}

}
