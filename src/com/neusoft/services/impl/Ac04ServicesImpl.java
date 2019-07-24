package com.neusoft.services.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.neusoft.services.JdbcServicesSupport;

public class Ac04ServicesImpl extends JdbcServicesSupport {
	 public boolean addEmp()throws Exception
	    {
	    	
	    	StringBuilder sql=new StringBuilder()
	    			.append("insert into ac04(aac301,aac402,aac403,aac404,aac405,")
	    			.append("                 aac406,aac407,aac408,aac409)")
	    			.append("          values(?,?,?,?,?,")
	    			.append("                 ?,?,?,?)");
	    	
	    	Object args[]={
	    			this.get("aac301"),
	    			this.get("aac402"),
	    			this.get("aac403"),
	    			this.get("aac404"),
	    			this.get("aac405"),
	    			this.get("aac406"),
	    			this.get("aac407"),
	    			this.get("aac408"),
	    			this.get("aac409")
	    	};
	        return this.executeUpdate(sql.toString(), args)>0;	
	    }
	  
	  public Map<String,String> findById()throws Exception
	  {
		  StringBuilder sql=new StringBuilder()
				  .append("select a.aac401,a.aac301,a.aac402,a.aac403,a.aac404,a.aac405,")
				  .append("       a.aac406,a.aac407,a.aac408,aac409")
				  .append(" from  ac04 a")
				  .append(" where a.aac401=?")
				  ;
	      return this.queryForMap(sql.toString(), this.get("aac401"));
	  }	
	  
	  public List<Map<String,String>> query()throws Exception
	  {
			//还原页面查询条件
			Object aac409=this.get("qaac409");     //审核状态
			Object aac301=this.get("aac301");     //所属战队招募表 
			Object aac101=this.get("aac101");     //查看我的队友使用
			if(this.isNotNull(aac101))
			{
				StringBuilder sql=new StringBuilder()
						.append("select ac04.aac401,ac04.aac402,ac04.aac404,ac04.aac405,ac04.aac408")
						.append("  from (ac01 left join ac03 on ac01.aac101=ac03.aac101)left join ac04 on ac03.aac301=ac04.aac301")
						.append("  where ac01.aac101=?")
						.append("  and ac04.aac409=?")
						;	
				List<Object> paramList=new ArrayList<>();
				paramList.add(aac101);
				paramList.add(aac409);			
				return this.queryForList(sql.toString(), paramList.toArray()); 
				
			}
			else
			{
				//定义SQL主体
				StringBuilder sql=new StringBuilder()
						.append("select y.aac301, y.aac401,y.aac402,y.aac404,y.aac405,y.aac408")
						.append("  from ac03 x,ac04 y")
						.append("   where y.aac301 = x.aac301")
						;
				
				//参数列表
				List<Object> paramList=new ArrayList<>();
				//逐一判断查询条件是否录入,拼接AND条件
				if(this.isNotNull(aac409))
				{
					sql.append(" and y.aac409 = ?");
					paramList.add(aac409);
				}
				if(this.isNotNull(aac301))
				{
					sql.append(" and y.aac301 = ?");
					paramList.add(aac301);
				}
				return this.queryForList(sql.toString(), paramList.toArray()); 	
			}

			

	  }
}
