package com.neusoft.web.impl.controllersupport;

import com.neusoft.services.impl.Ac03ServicesImpl;
import com.neusoft.web.support.ControllerSupport;

public abstract class Ac03ControllerSupport extends ControllerSupport {
	public Ac03ControllerSupport() 
	{
		this.setServices(new Ac03ServicesImpl());
	}
}
