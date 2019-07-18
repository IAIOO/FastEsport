package com.neusoft.services.impl;

import com.neusoft.services.JdbcServicesSupport;
import com.neusoft.system.tools.Tools;

import java.util.Collections;
import java.util.List;
import java.util.Map;

public class Ac05ServicesImpl extends JdbcServicesSupport {

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
    
    
    private boolean deleteById()throws Exception
    {
    	String sql="delete from ab02 where aab201=?";
    	return this.executeUpdate(sql, this.get("aab201"))>0;
    }
    
    private boolean modifyEmp()throws Exception
    {
    	StringBuilder sql=new StringBuilder()

//    			;
    			.append("update af02 a")
    			.append("   set a.aaf205=?,a.aaf206=?")
    			.append(" where a.aaf201=?")
    			;

    	
    	Object args[]={
    			
    			this.get("aaf205"),
    			this.get("aaf206"),
    			this.get("aaf201"),

    	};
    	System.out.println(this.get("aaf205"));
    	System.out.println(this.get("aaf206"));
    	return this.executeUpdate(sql.toString(), args)>0;
    	
    }
    

    
    public boolean addEmp() throws Exception{
        StringBuilder sql=new StringBuilder()
                .append("insert into ac05(aab101，aaf101")
                .append("           values(?,?)")
                ;
        Object args[]={
                
                //获取当前用户的主键值
        		//4,
                //this.get("aab101"),
                this.get("aad301"),
                1,

               

        };
        return this.executeUpdate(sql.toString(),args)>0;
    }
    
    


   
    
    
    public Map<String,String> findById()throws Exception
    {
    	//1.编写SQL语句
    	StringBuilder sql=new StringBuilder()
    			.append("select a.aad301")
    			.append("  from ad03 a")
    			.append(" where a.aad305=?")
    			;
    	//执行查询
    	System.out.println(this.get("aad301"));
    	return this.queryForMap(sql.toString(), this.get("aad305"));
    }
    
}
