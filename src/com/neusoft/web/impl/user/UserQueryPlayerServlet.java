package com.neusoft.web.impl.user;

import com.neusoft.web.impl.controllersupport.Ac05ControllerSupport;

public class UserQueryPlayerServlet extends Ac05ControllerSupport {
    public String execute() throws Exception
    {
        //System.out.println("�����ѯ");
        this.savePageData();
        return "player";
    }
}
