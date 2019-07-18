package com.neusoft.web.impl.controllersupport;

import com.neusoft.services.impl.Ac05ServicesImpl;
import com.neusoft.web.support.ControllerSupport;

public abstract class Ac05ControllerSupport extends ControllerSupport {

	public Ac05ControllerSupport() {
		this.setServices(new Ac05ServicesImpl());
	}

}
