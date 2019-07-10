package com.neusoft.web.impl.user;

public class UserAddServlet extends UserControllerSupport {
	@Override
	public String execute() throws Exception {
//		this.verify();//判断验证码
//		if(this.getAttribute().get("msg").equals("验证码错误")) {
//			this.saveAttribute("error", this.getAttribute().get("msg"));
//			return "register";
//		}
		this.savePageInstance();//判断用户名是否已存在
		if(this.getAttribute().containsKey("ins")) {
			this.saveAttribute("error", "该用户名已被注册");
			return "register";
		}
		this.update("addUser", "注册");//新建用户
		return "login";
	}
}
