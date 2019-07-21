package com.neusoft.services.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.neusoft.services.JdbcServicesSupport;
import com.neusoft.system.tools.Tools;

public class Ac0302ServicesImpl extends JdbcServicesSupport {
	
	  public Map<String,String> findById()throws Exception
	  {
		  StringBuilder sql=new StringBuilder()
				  .append("select aac101")
				  .append(" from  ac01")
				  .append(" where aab101=?")				  				  
				  ;
		  //session aab101
	      return this.queryForMap(sql.toString(), 1);
	  }

	  public List<Map<String,String>> query()throws Exception
	  {
	  		//还原页面查询条件
	  		Object aac303=this.get("qaac303");     //招募进度
	  		Object aac307=this.get("qaac307");     //结束日期 范围查询
	  		Object aac101=this.get("qaac101");

	  				
	  		//定义SQL主体
	  		StringBuilder sql=new StringBuilder()
	  				.append("select b.aac301,b.aac302,b.aac303,b.aac307")
	  				.append("  from ac01 a,ac03 b")
	  				.append("  where a.aab101=1")
	  				.append("  and a.aac101=b.aac101")//session 获得
	  				;
	  		
	  		//参数列表
	  		List<Object> paramList=new ArrayList<>();
	  		//逐一判断查询条件是否录入,拼接AND条件
	  		if(this.isNotNull(aac307))
	  		{
	  			sql.append(" and b.aac307 <= ?");
	  			paramList.add(aac307);
	  		}
	  		if(this.isNotNull(aac303))
	  		{
		  		if(aac303.equals("0"))
		  		{
		  			sql.append(" and b.aac303 = ?");
		  			paramList.add(aac303);
		  		} 
		  		else
		  		{
		  			sql.append(" and b.aac303 > ?");
		  			paramList.add(0);
		  		} 
	  		}
	  		sql.append(" order by b.aac301");	
	  		return this.queryForList(sql.toString(), paramList.toArray());
	  }
}
