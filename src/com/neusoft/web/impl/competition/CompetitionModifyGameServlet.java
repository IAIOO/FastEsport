package com.neusoft.web.impl.competition;

import com.neusoft.web.impl.controllersupport.Af01ControllerSupport;

public class CompetitionModifyGameServlet extends Af01ControllerSupport {

    public String execute() throws Exception
    {
        this.update("modifyGame", "ÐÞ¸Ä");
        return "addGame";
    }
}
