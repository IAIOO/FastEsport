package com.neusoft.web.impl.competition;

import com.neusoft.web.impl.controllersupport.Af01ControllerSupport;

public class CompetitionFindByIdGameServlet extends Af01ControllerSupport {
    public String execute() throws Exception
    {
        System.out.println("单一实例查询");
        this.savePageInstance();
//        return "addGame";
        return "game";
    }

}
