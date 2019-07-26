package com.neusoft.services.impl;

import java.util.List;
import java.util.Map;

import com.neusoft.services.JdbcServicesSupport;


public class Ac02ServicesImpl extends JdbcServicesSupport {

	public boolean updateProId()throws Exception 	  
    {
		//aab101应该由session获得
    	StringBuilder sql=new StringBuilder()
		.append("insert into ac02(aab101,aac202,aac203,aac204,aac205,")
		.append("                 aac206,aac207,aac208)")
		.append("          values(?,?,?,?,?,")
		.append("                 ?,?,?)")
		;
    	//2.编写参数数组
     	Object args[]={
     			this.get("aab101"),
     			this.get("aac202"),
    			this.get("aac203"),
    			this.get("aac204"),
    			this.get("aac205"),
    			this.get("aac206"),
    			this.get("aac207"),
    			this.get("aac208")
    	};
        return this.executeUpdate(sql.toString(), args)>0;	
    }	  
	
	public Map<String,String> findById()throws Exception
	{
		StringBuilder sql =  new StringBuilder()
				.append(" select aab102,aab103,aab105,aab106")
				.append(" from ab01")
				.append(" where aab101 = ?")
				; 
		return this.queryForMap(sql.toString(),this.get("aab101"));
	}
	private boolean addprocheck()throws Exception
    {
    	String sql="update ab01 set aab108=1 where aab101=?";
    	return this.executeUpdate(sql, this.get("aab101"))>0;
    }
	private boolean delprocheck()throws Exception
    {
    	String sql="delete from ac02 where aac201=?";
    	return this.executeUpdate(sql, this.get("aac201"))>0;
    }
	 public List<Map<String,String>> query()throws Exception
	  {
	  		//还原页面查询条件
	  		
	  		//定义SQL主体
	  		StringBuilder sql=new StringBuilder()
	  				.append("select a.aac201,a.aab101,a.aac202,a.aac203,a.aac204,a.aac205,")
	  				.append("a.aac206,a.aac207,a.aac208,b.aab101,b.aab108")
	  				.append("  from ac02 a,ab01 b ")
	  				.append(" where a.aab101=b.aab101")
	  				.append(" and b.aab108=0")
	  		        .append(" order by a.aab101");
	  		
	  	return this.queryForList(sql.toString());
	  }

}
