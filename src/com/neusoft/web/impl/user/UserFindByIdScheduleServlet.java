package com.neusoft.web.impl.user;

import com.neusoft.web.impl.controllersupport.Af02ControllerSupport;

public class UserFindByIdScheduleServlet extends Af02ControllerSupport {

    public String execute() throws Exception
    {
        System.out.println("单一实例查询");
        this.savePageInstance();
        return "querySchedule";
    }
}
