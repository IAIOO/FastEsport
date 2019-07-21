package com.neusoft.web.impl.controllersupport;

import com.neusoft.services.impl.Ac02ServicesImpl;
import com.neusoft.web.support.ControllerSupport;

public abstract class Ac02ControllerSupport extends ControllerSupport {
	public Ac02ControllerSupport() 
	{
		this.setServices(new Ac02ServicesImpl());
	}

}
