package com.neusoft.services.impl;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.neusoft.services.JdbcServicesSupport;
import com.neusoft.system.tools.Tools;

public class Ad02ServicesImpl extends JdbcServicesSupport
{
	private boolean shopbuy()throws Exception
    {
    	String sql="update ad02 set aad204=aad204-1 where aad201=? ";
    	return this.executeUpdate(sql, this.get("aad201"))>0;
    }
	private boolean coindelete()throws Exception
    {
    	String sql="update ab01  set aab110=? where aab101=? ";
    	
    	int aab110=Integer.valueOf(this.get("aab110").toString());
    	int aad205=Integer.valueOf(this.get("aad205").toString());
    	Object args[]={
    			aab110-aad205,
    			this.get("aab101")};
    	return this.executeUpdate(sql.toString(), args)>0;
    }
	private boolean goodsdelete()throws Exception
    {
    	String sql="delete from ad02 where aad201=?";
    	return this.executeUpdate(sql, this.get("aad201"))>0;
    }
	/**
     * 批量查询
     * @return
     * @throws Exception
     */
	 public List<Map<String,String>> query()throws Exception
	  {
	  		//还原页面查询条件
	  		
	  		//定义SQL主体
	  		StringBuilder sql=new StringBuilder()
	  				.append("select aad201,aad202,aad203,aad204,aad205,aad206")
	  				.append("  from ad02")
	  		        .append(" order by aad202");
	  		
	  	return this.queryForList(sql.toString());
	  }
	  
	private boolean goodsadd()throws Exception
	{
    
    	//1.编写SQL语句
    	StringBuilder sql=new StringBuilder()
    			.append("insert into ad02(aad202,aad203,aad204,aad205,aad206)")
    			.append("          values(?,?,?,?,?)")
    			;
    	//2.编写参数数组
    	Object args[]={
    			this.get("aad202"),
    			this.get("aad203"),
    			this.get("aad204"),
    			this.get("aad205"),
    			this.get("aad206")
    	};
        return this.executeUpdate(sql.toString(), args)>0;	
    }
	
	
}
