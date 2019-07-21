package com.neusoft.services.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.neusoft.services.JdbcServicesSupport;

public class Ab02ServicesImpl extends JdbcServicesSupport {
	
	/**
	 * 添加回帖
	 * @return
	 * @throws Exception
	 */
	public boolean addPost()throws Exception {
		Date aab205 = new Date();
		StringBuilder sql = new StringBuilder()
				.append("insert into ab02(aab101,aab203,aab204,aab205)")
				.append("     values (?,?,?,?)")
				;
		Object args[] = {
			this.get("aab101"),
			this.get("aab203"),
			this.get("aab204"),
			aab205
		};
		return this.executeUpdate(sql.toString(), args) > 0;
	}
	
	/**
	 * 添加主贴
	 * @return
	 * @throws Exception
	 */
	public boolean addTopic()throws Exception {
		Date aab205 = new Date();
		
		StringBuilder sql = new StringBuilder()
				.append("insert into ab02(aab101,aab202,aab203,aab204,aab205)")
				.append("     values (?,?,?,?,?)")
				;
		Object args[]= {
				this.get("aab101"),
				this.get("aab202"),
				this.get("aab203"),
				0,
				aab205
		};
		
		return this.executeUpdate(sql.toString(), args) > 0;
	}

	/**
	 * 查询某一主贴及其所有回帖
	 */
	@Override
	public List<Map<String, String>> query()throws Exception{
		Object aab201 = this.get("aab201");
		
		StringBuilder sql = new StringBuilder()
				.append("select a.aab102,b.aab202,b.aab203,date_format(b.aab205,'%Y-%m-%d %H:%i:%S') as aab205")
				.append("  from ab01 a,ab02 b")
				.append(" where b.aab101=a.aab101")
				.append("   and b.aab201=?")
				;
				
		List<Map<String, String>> result = new ArrayList<Map<String,String>>();
		result.add(queryForMap(sql.toString(), aab201));
		
		StringBuilder sql2 = new StringBuilder()
				.append("select a.aab102,b.aab202,b.aab203,date_format(b.aab205,'%Y-%m-%d %H:%i:%S') as aab205")
				.append("  from ab01 a,ab02 b")
				.append(" where a.aab101=b.aab101")
				.append("   and b.aab204=?")
				;
		List<Map<String, String>> temp = this.queryForList(sql2.toString(), aab201);
		if(temp.size() != 0) {
			for(int i = 0;i < temp.size();i++) {
				result.add(temp.get(i));
			}
		}
		return result;
	}
	
	/**
	 * 分页查询
	 */
	@Override
	public List<Map<String, String>> queryForPage()throws Exception{
		Object aab202=this.get("aab202");     //帖子标题  模糊查询
 		Object first=this.get("first");
 		Object end=this.get("end");
 		
 		StringBuilder sql = new StringBuilder()
 				 .append("  select b.aab201,b.aab202,date_format(b.aab205,'%Y-%m-%d %H:%i:%S') as aab205,a.aab102")
 				 .append("    from ab01 a,ab02 b")
 				 .append("   where b.aab101=a.aab101")
 				 .append("     and b.aab202 is not null")
 				 ;
 		
 		List<Object> paramList = new ArrayList<>();
 		
 		if(this.isNotNull(aab202)) {
 			sql.append(" and b.aab202 like ?");
 			paramList.add("%" + aab202 + "%");
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
		Object aab202=this.get("aab202");     //帖子标题  模糊查询
 		
		StringBuilder sql = new StringBuilder().append("select * from ab02 where aab202 is not null");
		
		List<Object> paramList = new ArrayList<>();
 		
 		if(this.isNotNull(aab202)) {
 			sql.append(" and aab202 like ?");
 			paramList.add("%" + aab202 + "%");
 		}
 		
		if(paramList.size() == 0) {
			return this.queryForList(sql.toString(), null).size();
		}
		return this.queryForList(sql.toString(),paramList.toArray()).size();
	}
}
