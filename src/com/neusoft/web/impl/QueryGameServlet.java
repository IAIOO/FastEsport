package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Af01ControllerSupport;

public class QueryGameServlet extends Af01ControllerSupport {

    public String execute() throws Exception
    {
        //System.out.println("�����ѯ");
        this.savePageData();
        return "queryGame";
    }
}
