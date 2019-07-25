package com.neusoft.web.impl.judge;

import com.neusoft.web.impl.controllersupport.Ac05ControllerSupport;

public class JudgeExportExcelServlet extends Ac05ControllerSupport {

    public String execute() throws Exception
    {
        this.update("query2Excel1", "ÐÞ¸Ä");
        return "player";
    }
}
