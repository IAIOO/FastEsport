package com.neusoft.web.impl.competition;

import com.neusoft.web.impl.controllersupport.Af01ControllerSupport;

public class CompetitionQueryForUserServlet extends Af01ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.getPage();
		return "match";
	}

}
