package com.neusoft.web.impl.competition;

import com.neusoft.web.impl.controllersupport.Af01ControllerSupport;

public class CompetitionQueryGameServlet extends Af01ControllerSupport {

    public String execute() throws Exception
    {
        //System.out.println("µã»÷²éÑ¯");
        this.savePageData();
        return "queryGame";
    }
}