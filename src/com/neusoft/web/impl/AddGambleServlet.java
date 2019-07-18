package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Ab04ControllerSupport;

public class AddGambleServlet extends Ab04ControllerSupport {

    public String execute() throws Exception
    {
        this.update("addGamble", "添加", "添加成功,该比赛编号是:", "1");
        return "addGamble";
    }
}
