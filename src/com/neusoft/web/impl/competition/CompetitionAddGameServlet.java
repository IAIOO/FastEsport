package com.neusoft.web.impl.competition;


import com.neusoft.web.impl.controllersupport.Af01ControllerSupport;

public class CompetitionAddGameServlet extends Af01ControllerSupport {

    public String execute() throws Exception
    {
        this.update("addGame", "���", "��ӳɹ�,�ñ��������:", "1");
        //System.out.println("����queryGame");
        return "addGame";
    }

}
