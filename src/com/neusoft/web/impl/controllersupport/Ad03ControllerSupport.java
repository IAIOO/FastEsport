package com.neusoft.web.impl.controllersupport;

import com.neusoft.services.impl.Ad03ServicesImpl;
import com.neusoft.web.support.ControllerSupport;

public abstract class Ad03ControllerSupport extends ControllerSupport {

	public Ad03ControllerSupport() {
		this.setServices(new Ad03ServicesImpl());
	}

}
