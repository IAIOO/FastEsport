package com.neusoft.web.impl;

import com.neusoft.web.impl.controllersupport.Ac05ControllerSupport;

public class AddScheduleServlet extends Ac05ControllerSupport {

    public String execute() throws Exception
    {
        this.update("addSchedule", "���", "��ӳɹ�,�ñ��������:", "1");
        return "test";
    }
}
