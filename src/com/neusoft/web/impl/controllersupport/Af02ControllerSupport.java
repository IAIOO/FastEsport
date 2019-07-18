package com.neusoft.web.impl.controllersupport;

import com.neusoft.services.impl.Af02ServicesImpl;
import com.neusoft.web.support.ControllerSupport;

public abstract class Af02ControllerSupport extends ControllerSupport {

	public Af02ControllerSupport() {
		this.setServices(new Af02ServicesImpl());
	}

}
