package com.neusoft.services.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.neusoft.services.JdbcServicesSupport;
import com.neusoft.system.tools.Tools;

public class Ac01ServicesImpl extends JdbcServicesSupport {
	
	public boolean modifyIdPic()throws Exception
	{    	
		String sql="update ac01 set aac109=? where aab101=?";
		return this.executeUpdate(sql, this.get("aac109"),this.get("aab101"))>0;
	}
	
	public boolean modifyTeamPic()throws Exception
	{    	
		String sql="update ac01 set aac115=? where aab101=?";
		return this.executeUpdate(sql, this.get("aac115"),this.get("aab101"))>0;
	}
     
	private boolean makeTeam()throws Exception 	  
    {
    	//获取当前日期
    	String aac110=Tools.getCurrentDate();
    	this.put("aac110", aac110);
    	StringBuilder sql=new StringBuilder()
		.append("insert into ac01(ac01.aab101,aac101,aac102,aac103,aac104,")
		.append("                 aac105,aac106,aac107,aac108,aac110,")
		.append("                 aac111,aac112,aac114)")		
		.append("          values(?,?,?,?,?,")
		.append("                 ?,?,?,?,?,")
		.append("                 ?,?,?)")
		;
    	String aac111="0";
    	Object aac102=this.get("aac102");
    	if(aac102!=null)
    	{
        	if(aac102.equals("1"))
        	{
        		aac111="1";
        	} 		
    	}
    	this.put("aac111",aac111);
    	this.put("aac102",aac102);
    	//2.编写参数数组
     	Object args[]={
     			2,//通过session获得this.get("aac101"),
    			this.get("aac101"),
    			aac102,
    			this.get("aac103"),
    			Tools.joinArray(this.get("aac104")),
    			Tools.ArrayToString(this.get("aac105")),
    			this.get("aac106"),
    			Tools.joinArray(this.get("aac107")),
    			this.get("aac108"),
    			aac110,
    			aac111,
    			this.get("aac112"),
    			this.get("aac114")
    	};
        return this.executeUpdate(sql.toString(), args)>0;	
    }	 
  
	public Map<String, String> findById() throws Exception
   {
	  StringBuilder sql = new StringBuilder()
	  .append("select a.aac101,a.aac102,a.aac103,a.aac104,a.aac105,")
	  .append("       a.aac106,a.aac107,a.aac108,a.aac110,a.aac111,")
	  .append("       a.aac112")
	  .append(" from  ac01 a ")
	  .append(" where aab101= ? ")
	  ;
      return this.queryForMap(sql.toString(), this.get("aab101"));
   } 
	
	/**
	 * 用户查看战队列表
	 */
	@Override
	public List<Map<String,String>> queryForPage()throws Exception{
  		Object aac103=this.get("aac103");     //战队名称  模糊查询
 		Object aac104=this.get("aac104");     //战队类型
 		Object first=this.get("first");
 		Object end=this.get("end");
 		
 		StringBuilder sql = new StringBuilder()
 				 .append("select aac103,aac104,aac106,aac107")
 				 .append("  from ac01")
 				 .append(" where 1=1")
 				 ;
 		
 		List<Object> paramList = new ArrayList<>();
 		
 		if(this.isNotNull(aac103)) {
 			sql.append(" and aac103 like ?");
 			paramList.add("%" + aac103 + "%");
 		}
 		if(this.isNotNull(aac104)) {
 			sql.append(" and aac104=?");
 			paramList.add(aac104);
 		}
 		sql.append(" limit ?,?");
 		paramList.add(first);
 		paramList.add(end);
 		return this.queryForList(sql.toString(), paramList.toArray());
	}
	
	/**
	  * 查询符合条件的数据总数
	 */
	@Override
	public int queryCount()throws Exception {
		Object aac103=this.get("aac103");     //战队名称  模糊查询
 		Object aac104=this.get("aac104");     //战队类型
 		StringBuilder sql = new StringBuilder().append("select * from ac01 where 1=1");
		List<Object> paramList = new ArrayList<>();

		if (this.isNotNull(aac103)) {
			sql.append(" and aac103 like ?");
			paramList.add("%" + aac103 + "%");
		}
		if (this.isNotNull(aac104)) {
			sql.append(" and aac104=?");
			paramList.add(aac104);
		}
		
		if(paramList.size() == 0) {
			return this.queryForList(sql.toString(), null).size();
		}
		return this.queryForList(sql.toString(),paramList.toArray()).size();
	}
	
}
