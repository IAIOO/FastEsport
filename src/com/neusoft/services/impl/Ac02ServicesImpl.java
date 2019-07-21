package com.neusoft.services.impl;

import java.util.List;
import java.util.Map;

import com.neusoft.services.JdbcServicesSupport;

public class Ac02ServicesImpl extends JdbcServicesSupport {

	public boolean uploadProIdPic()throws Exception
	{    	
		String sql="update ac02 set aac202=? where aab101=?";
		return this.executeUpdate(sql, this.get("aac202"),this.get("aab101"))>0;
	}
	
	public boolean uploadUserIdPic()throws Exception
	{    	
		String sql="update ac02 set aac208=? where aab101=?";
		return this.executeUpdate(sql, this.get("aac208"),this.get("aab101"))>0;
	}
	
	public boolean updateProId()throws Exception 	  
    {
		//aab101应该由session获得
    	StringBuilder sql=new StringBuilder()
		.append("insert into ac02(aab101,aac203,aac204,aac205,aac206,aac207)")
		.append("          values(?,?,?,?,?,?)")

		;
    	//2.编写参数数组
     	Object args[]={
     			1,
    			this.get("aac203"),
    			this.get("aac204"),
    			this.get("aac205"),
    			this.get("aac206"),
    			this.get("aac207"),
    	};
        return this.executeUpdate(sql.toString(), args)>0;	
    }	 
	
	 public List<Map<String,String>> query()throws Exception
	  {
	  		//还原页面查询条件
	  		
	  		//定义SQL主体
	  		StringBuilder sql=new StringBuilder()
	  				.append("select a.aac201,a.aab101,a.aac202,a.aac203,a.aac205,a.aac206,")
	  				.append("a.aac207,a.aac208,b.aab101,b.aab108")
	  				.append("  from ac02 a,ab01 b ")
	  				.append(" where a.aab101=b.aab101")
	  				.append(" and b.aab108=0")
	  		        .append(" order by a.aab101");
	  		
	  	return this.queryForList(sql.toString());
	  }

}
