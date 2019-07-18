package com.neusoft.services.impl;

import com.neusoft.services.JdbcServicesSupport;

import java.util.List;
import java.util.Map;

import static com.neusoft.system.tools.Tools.calculate;

public class Ab04ServicesImpl extends JdbcServicesSupport {



    public boolean update(String utype) throws Exception{
        if(utype.equalsIgnoreCase("addGamble")){
            return this.addGamble();
        }else if(utype.equalsIgnoreCase("modifyGamble")){
            return this.modifyGamble();
        }
        else {
            throw new Exception("在类[ Af04ServicesImpl ]中进行了未定义的动作调用,动作名称是  \"+utype");
        }
    }

    
    int pkAaf201=1;//赛程表主键值
    public boolean addGamble() throws Exception{
        StringBuilder sql=new StringBuilder()
                .append("insert into ab04(aaf201,aab402,aab408,aab409,aab410)")
                .append("           values(?,?,?,?,?)")
                ;
        Object args[]={

                //
                pkAaf201,
                this.get("aab402"),
                this.get("aab408"),
                this.get("aab409"),
                0


        };
        return this.executeUpdate(sql.toString(),args)>0;
    }

    //查询竞猜
    public List<Map<String,String>> query()throws Exception{
        StringBuilder sql=new StringBuilder()
                .append("select  a.aab401,a.aab402,a.aab403,a.aab404,a.aab405,a.aab406,")
                .append("        a.aab407,a.aab408,a.aab409")
                .append("  from  ab04 a")
                .append("  where aaf201 = ")
                .append(         pkAaf201)
                .append("    and a.aab410 = 1")//当前赛程流水号
                ;
        return this.queryForList(sql.toString());
    }

    //修改赛事，将赛事信息修改
    private boolean modifyGamble() throws Exception{
        StringBuilder sql=new StringBuilder()
                .append("update ab04 a")
                .append("   set a.aab403=?,a.aab404=?,a.aab405=?,a.aab406=?")
                .append(" where a.aab401=?")
                ;

//        String aaf401=new String(this.get("aaf401").toString());
//        System.out.println("modifyGamble"+aaf401);
        Object args[]= {
                this.get("aab403"),
                this.get("aab404"),
                //this.get("aaf104"),
                calculate((String)this.get("aab403"),(String) this.get("aab404")),
                calculate((String)this.get("aab404"),(String) this.get("aab403")),
//                1.5,
//                3.0,
                this.get("aab401").toString()

        };
        //System.out.println("modifyGamble"+args);
        return this.executeUpdate(sql.toString(),args)>0;

    }
    
    //单一实例查询
    public Map<String,String> findById()throws Exception{
        //1.编写SQL语句
        StringBuilder sql=new StringBuilder()
                .append("select a.aab401,a.aab402,a.aab403,a.aab404,")
                .append("       a.aab405,a.aab406,a.aab407,a.aab408,a.aab409,")
                .append("       a.aab410")
                .append("  from ab04 a")
                .append(" where a.aab401=?")
                ;
        System.out.println("findByIdGamble  "+this.get("aaf101"));
        //执行查询
        return this.queryForMap(sql.toString(), this.get("aaf101"));
    }
    
	/**
	  * 
	  * @return
	  * @throws Exception
	  */
	 private boolean addquizcheck()throws Exception
	    {
	    	String sql="update ab04 set aab408=1 where aab401=?";
	    	return this.executeUpdate(sql, this.get("aab401"))>0;
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
	  				.append("select aab401,aab402,aab403,aab404,aab405,aab406,")
	  				.append("       aab408")
	  				.append("  from ab04 ")
	  				.append(" where aab408=0") 
	  		        .append(" order by aab402");
	  	return this.queryForList(sql.toString());
	  }
    
}


































