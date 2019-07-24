package com.neusoft.web.impl.judge;

import com.neusoft.web.impl.controllersupport.Ad03ControllerSupport;

public final class JudgeQueryServlet extends Ad03ControllerSupport {


		@Override
		public String execute() throws Exception 
		{
			
			this.savePageInstance();
			return "judgeQuery";
		}
}


