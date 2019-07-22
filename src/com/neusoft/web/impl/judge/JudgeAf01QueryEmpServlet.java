package com.neusoft.web.impl.judge;

import com.neusoft.web.impl.controllersupport.Af01ControllerSupport;
public final class JudgeAf01QueryEmpServlet extends Af01ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.queryT();
		return "af01QueryEmp";
	}

}
