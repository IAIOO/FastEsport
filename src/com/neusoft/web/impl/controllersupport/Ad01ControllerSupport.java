package com.neusoft.web.impl.controllersupport;

import com.neusoft.services.impl.Ad01ServicesImpl;
import com.neusoft.web.support.ControllerSupport;

public abstract class Ad01ControllerSupport extends ControllerSupport {

	public Ad01ControllerSupport() {
		this.setServices(new Ad01ServicesImpl());
	}

}
