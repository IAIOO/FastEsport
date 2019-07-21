package com.neusoft.web.impl.controllersupport;

import com.neusoft.services.impl.Ac0302ServicesImpl;
import com.neusoft.web.support.ControllerSupport;

public abstract class Ac0302ControllerSupport extends ControllerSupport {
	public Ac0302ControllerSupport() 
	{
		this.setServices(new Ac0302ServicesImpl());
	}

}
