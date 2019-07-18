package com.neusoft.web.impl.controllersupport;

import com.neusoft.services.impl.Ad02ServicesImpl;
import com.neusoft.web.support.ControllerSupport;

public abstract class Ad02ControllerSupport extends ControllerSupport {

	public Ad02ControllerSupport() {
		this.setServices(new Ad02ServicesImpl());
	}

}
