package com.neusoft.services.impl;

import java.util.List;
import java.util.Map;

import com.neusoft.services.JdbcServicesSupport;
import com.neusoft.system.tools.Tools;

public class Ab05ServicesImpl extends JdbcServicesSupport {
	int pkAab101=1;//aab101
    /**
     * TODO
     * �õ��û������к�aab101
     */
    //�û����뾺��
    public boolean addPersonGamble() throws Exception{

        modifyAb04Gamble();
        StringBuilder sql=new StringBuilder()
                .append("insert into ab05(aab401,aab101,aab502,aab503)")
                .append("           values(?,?,?,?)")
                ;


        Object args[]={

                //
                this.get("aab401"),
                //�û����к�
                this.get("aab101"),
                this.get("aab502"),
                this.get("aab503")
        };

        return this.executeUpdate(sql.toString(),args)>0;
    }

    /**
     * aab401 �������к�
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
        Double A=Double.valueOf(this.get("aab403").toString());//AͶע����
        Double B=Double.valueOf(this.get("aab404").toString());//BͶע����
        Double use=Double.valueOf(this.get("aab503").toString());//�û�Ͷע�Ĵ�������
        Double now=selectAb01Aab110();//�û���ǰ���еĴ�������
        //�û�ͶעС���û�ӵ�еĴ�������ʱ
        if(use<=now){
            //���û��Ĵ�����������
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
     * ���û��Ĵ�������Ͷ�����Ƚ�
     */

    //�õ��û���ǰ�Ĵ�������
    public Double selectAb01Aab110()throws Exception{
        StringBuilder sql=new StringBuilder()
                .append("select    a.aab110")
                .append("     from ab01 a")
                .append("    where a.aab101 = ")
                .append( this.get("aab101"))
                ;
        List<Map<String,String>> num=this.queryForList(sql.toString());
        //�û���ǰ�Ĵ�������
        System.out.println(num.get(0).get("aab110"));
        return Double.valueOf(num.get(0).get("aab110"));
    }

    //�����û��Ĵ�������---Ͷע֮��
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
