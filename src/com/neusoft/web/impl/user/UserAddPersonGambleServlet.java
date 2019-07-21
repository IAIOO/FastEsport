package com.neusoft.web.impl.user;

import com.neusoft.web.impl.controllersupport.Ab05ControllerSupport;

public class UserAddPersonGambleServlet extends Ab05ControllerSupport {


    public String execute() throws Exception
    {
        this.update("addPersonGamble", "添加", "添加成功,该比赛编号是:", "1");
        //System.out.println("返回queryGame");
        return "queryGamble";
    }
}
