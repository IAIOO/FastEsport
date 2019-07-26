package com.neusoft.services.impl;

import java.util.Map;

import com.neusoft.services.JdbcServicesSupport;

public class Ac0102ServicesImpl extends JdbcServicesSupport {

	
		public Map<String, String> findById() throws Exception
		   {
			  Object aac101=this.get("aac101");
			  StringBuilder sql = new StringBuilder()
			  .append("select a.aac101,a.aac102,a.aac103,a.aac104,a.aac105,")
			  .append("       a.aac106,a.aac107,a.aac108,a.aac109,a.aac110,")
			  .append("       a.aac111,a.aac112,a.aac114,a.aac115")
			  .append(" from  ac01 a,syscode b ")
			  .append(" where true ")
			  .append(" and a.aac111=b.fcode and b.fname='aac111'")
			  ;
			  sql.append(" and aac101 = ?");	
		      return this.queryForMap(sql.toString(), this.get("aac101"));
			  
		   } 
	
}
