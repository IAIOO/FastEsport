package com.neusoft.services.impl;

import java.util.List;
import java.util.Map;

import com.neusoft.services.JdbcServicesSupport;
import com.neusoft.system.tools.Tools;

public class Ab05ServicesImpl extends JdbcServicesSupport {
	int pkAab101=1;//aab101
    /**
     * TODO
     * 得到用户的序列号aab101
     */
    //用户参与竞猜
    public boolean addPersonGamble() throws Exception{

        modifyAb04Gamble();
        StringBuilder sql=new StringBuilder()
                .append("insert into ab05(aab401,aab101,aab502,aab503)")
                .append("           values(?,?,?,?)")
                ;


        Object args[]={

                //
                this.get("aab401"),
                //用户序列号
                this.get("aab101"),
                this.get("aab502"),
                this.get("aab503")
        };

        return this.executeUpdate(sql.toString(),args)>0;
    }

    /**
     * aab401 竞猜序列号
     * aab
     * @return
     * @throws Exception
     */
    public boolean modifyAb04Gamble()throws Exception{
        StringBuilder sql=new StringBuilder()
                .append("update ab04 a")
                .append("   set a.aab403=?,a.aab404=?,a.aab405=?,a.aab406=?")
                .append(" where a.aab401=?")
                ;
        Double A=Double.valueOf(this.get("aab403").toString());//A投注总数
        Double B=Double.valueOf(this.get("aab404").toString());//B投注总数
        Double use=Double.valueOf(this.get("aab503").toString());//用户投注的代币数量
        Double now=selectAb01Aab110();//用户当前已有的代币数量
        //用户投注小于用户拥有的代币数量时
        if(use<=now){
            //将用户的代币数量减少
            updateAb01AAb110(now,use);
            if (this.get("aab502").toString().equals("A")) {
                A += use;
            } else {
                B += use;
            }

        }
        Object args[] = {
                A,
                B,
                Tools.calculate(A, B),
                Tools.calculate(B, A),
                this.get("aab401")
        };
        return this.executeUpdate(sql.toString(), args) > 0;

    }
    /**
     * 将用户的代币数与投币数比较
     */

    //得到用户当前的代币数量
    public Double selectAb01Aab110()throws Exception{
        StringBuilder sql=new StringBuilder()
                .append("select    a.aab110")
                .append("     from ab01 a")
                .append("    where a.aab101 = ")
                .append( this.get("aab101"))
                ;
        List<Map<String,String>> num=this.queryForList(sql.toString());
        //用户当前的代币数量
        System.out.println(num.get(0).get("aab110"));
        return Double.valueOf(num.get(0).get("aab110"));
    }

    //更新用户的代币数量---投注之后
    public boolean updateAb01AAb110(Double now,Double use)throws Exception{
        StringBuilder sql=new StringBuilder()
                .append("update   ab01 a")
                .append("     set a.aab110 = ?")
                .append("   where a.aab101 = ")
                .append(this.get("aab101"))
                ;
        Object args[] = {
                (int)(now-use)
        };
        return this.executeUpdate(sql.toString(),args)>0;
    }
}
