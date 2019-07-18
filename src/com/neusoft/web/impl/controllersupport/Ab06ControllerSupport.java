package com.neusoft.web.impl.controllersupport;

import com.neusoft.services.impl.Ab06ServicesImpl;
import com.neusoft.web.support.ControllerSupport;

public abstract class Ab06ControllerSupport extends ControllerSupport {

	public Ab06ControllerSupport() {
		this.setServices(new Ab06ServicesImpl());
	}

}
