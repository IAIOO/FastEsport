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
    	//��ȡ��ǰ����
    	String aac110=Tools.getCurrentDate();
    	this.put("aac110", aac110);
    	StringBuilder sql=new StringBuilder()
		.append("insert into ac01(aac101,aac102,aac103,aac104,aac105,")
		.append("                 aac106,aac107,aac108,aac110,aac111,")
		.append("                 aac112,aac113)")		
		.append("          values(?,?,?,?,?,")
		.append("                 ?,?,?,?,?,")
		.append("                 ?,?)")
		;
    	//2.��д��������
     	Object args[]={
    			this.get("aac101"),
    			this.get("aac102"),
    			this.get("aac103"),
    			Tools.joinArray(this.get("aac104")),
    			Tools.ArrayToString(this.get("aac105")),
    			this.get("aac106"),
    			Tools.joinArray(this.get("aac107")),
    			this.get("aac108"),
    			aac110,
    			this.get("aac111"),
    			this.get("aac112"),
    			this.get("aac113")
    	};

        return this.executeUpdate(sql.toString(), args)>0;	
    }	 
  
	public Map<String, String> findById() throws Exception
   {
	  String sql = "select * from ac01 a where a.aab101=?";
      return this.queryForMap(sql.toString(), this.get("aab101"));
   } 
	
	/**
	 * �û��鿴ս���б�
	 */
	@Override
	public List<Map<String,String>> queryForPage()throws Exception{
  		Object aac103=this.get("aac103");     //ս������  ģ����ѯ
 		Object aac104=this.get("aac104");     //ս������
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
	  * ��ѯ������������������
	 */
	@Override
	public int queryCount()throws Exception {
		Object aac103=this.get("aac103");     //ս������  ģ����ѯ
 		Object aac104=this.get("aac104");     //ս������
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
