package com.neusoft.web.impl.user;

import com.neusoft.web.impl.controllersupport.Af02ControllerSupport;

public class UserQueryScheduleServlet extends Af02ControllerSupport {

    public String execute() throws Exception
    {
        System.out.println("�����ѯ");
        this.savePageData();
        return "querySchedule";
    }
}
