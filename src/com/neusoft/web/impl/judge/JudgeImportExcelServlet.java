package com.neusoft.web.impl.judge;

import com.neusoft.web.impl.controllersupport.Af02ControllerSupport;

public class JudgeImportExcelServlet extends Af02ControllerSupport {
    public String execute() throws Exception
    {
        this.update("excelInsertInto", "���", "��ӳɹ�,�ñ��������:", "1");
        return "af01QueryEmp";
    }
}
