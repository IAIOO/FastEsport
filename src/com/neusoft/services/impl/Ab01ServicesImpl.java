package com.neusoft.services.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.neusoft.services.JdbcServicesSupport;
import com.neusoft.system.tools.Tools;

public class Ab01ServicesImpl extends JdbcServicesSupport 
{
	
	/**
	 * 分页查询
	 */
	@Override
	public List<Map<String, String>> queryForPage()throws Exception{
		Object aab102=this.get("aab102");     //选手名  模糊查询
 		Object aab109=this.get("aab109");     //游戏类型
 		Object aab103=this.get("aab103");     //选手编号
 		Object first=this.get("first");
 		Object end=this.get("end");
 		
 		StringBuilder sql = new StringBuilder()
 				 .append("select b.aab102,b.aab107,b.aab109,c.aac103")
 				 .append("  from ab01 b,ac01 c")
 				 .append(" where b.aac101=c.aac101")
 				 .append("   and b.aab108='1'")
 				 ;
 		
 		List<Object> paramList = new ArrayList<>();
 		
 		if(this.isNotNull(aab102)) {
 			sql.append(" and b.aab102 like ?");
 			paramList.add("%" + aab102 + "%");
 		}
 		if(this.isNotNull(aab109)) {
 			sql.append(" and b.aab109=?");
 			paramList.add(aab109);
 		}
 		if(this.isNotNull(aab103)) {
 			sql.append(" and b.aab103=?");
 			paramList.add(aab103);
 		}
 		sql.append(" limit ?,?");
 		paramList.add(first);
 		paramList.add(end);
 		return this.queryForList(sql.toString(), paramList.toArray());
	}
	
	
	/**
	 * 查询符合条件的数据总数
	 * @return
	 * @throws Exception
	 */
	public int queryCount()throws Exception {
		Object aab102=this.get("aab102");     //选手名  模糊查询
 		Object aab109=this.get("aab109");     //游戏类型
 		Object aab103=this.get("aab103");     //选手编号
 		
		StringBuilder sql = new StringBuilder().append("select * from ab01 where aab108=1");
		
		List<Object> paramList = new ArrayList<>();
 		
 		if(this.isNotNull(aab102)) {
 			sql.append(" and aab102 like ?");
 			paramList.add("%" + aab102 + "%");
 		}
 		if(this.isNotNull(aab109)) {
 			sql.append(" and aab109=?");
 			paramList.add(aab109);
 		}
 		if(this.isNotNull(aab103)) {
 			sql.append(" and aab103=?");
 			paramList.add(aab103);
 		}
 		
		if(paramList.size() == 0) {
			return this.queryForList(sql.toString(), null).size();
		}
		return this.queryForList(sql.toString(),paramList.toArray()).size();
	}
	
	
	/**
	 * 用户登录时查询该用户密码,同时查询用户序列号
	 */
	public Map<String,String> findById()throws Exception{
		StringBuilder sql=new StringBuilder()
				.append("select c.aac101,c.aac114,b.aab101,b.aab104,b.aab110")
				.append("   from ac01 c,ab01 b")
				.append("  where c.aab101 = b.aab101")
				.append("   and b.aab102 = ?")
				;
		Map<String, String> teMap =  this.queryForMap(sql.toString(), this.get("aab102"));
		
		if (isNotNull(teMap))
		{
			return teMap;
		}
		else
		{
			StringBuilder sql_1=new StringBuilder()
					.append("select b.aab101,b.aab104,b.aab110")
					.append("   from ab01 b")
					.append("  where b.aab102 = ?")
					;
			return  this.queryForMap(sql_1.toString(), this.get("aab102"));
		}
	}
	
