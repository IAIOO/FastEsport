package com.neusoft.services.impl;

import java.util.Map;


import com.neusoft.services.JdbcServicesSupport;
import com.neusoft.system.tools.Tools;


public class Ad03ServicesImpl extends JdbcServicesSupport 
{
	
    private boolean deleteById()throws Exception
    {
    	String sql="delete from ad03 where aad305=?";
    //	return this.executeUpdate(sql, this.get("aad305"))>0;
    	return this.executeUpdate(sql,this.get("aad305"))>0;
    }
    
    private boolean modifyEmp()throws Exception
    {
    	StringBuilder sql=new StringBuilder()

    			.append("update ad01 a")
    			.append("   set a.aad102=?,a.aad103=?,a.aad104=?,a.aad105=?,a.aad106=?,")
    			.append("       a.aad107=?")
    			.append(" where a.aad101=?")
    			;

    	
    	Object args[]={
    			this.get("aad102"),
    			this.get("aad103"),
    			this.get("aad104"),
    			this.get("aad105"),
    			this.get("aad106"),
    			this.get("aad107"),
    	};
    	return this.executeUpdate(sql.toString(), args)>0;
    }
    
    private boolean addEmp()throws Exception
    {
    	//获取当前员工编号
    	String aad306=Tools.getUserNumber();
    	//向DTO添加员工编号
    	this.put("aad306", aad306);
    	
    	//1.编写SQL语句

    	StringBuilder sql=new StringBuilder()
    			.append("insert into ad03(aad302,aad303,aad304,aad305,aad306)")
    			
    			.append("          values(?,?,?,?,?)")
    			;
    	//2.编写参数数组

    	Object args[]={
    			this.get("aad302"),
    			this.get("aad303"),
    			this.get("aad304"),
    			this.get("aad305"),
    			this.get("aad306"),
    			
    	};
    	
    
    	
        return this.executeUpdate(sql.toString(), args)>0;	
    }
    
    
    
    
    public Map<String,String> findById()throws Exception
    {
    	//1.编写SQL语句
    	StringBuilder sql=new StringBuilder()

    			.append("select a.aad303,a.aad301")
    			.append("  from ad03 a")
    			.append(" where a.aad305=?")
    			;
    	//执行查询
    	return this.queryForMap(sql.toString(), this.get("aad305"));
    }
    
    
	  
}