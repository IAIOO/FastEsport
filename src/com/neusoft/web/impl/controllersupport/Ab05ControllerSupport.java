package com.neusoft.web.impl.controllersupport;

import com.neusoft.services.impl.Ab05ServicesImpl;
import com.neusoft.web.support.ControllerSupport;

public abstract class Ab05ControllerSupport extends ControllerSupport {

	public Ab05ControllerSupport() {
		this.setServices(new Ab05ServicesImpl());
	}

}
