package com.neusoft.web.impl.judge;

import com.neusoft.web.impl.controllersupport.Af02ControllerSupport;

public class JudgeImportExcelServlet extends Af02ControllerSupport {
    public String execute() throws Exception
    {
        this.update("excelInsertInto", "添加", "添加成功,该比赛编号是:", "1");
        return "af01QueryEmp";
    }
}
