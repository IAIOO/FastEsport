package com.neusoft.web.impl.user;

import com.neusoft.web.impl.controllersupport.Ab04ControllerSupport;

public class UserFindByIdGambleServlet extends Ab04ControllerSupport {

    public String execute() throws Exception
    {
        System.out.println("单一实例查询");
        this.savePageInstance();
        return "queryGamble";
    }
}
