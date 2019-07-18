package com.neusoft.web.impl.controllersupport;

import com.neusoft.services.impl.Ac04ServicesImpl;
import com.neusoft.web.support.ControllerSupport;

public abstract class Ac04ControllerSupport extends ControllerSupport {

	public Ac04ControllerSupport() {
		this.setServices(new Ac04ServicesImpl());
	}

}
