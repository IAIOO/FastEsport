package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Af02ControllerSupport;

public class FindByIdScheduleServlet extends Af02ControllerSupport {

    public String execute() throws Exception
    {
        System.out.println("��һʵ����ѯ");
        this.savePageInstance();
        return "querySchedule";
    }
}
