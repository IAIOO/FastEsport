package com.neusoft.web.impl.judge;

import com.neusoft.web.impl.controllersupport.Ad03ControllerSupport;

public class JudgeRegisterServlet extends Ad03ControllerSupport 
{

	@Override
	public String execute() throws Exception {
		this.savePageInstance();//�ж��û����Ƿ��Ѵ���
		if(this.getAttribute().containsKey("ins")) {
			this.saveAttribute("error", "���û����ѱ�ע��");
			return "judgeRegister";
		}
		this.update("addEmp", "ע��");//�½��û�
		return "judgeLogin";
	}
}

