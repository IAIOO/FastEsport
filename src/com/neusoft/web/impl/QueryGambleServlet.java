package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Ab04ControllerSupport;

public class QueryGambleServlet extends Ab04ControllerSupport {

    public String execute() throws Exception
    {
        System.out.println("�����ѯ");
        this.savePageData();
        return "queryGamble";
    }
}
