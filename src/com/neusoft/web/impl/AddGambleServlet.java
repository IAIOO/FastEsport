package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Ab04ControllerSupport;

public class AddGambleServlet extends Ab04ControllerSupport {

    public String execute() throws Exception
    {
        this.update("addGamble", "���", "��ӳɹ�,�ñ��������:", "1");
        return "addGamble";
    }
}
