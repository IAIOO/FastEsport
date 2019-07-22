package com.neusoft.services.impl;


import com.neusoft.services.JdbcServicesSupport;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class Af01ServicesImpl extends JdbcServicesSupport {



    public boolean update(String utype) throws Exception{
        if(utype.equalsIgnoreCase("addGame")){
            return this.addGame();
        }else if (utype.equalsIgnoreCase("modifyGame")){
            return this.modifyGame();
        }
        else if (utype.equalsIgnoreCase("modifyEmp")){
            return this.modifyEmp();
        }
        else {
            throw new Exception("在类[ Af01ServicesImpl ]中进行了未定义的动作调用,动作名称是"  +utype);
        }
    }
    //创建赛事，将赛事信息存入数据表af01

    public boolean addGame() throws Exception{
        StringBuilder sql=new StringBuilder()
                .append("insert into af01(aab101,aaf102,aaf103,aaf104,")
                .append("                 aaf105,aaf107,aaf108,aaf109,")
                .append("                 aaf110,aaf111,aaf112,aaf113)")
                .append("           values(?,?,?,?,")
                .append("                  ?,?,?,?,")
                .append("                  ?,?,?,?)")
                ;
        Object args[]={
                //this.get("aaf101"),
                //this.get("aab101"),
                //获取当前用户的主键值
                1,
                this.get("aaf102"),
                this.get("aaf103"),
                //this.get("aaf104"),赛事编号
                132,
                this.get("aaf105"),
                this.get("aaf107"),
                this.get("aaf108"),
                //this.get("aaf109"),
                "1",
                this.get("aaf110"),
                this.get("aaf111"),
                this.get("aaf112"),
                this.get("aaf113"),


        };
        return this.executeUpdate(sql.toString(),args)>0;
    }


    int pkAab101=1;//当前用户的主键值

    //查询赛事
    public List<Map<String,String>> query()throws Exception{

        StringBuilder sql=new StringBuilder()
                .append("select  a.aaf101,a.aaf102,a.aaf103,a.aaf104,a.aaf105,")
                .append("        a.aaf107,a.aaf108,a.aaf109,a.aaf110,a.aaf111,")
                .append("        a.aaf112,a.aaf113")
                .append("  from  af01 a")
                .append("  where aab101 = ")
                .append(         pkAab101)//当前用户主键值TODO
                ;
        return this.queryForList(sql.toString());
    }


    //修改赛事，将赛事信息修改
    private boolean modifyGame() throws Exception{
        StringBuilder sql=new StringBuilder()
                .append("update af01 a")
                .append("   set a.aaf102=?,a.aaf103=?,a.aaf105=?,")
                .append("       a.aaf107=?,a.aaf108=?,a.aaf110=?,a.aaf111=?,")
                .append("       a.aaf112=?,a.aaf113=?")
                .append(" where a.aaf101=?")
                ;
        System.out.println("aaf101的值为"+this.get("aaf101"));
        Object args[]= {
                this.get("aaf102"),
                this.get("aaf103"),
                //this.get("aaf104"),
                this.get("aaf105"),
                this.get("aaf107"),
                this.get("aaf108"),
                //this.get("aaf109"),
                this.get("aaf110"),
                this.get("aaf111"),
                this.get("aaf112"),
                this.get("aaf113"),
                //this.get("aaf114")
                this.get("aaf101")
        };
        return this.executeUpdate(sql.toString(),args)>0;

    }
    
    
    //裁判修改赛事状态
    private boolean modifyEmp()throws Exception
    {
    	StringBuilder sql=new StringBuilder()

    			.append("update af01 a")
    			.append("   set a.aaf109=?")
    			.append(" where a.aaf101=?")
    			;

    	
    	Object args[]={
    			
    			this.get("aaf109"),
    			this.get("aaf101")

    	};
    	System.out.println(this.get("aaf109"));
    	System.out.println(this.get("aaf101"));
    	return this.executeUpdate(sql.toString(), args)>0;
    	
    }
    
    
    
    
    //单一实例查询
    public Map<String,String> findById()throws Exception{
        //1.编写SQL语句
        StringBuilder sql=new StringBuilder()
                .append("select a.aaf102,a.aaf103,a.aaf104,a.aaf105,")
                .append("       a.aaf107,a.aaf108,a.aaf109,a.aaf110,a.aaf111,")
                .append("       a.aaf112,a.aaf113")
                .append("  from af01 a")
                .append(" where a.aaf101=?")
                ;
        System.out.println(this.get("aaf101"));
        //执行查询
        return this.queryForMap(sql.toString(), this.get("aaf101"));
    }
    
    /**
	  * 
	  * @return
	  * @throws Exception
	  */
	 private boolean addracecheck()throws Exception
	    {
	    	String sql="update af01 set aaf109=1 where aaf101=?";
	    	return this.executeUpdate(sql, this.get("aaf101"))>0;
	    }

	/**
	 * 不定条件查询
	 * @return
	 * @throws Exception
	 */
	  public List<Map<String,String>> queryTwo()throws Exception
	  {
	  		//还原页面查询条件
	  		
	  		//定义SQL主体
	  		StringBuilder sql=new StringBuilder()
	  				.append("select aaf101,aaf102,aaf103,aaf104,aaf105,aaf108,")
	  				.append("       aaf109,aaf110,aaf111,aaf112")
	  				.append("  from af01 ")
	  				;
	  		return this.queryForList(sql.toString());
	  }
	  
	  
	  public List<Map<String,String>> queryT()throws Exception
	  {
	  		//还原页面查询条件
	  		
	  		//定义SQL主体
	  		StringBuilder sql=new StringBuilder()
	  				.append("select aaf101,aaf102,aaf103,aaf104,aaf105,aaf108,")
	  				.append("       aaf109,aaf110,aaf111,aaf112")
	  				.append("  from af01 ")
	  				;
	  		return this.queryForList(sql.toString());
	  }
	  /**
		 * 用户查看赛事列表
		 */
		@Override
		public List<Map<String,String>> queryForPage()throws Exception{
			Object aaf102=this.get("aaf102");	  //赛事类型
			Object aaf103=this.get("aaf103");     //赛事名称  模糊查询
	 		Object aaf104=this.get("aaf104");     //赛事编号
	 		Object aaf109=this.get("aaf109");	  //赛事状态
	 		Object first=this.get("first");
	 		Object end=this.get("end");
	 		
	 		StringBuilder sql = new StringBuilder()
	 				 .append("select aaf102,aaf103,aaf107,aaf109,")
	 				 .append("	     aaf110")
	 				 .append("  from af01")
	 				 .append(" where 1=1")
	 				 ;
	 		
			List<Object> paramList = new ArrayList<>();
	
			if (this.isNotNull(aaf102)) {
				sql.append(" and aaf102=?");
				paramList.add(aaf102);
			}
			if (this.isNotNull(aaf103)) {
				sql.append(" and aaf103 like ?");
				paramList.add("%" + aaf103 + "%");
			}
			if (this.isNotNull(aaf104)) {
				sql.append(" and aaf104=?");
				paramList.add(aaf104);
			}
			if (this.isNotNull(aaf109)) {
				sql.append(" and aaf109=?");
				paramList.add(aaf109);
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
			Object aaf102=this.get("aaf102");	  //赛事类型
			Object aaf103=this.get("aaf103");     //赛事名称  模糊查询
	 		Object aaf104=this.get("aaf104");     //赛事编号
	 		Object aaf109=this.get("aaf109");	  //赛事状态
	 		StringBuilder sql = new StringBuilder().append("select * from af01 where 1=1");
			List<Object> paramList = new ArrayList<>();
	
			if (this.isNotNull(aaf102)) {
				sql.append(" and aaf102=?");
				paramList.add(aaf102);
			}
			if (this.isNotNull(aaf103)) {
				sql.append(" and aaf103 like ?");
				paramList.add("%" + aaf103 + "%");
			}
			if (this.isNotNull(aaf104)) {
				sql.append(" and aaf104=?");
				paramList.add(aaf104);
			}
			if (this.isNotNull(aaf109)) {
				sql.append(" and aaf109=?");
				paramList.add(aaf109);
			}
			
			if(paramList.size() == 0) {
				return this.queryForList(sql.toString(), null).size();
			}
			return this.queryForList(sql.toString(),paramList.toArray()).size();
		}
}
