package com.neusoft.web.impl.controllersupport;

import com.neusoft.services.impl.Ag01ServicesImpl;
import com.neusoft.web.support.ControllerSupport;

public abstract class Ag01ControllerSupport extends ControllerSupport {

	public Ag01ControllerSupport() {
		this.setServices(new Ag01ServicesImpl());
	}

}
