package com.neusoft.web.impl.user;

import com.neusoft.web.impl.controllersupport.Ab05ControllerSupport;

public class UserAddPersonGambleServlet extends Ab05ControllerSupport {


    public String execute() throws Exception
    {
        this.update("addPersonGamble", "���", "��ӳɹ�,�ñ��������:", "1");
        //System.out.println("����queryGame");
        return "queryGamble";
    }
}
