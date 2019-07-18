package com.neusoft.services.impl;

import com.neusoft.services.JdbcServicesSupport;
import com.neusoft.system.tools.Tools;

import java.util.Collections;
import java.util.List;
import java.util.Map;

public class Ac05ServicesImpl extends JdbcServicesSupport {

    public boolean update(String utype) throws Exception{
        if(utype.equalsIgnoreCase("addSchedule")){
            return this.addSchedule();
        }
        else {
            throw new Exception("在类[ Af02ServicesImpl ]中进行了未定义的动作调用,动作名称是"  +utype);
        }
    }
    static int gameId=11;//aaf101
    static String gameDate="2019-07-11";
    /**
     *1.
     * 首先根据比赛的id从报名表ac05中查出所有相应比赛的所有报名的人员
     */
    public List<Map<String,String>> query() throws Exception {

        System.out.println("调用aaf101" + this.get("aaf101"));

        StringBuilder sql = new StringBuilder()
                .append("select   a.aac501,a.aac502,a.aab101")
                .append("    from ac05 a")
                .append("   where a.aaf101 = ")
                .append(this.get("aaf101"));

        return this.queryForList(sql.toString());
    }
    public void query2Excel() throws Exception{
        List<Map<String,String>> ac05Rows=this.query();
    }


//    public boolean addPlayer() throws Exception{
//
//    }


    public boolean addSchedule() throws Exception{
        StringBuilder sql=new StringBuilder()
                .append("insert into af02(aaf101,aaf204,aaf202,aaf203)")
                .append("           values(?,?,?,?)")
                ;
        String [] idRows=Tools.getRows(this.query(),"2");

        Object args[] = {
                12,
                gameDate
        };

        return this.batchInsert_game(sql.toString(),args,idRows);

    }
}
