package com.neusoft.web.impl.controllersupport;

import com.neusoft.services.impl.Af01ServicesImpl;
import com.neusoft.web.support.ControllerSupport;

public abstract class Af01ControllerSupport extends ControllerSupport {

	public Af01ControllerSupport() {
		this.setServices(new Af01ServicesImpl());
	}
}
