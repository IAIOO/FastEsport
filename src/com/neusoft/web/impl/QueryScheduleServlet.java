package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Af02ControllerSupport;

public class QueryScheduleServlet extends Af02ControllerSupport {

    public String execute() throws Exception
    {
        System.out.println("�����ѯ");
        this.savePageData();
        return "querySchedule";
    }
}
