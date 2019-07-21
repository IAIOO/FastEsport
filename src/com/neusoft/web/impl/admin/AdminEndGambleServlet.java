package com.neusoft.web.impl.admin;

import com.neusoft.web.impl.controllersupport.Ab04ControllerSupport;

public class AdminEndGambleServlet extends Ab04ControllerSupport {
    public String execute() throws Exception
    {
        this.update("endGamble", "ÐÞ¸Ä");
        return "queryGamble";
    }
}
