package com.neusoft.services.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.neusoft.services.JdbcServicesSupport;
import com.neusoft.system.tools.Tools;

public class Ab06ServicesImpl extends JdbcServicesSupport
{
	
	public boolean addReport()throws Exception {
		StringBuilder sql = new StringBuilder()
				.append("insert into ab06(aab201,aab101a,aab101b,aab602,aab603)")
				.append("	 values (?,?,?,?,?)")
				;
		Object args[] = {
				this.get("aab201"),
				this.get("aab101a"),
				this.get("aab101b"),
				0,
				this.get("aab603")
		};
		return this.executeUpdate(sql.toString(), args) > 0;
	}
	
	private boolean postdelete()throws Exception
    {
		
    	String sql=" delete from ab01 where aab102=?";
    	
    	return this.executeUpdate(sql, this.get("aab102"))>0;
    }
	/**
     * 批量查询
     * @return
     * @throws Exception
     */
	  public List<Map<String,String>> query()throws Exception
	  {
	  		//还原页面查询条件
	  		
	  		//定义SQL主体
	  		StringBuilder sql=new StringBuilder()
	  				.append("select a.aab601,a.aab101b,a.aab603,b.aab101,b.aab102")
	  				.append("  from ab06 a,ab01 b ")
	  				.append(" where a.aab101b=b.aab101")
	  		        .append(" order by a.aab101b");
	  		
	  	return this.queryForList(sql.toString());
	  }
}
