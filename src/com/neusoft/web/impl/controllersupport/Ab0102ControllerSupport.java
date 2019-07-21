package com.neusoft.web.impl.controllersupport;

import com.neusoft.services.impl.Ab0102ServicesImpl;
import com.neusoft.web.support.ControllerSupport;

public abstract class Ab0102ControllerSupport extends ControllerSupport {

	public Ab0102ControllerSupport() 
	{
		this.setServices(new Ab0102ServicesImpl());
	}

}
