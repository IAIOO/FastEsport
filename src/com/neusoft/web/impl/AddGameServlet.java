package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Af01ControllerSupport;

public class AddGameServlet extends Af01ControllerSupport {

    public String execute() throws Exception
    {
        this.update("addGame", "添加", "添加成功,该比赛编号是:", "1");
        //System.out.println("返回queryGame");
        return "addGame";
    }

}
