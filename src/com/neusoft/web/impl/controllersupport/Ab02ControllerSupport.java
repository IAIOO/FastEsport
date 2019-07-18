package com.neusoft.web.impl.controllersupport;

import com.neusoft.services.impl.Ab02ServicesImpl;
import com.neusoft.web.support.ControllerSupport;

public abstract class Ab02ControllerSupport extends ControllerSupport {
	public Ab02ControllerSupport() {
		this.setServices(new Ab02ServicesImpl());
	}
}
