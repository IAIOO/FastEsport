package com.neusoft.web.impl.user;

import com.neusoft.web.impl.controllersupport.Ab01ControllerSupport;

public class UserAddServlet extends Ab01ControllerSupport {
	@Override
	public String execute() throws Exception {
		this.savePageInstance();//�ж��û����Ƿ��Ѵ���
		if(this.getAttribute().containsKey("ins")) {
			this.saveAttribute("error", "���û����ѱ�ע��");
			return "register";
		}
		this.update("addUser", "ע��");//�½��û�
		return "login";
	}
}
