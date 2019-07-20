package com.neusoft.web.impl.judge;

import com.neusoft.web.impl.controllersupport.Ad03ControllerSupport;

public class JudgeRegisterServlet extends Ad03ControllerSupport 
{

	@Override
	public String execute() throws Exception {
		this.savePageInstance();//判断用户名是否已存在
		if(this.getAttribute().containsKey("ins")) {
			this.saveAttribute("error", "该用户名已被注册");
			return "judgeRegister";
		}
		this.update("addEmp", "注册");//新建用户
		return "judgeLogin";
	}
}

