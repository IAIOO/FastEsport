package com.neusoft.services.impl;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.neusoft.services.JdbcServicesSupport;
import com.neusoft.system.tools.Tools;

public class Ad01ServicesImpl extends JdbcServicesSupport 
{
	/**
	 * �û���¼ʱ��ѯ���û�����
	 */
	public Map<String,String> findById()throws Exception{
		String sql = "select aad103 from ad01 where aad102 = ?";
		Object aad102 = this.get("aad102");
		return this.queryForMap(sql, aad102);
	}
	
	}
