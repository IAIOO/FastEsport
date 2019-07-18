package com.neusoft.web.impl.controllersupport;

import com.neusoft.services.impl.Ac01ServicesImpl;
import com.neusoft.web.support.ControllerSupport;

public abstract class Ac01ControllerSupport extends ControllerSupport {

	public Ac01ControllerSupport() {
		this.setServices(new Ac01ServicesImpl());
	}

}
