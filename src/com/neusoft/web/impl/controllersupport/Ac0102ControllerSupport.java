package com.neusoft.web.impl.controllersupport;

import com.neusoft.services.impl.Ac0102ServicesImpl;
import com.neusoft.web.support.ControllerSupport;

public abstract class Ac0102ControllerSupport extends ControllerSupport {

	public Ac0102ControllerSupport() 
	{
		this.setServices(new Ac0102ServicesImpl());
	}

}
