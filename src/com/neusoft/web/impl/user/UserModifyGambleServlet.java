package com.neusoft.web.impl.user;

import com.neusoft.web.impl.controllersupport.Ab04ControllerSupport;

public class UserModifyGambleServlet extends Ab04ControllerSupport {

    public String execute() throws Exception
    {
        this.update("modifyGamble", "ÐÞ¸Ä");
        return "queryGamble";
    }
}
