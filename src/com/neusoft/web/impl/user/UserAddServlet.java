package com.neusoft.web.impl.user;

public class UserAddServlet extends UserControllerSupport {
	@Override
	public String execute() throws Exception {
//		this.verify();//�ж���֤��
//		if(this.getAttribute().get("msg").equals("��֤�����")) {
//			this.saveAttribute("error", this.getAttribute().get("msg"));
//			return "register";
//		}
		this.savePageInstance();//�ж��û����Ƿ��Ѵ���
		if(this.getAttribute().containsKey("ins")) {
			this.saveAttribute("error", "���û����ѱ�ע��");
			return "register";
		}
		this.update("addUser", "ע��");//�½��û�
		return "login";
	}
}
