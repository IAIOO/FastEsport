package com.neusoft.services.impl;

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
}
