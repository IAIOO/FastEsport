package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Ac05ControllerSupport;

public class QueryPlayerServlet extends Ac05ControllerSupport {
    public String execute() throws Exception
    {
        //System.out.println("�����ѯ");
        this.savePageData();
        return "player";
    }
}
