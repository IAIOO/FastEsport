package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Af01ControllerSupport;

public class ModifyGameServlet extends Af01ControllerSupport {

    public String execute() throws Exception
    {
        this.update("modifyGame", "ÐÞ¸Ä");
        return "addGame";
    }
}
