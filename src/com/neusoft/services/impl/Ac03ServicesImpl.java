package com.neusoft.services.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.neusoft.services.JdbcServicesSupport;
import com.neusoft.system.tools.Tools;

public class Ac03ServicesImpl extends JdbcServicesSupport
{
	private boolean enlistTeam()throws Exception 	  
    {
    	StringBuilder sql=new StringBuilder()
		.append("insert into ac03(aac101,aac301,aac302,aac303,aac304,")
		.append("                 aac305,aac306,aac307,aac308,aac309,")
		.append("                 aac310)")
		.append("            values(?,?,?,?,?,")
		.append("                   ?,?,?,?,?,")
		.append("                   ?)")
		;
    	//2.编写参数数组
   	Object args[]={
   				this.get("aac101"),
    			this.get("aac301"),
    			this.get("aac302"),
    			this.get("aac303"),
    			Tools.joinArray(this.get("aac304")),
    			this.get("aac305"),
    			this.get("aac306"),
    			this.get("aac307"),
    			this.get("aac308"),
    			this.get("aac309"),
    			this.get("aac310")
    			};
        return this.executeUpdate(sql.toString(), args)>0;	
    }

  public List<Map<String,String>> query()throws Exception
  {
  		//还原页面查询条件
  		Object aac103=this.get("qaac103");     //战队名称 模糊查询
  		Object aac305=this.get("qaac305");     //薪资范围 模糊查询
  		Object aac310=this.get("qaac310");     //薪资范围 模糊查询
  		Object aac111=this.get("qaac111");     //职业/非职业战队
  		Object aac307=this.get("eaac307");     //结束日期 范围查询
  		Object aac104=Tools.joinArray(this.get("qaac104"));//地区查询  模糊查询
  		Object aac304=this.get("qaac304"); //游戏类型 模糊查询
  				
  		//定义SQL主体
  		StringBuilder sql=new StringBuilder()
  				.append("select y.aac301,x.aac103,y.aac303,y.aac305,")
  				.append("       y.aac310,x.aac111,y.aac307,x.aac104")
  				.append("  from ac01 x,ac03 y")
  				.append("   where x.aac101 = y.aac101")
  				;
  		
  		//参数列表
  		List<Object> paramList=new ArrayList<>();
  		//逐一判断查询条件是否录入,拼接AND条件
  		if(this.isNotNull(aac103))
  		{
  			sql.append(" and x.aac103 like ?");
  			paramList.add("%"+aac103+"%");
  		}
  		if(this.isNotNull(aac305))
  		{
  			sql.append(" and y.aac305>=?");
  			paramList.add(aac305);
  		}
  		if(this.isNotNull(aac310))
  		{
  			sql.append(" and y.aac310<=?");
  			paramList.add(aac310);
  		}
  		if(this.isNotNull(aac111))
  		{
  			sql.append(" and x.aac111=?");
  			paramList.add(aac111);
  		}
  		if(this.isNotNull(aac307))
  		{
  			sql.append(" and y.aac307<=?");
  			paramList.add(aac307);
  		}
  		if(this.isNotNull(aac104))
  		{
  			sql.append(" and x.aac104 like ?");
  			paramList.add("%"+aac104+"%");
  		}
  		if(aac304 instanceof java.lang.String[])
  		{
			String arr[]=(String[])(this.get("qaac304"));
			int len=arr.length;
			if(len>0)
			{
				for(int i=0;i<len;i++)
				{
					sql.append(" and y.aac304 like ?");
					paramList.add("%"+arr[i]+"%");
				}		 	
			} 	
  		}	
  		else if(aac304!=null)
  		{
			sql.append(" and y.aac304 like ?");
			paramList.add("%"+aac304+"%");
  		}
  		sql.append(" order by y.aac301");	
  		return this.queryForList(sql.toString(), paramList.toArray());
  }
  
  public Map<String,String> findById()throws Exception
  {
	  StringBuilder sql=new StringBuilder()
			  .append("select a.aac103,b.aac301,b.aac302,b.aac303,b.aac304,")
			  .append("       b.aac305,b.aac306,b.aac307,b.aac308,b.aac310")
			  .append(" from  ac01 a,ac03 b")
			  .append(" where a.aac101=b.aac101")
			  .append(" and   b.aac301=?")
			  ;
      return this.queryForMap(sql.toString(), this.get("aac301"));
  }
  
public boolean updateEnlist()throws Exception
{
	StringBuilder sql1=new StringBuilder()
			.append("update  ac03")
			.append("   set  aac303=aac303-1")
			.append(" where  aac301=?")
			.append("  and   aac303>=1 ")
			;
	StringBuilder sql2=new StringBuilder()
			.append(" update ac04")
			.append("   set  aac409=1")
			.append(" where  aac401=?")
			;
	this.executeUpdate(sql1.toString(),this.get("aac301"));
	return this.executeUpdate(sql2.toString(),this.get("aac401"))>0;	
}
	
	 /**
	  * 
	  * @return
	  * @throws Exception
	  */
	 private boolean addprocheck()throws Exception
	    {
	    	String sql="update ac02 set aac107=1 where aac101=?";
	    	return this.executeUpdate(sql, this.get("aac101"))>0;
	    }
	   /**
      * 批量查询
      * @return
      * @throws Exception
      */
	  public List<Map<String,String>> queryTwo()throws Exception
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
	 


