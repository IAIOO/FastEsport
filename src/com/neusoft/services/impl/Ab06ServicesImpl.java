package com.neusoft.services.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.neusoft.services.JdbcServicesSupport;
import com.neusoft.system.tools.Tools;

public class Ab06ServicesImpl extends JdbcServicesSupport
{
	private boolean deleteById()throws Exception
    {
    	String sql="delete from ab06 where aab601=?";
    	return this.executeUpdate(sql, this.get("aab601"))>0;
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
	  				.append("select a.aab601,a.aab101a,a.aab101b,a.aab603,b.aab101")
	  				.append("  from ab06 a,ab01 b ")
	  				.append(" where a.aab101b=b.aab101")
	  		        .append(" order by a.aab601");
	  		
	  	return this.queryForList(sql.toString());
	  }
}
