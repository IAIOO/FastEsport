package com.neusoft.web.impl.user;

import com.neusoft.web.impl.controllersupport.Ab01ControllerSupport;

public class UserAddServlet extends Ab01ControllerSupport {
	@Override
	public String execute() throws Exception {
		this.savePageInstance();//判断用户名是否已存在
		if(this.getAttribute().containsKey("ins")) {
			this.saveAttribute("error", "该用户名已存在");
			return "register";
		}
		this.update("addUser", "注册");//新建用户
		return "index";
	}
}
