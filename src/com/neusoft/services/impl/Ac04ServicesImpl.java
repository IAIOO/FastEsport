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
			//��ԭҳ���ѯ����
			Object aac409=this.get("qaac409");     //���״̬
			Object aac301=this.get("aac301");     //����ս����ļ�� 
			//����SQL����
			StringBuilder sql=new StringBuilder()
					.append("select y.aac301, y.aac401,y.aac402,y.aac404,y.aac405,y.aac408")
					.append("  from ac03 x,ac04 y")
					.append("   where y.aac301 = x.aac301")
					;
			
			//�����б�
			List<Object> paramList=new ArrayList<>();
			//��һ�жϲ�ѯ�����Ƿ�¼��,ƴ��AND����
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
