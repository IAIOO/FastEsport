package com.neusoft.web.impl.bbs;

import com.neusoft.services.impl.Ab02ServicesImpl;
import com.neusoft.web.support.ControllerSupport;

public abstract class BbsControllerSupport extends ControllerSupport {
	public BbsControllerSupport() {
		this.setServices(new Ab02ServicesImpl());
	}
}
