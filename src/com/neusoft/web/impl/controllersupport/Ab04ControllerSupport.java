package com.neusoft.web.impl.controllersupport;

import com.neusoft.services.impl.Ab04ServicesImpl;
import com.neusoft.web.support.ControllerSupport;

public abstract class Ab04ControllerSupport extends ControllerSupport {

	public Ab04ControllerSupport() {
		this.setServices(new Ab04ServicesImpl());
	}
}
