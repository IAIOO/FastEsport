package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Ab04ControllerSupport;

public class FindByIdGambleServlet extends Ab04ControllerSupport {

    public String execute() throws Exception
    {
        System.out.println("��һʵ����ѯ");
        this.savePageInstance();
        return "queryGamble";
    }
}
