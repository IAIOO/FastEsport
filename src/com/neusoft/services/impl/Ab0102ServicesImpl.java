package com.neusoft.services.impl;

import java.util.Map;

import com.neusoft.services.JdbcServicesSupport;

public class Ab0102ServicesImpl extends JdbcServicesSupport {
	
	  public Map<String,String> findById()throws Exception
	  {
		  StringBuilder sql=new StringBuilder()
				  .append("select a.aab102,a.aab105,a.aab106")
				  .append(" from  ab01 a")
				  .append(" where a.aab101=?")
				  ;
	      return this.queryForMap(sql.toString(), this.get("aab101"));
	  }	

}
