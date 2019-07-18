package com.neusoft.services.impl;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.neusoft.services.JdbcServicesSupport;
import com.neusoft.system.tools.Tools;

public class Ad01ServicesImpl extends JdbcServicesSupport 
{
	/**
	 * 用户登录时查询该用户密码
	 */
	public Map<String,String> findById()throws Exception{
		String sql = "select aad103 from ad01 where aad102 = ?";
		Object aad102 = this.get("aad102");
		return this.queryForMap(sql, aad102);
	}
	
	}
