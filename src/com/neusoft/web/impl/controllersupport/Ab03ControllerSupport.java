package com.neusoft.web.impl.controllersupport;

import com.neusoft.services.impl.Ab03ServicesImpl;
import com.neusoft.web.support.ControllerSupport;

public abstract class Ab03ControllerSupport extends ControllerSupport {

	public Ab03ControllerSupport() {
		this.setServices(new Ab03ServicesImpl());
	}
}