	/**
	 * 添加用户
	 * @return
	 * @throws Exception
	 */
	private boolean addUser()throws Exception {
		String aab103 = Tools.getUserNumber();
		this.put("aab103", aab103);
		StringBuilder sql = new StringBuilder()
				.append("insert into ab01(aab102,aab103,aab104,aab105,aab106,")
				.append("				  aab107,aab108,aab110)")
				.append("	  values (?,?,?,?,?,")
				.append("             ?,?,?)")
				;
		Object args[] = { this.get("aab102"),
						  aab103,
						  Tools.getMd5(this.get("aab104a")),
						  this.get("aab105"),
						  this.get("aab106"),
						  new java.util.Date(),
						  0,
						  0
						  };
		return this.executeUpdate(sql.toString(), args) > 0;
	
	}
	
	
	
	
	/**************************************************************
	 * 	                       以下为原框架代码
	 **************************************************************/

//    private boolean deleteById()throws Exception
//    {
//    	String sql="delete from ab01 where aab101=?";
//    	return this.executeUpdate(sql, this.get("aab101"))>0;
//    }
//    
//    private boolean modifyEmp()throws Exception
//    {
//    	StringBuilder sql=new StringBuilder()
//    			.append("update ab01 a")
//    			.append("   set a.aab102=?,a.aab104=?,a.aab105=?,a.aab106=?,a.aab107=?,")
//    			.append("       a.aab108=?,a.aab109=?,a.aab110=?,a.aab111=?,a.aab112=?,")
//    			.append("       a.aab113=?")
//    			.append(" where a.aab101=?")
//    			;
//    	Object args[]={
//    			this.get("aab102"),
//    			this.get("aab104"),
//    			this.get("aab105"),
//    			this.get("aab106"),
//    			this.get("aab107"),
//    			this.get("aab108"),
//    			this.get("aab109"),
//    			this.get("aab110"),
//    			Tools.joinArray(this.get("aab111")),
//    			Tools.joinArray(this.get("aab112")),
//    			this.get("aab113"),
//    			this.get("aab101")
//    	};
//    	return this.executeUpdate(sql.toString(), args)>0;
//    	
//    }
//    
//    private boolean addEmp()throws Exception
//    {
//    	//获取当前员工编号
//    	String aab103=Tools.getEmpNumber();
//    	//向DTO添加员工编号
//    	this.put("aab103", aab103);
//    	
//    	//1.编写SQL语句
//    	StringBuilder sql=new StringBuilder()
//    			.append("insert into ab01(aab102,aab103,aab104,aab105,aab106,")
//    			.append("                 aab107,aab108,aab109,aab110,aab111,")
//    			.append("                 aab112,aab113)")
//    			.append("          values(?,?,?,?,?,")
//    			.append("                 ?,?,?,?,?,")
//    			.append("                 ?,?)")
//    			;
//    	//2.编写参数数组
//    	Object args[]={
//    			this.get("aab102"),
//    			aab103,
//    			this.get("aab104"),
//    			this.get("aab105"),
//    			this.get("aab106"),
//    			this.get("aab107"),
//    			this.get("aab108"),
//    			this.get("aab109"),
//    			this.get("aab110"),
//    			Tools.joinArray(this.get("aab111")),
//    			Tools.joinArray(this.get("aab112")),
//    			this.get("aab113")
//    	};
//        return this.executeUpdate(sql.toString(), args)>0;	
//    }
//
//    private boolean batchDelete()throws Exception
//    {
//    	//1.定义SQL语句
//    	String sql="delete from ab01 where aab101=?";
//    	//2.获取页面idlist数组
//    	String idlist[]=this.getIdList("idlist");
//    	//3.执行
//    	return this.batchUpdate(sql, idlist);
//    }
//
//    
//    
//    public Map<String,String> findById()throws Exception
//    {
//    	//1.编写SQL语句
//    	StringBuilder sql=new StringBuilder()
//    			.append("select a.aab102,a.aab103,a.aab104,a.aab105,a.aab106,")
//    			.append("       a.aab107,a.aab108,a.aab109,a.aab110,a.aab111,")
//    			.append("       a.aab112,a.aab113")
//    			.append("  from ab01 a")
//    			.append(" where a.aab101=?")
//    			;
//    	//执行查询
//    	return this.queryForMap(sql.toString(), this.get("aab101"));
//    }
//    
//    
//      /**
//       * 不定条件查询
//       * @return
//       * @throws Exception
//       */
//	  public List<Map<String,String>> query()throws Exception
//	  {
//	  		//还原页面查询条件
//	  		Object aab102=this.get("qaab102");     //姓名  模糊查询
//	  		Object aab103=this.get("qaab103");     //编号
//	  		Object aab105=this.get("qaab105");     //性别
//	  		Object aab106=this.get("qaab106");     //民族
//	  		Object baab104=this.get("baab104");    //生日B
//	  		Object eaab104=this.get("eaab104");    //生日E
//	  		
//	  		//定义SQL主体
//	  		StringBuilder sql=new StringBuilder()
//	  				.append("select x.aab101,x.aab102,x.aab103,x.aab104,a.fvalue cnaab105,")
//	  				.append("       b.fvalue cnaab106,x.aab108,x.aab109")
//	  				.append("  from syscode a,syscode b, ab01 x")
//	  				.append(" where x.aab105=a.fcode and a.fname='aab105'")
//	  				.append("   and x.aab106=b.fcode and b.fname='aab106'") 
//	  				;
//	  		
//	  		//参数列表
//	  		List<Object> paramList=new ArrayList<>();
//	  		//逐一判断查询条件是否录入,拼接AND条件
//	  		if(this.isNotNull(aab102))
//	  		{
//	  			sql.append(" and x.aab102 like ?");
//	  			paramList.add("%"+aab102+"%");
//	  		}
//	  		if(this.isNotNull(aab103))
//	  		{
//	  			sql.append(" and x.aab103=?");
//	  			paramList.add(aab103);
//	  		}
//	  		if(this.isNotNull(aab105))
//	  		{
//	  			sql.append(" and x.aab105=?");
//	  			paramList.add(aab105);
//	  		}
//	  		if(this.isNotNull(aab106))
//	  		{
//	  			sql.append(" and x.aab106=?");
//	  			paramList.add(aab106);
//	  		}
//	  		if(this.isNotNull(baab104))
//	  		{
//	  			sql.append(" and x.aab104>=?");
//	  			paramList.add(baab104);
//	  		}
//	  		if(this.isNotNull(eaab104))
//	  		{
//	  			sql.append(" and x.aab104<=?");
//	  			paramList.add(eaab104);
//	  		}
//	  		
//	  		sql.append(" order by x.aab102");
//	  		return this.queryForList(sql.toString(), paramList.toArray());
//	  }
//    
    

	
}