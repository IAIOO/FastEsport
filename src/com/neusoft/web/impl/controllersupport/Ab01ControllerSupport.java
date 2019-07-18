package com.neusoft.web.impl.controllersupport;

import com.neusoft.services.impl.Ab01ServicesImpl;
import com.neusoft.web.support.ControllerSupport;

public abstract class Ab01ControllerSupport extends ControllerSupport {
	public Ab01ControllerSupport() {
		this.setServices(new Ab01ServicesImpl());
	}
}
