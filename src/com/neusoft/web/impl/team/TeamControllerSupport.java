package com.neusoft.web.impl.team;

import com.neusoft.services.impl.Ac01ServicesImpl;
import com.neusoft.web.support.ControllerSupport;

public abstract class TeamControllerSupport extends ControllerSupport {

	public TeamControllerSupport() {
		this.setServices(new Ac01ServicesImpl());
	}

}
