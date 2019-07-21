package com.neusoft.services.impl;

import com.neusoft.services.JdbcServicesSupport;
import com.neusoft.system.tools.Tools;

import java.util.List;
import java.util.Map;

public class Ab04ServicesImpl extends JdbcServicesSupport {
    
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
    /**
     *结束竞猜
     *
     * 结束竞猜时首先从ab04表中query
     * get aab403 aab404
     * @return
     * @throws Exception
     */
    public boolean endGamble()throws Exception{
        Double a=Double.valueOf(this.get("aab405").toString());//a赔率
        Double b=Double.valueOf(this.get("aab406").toString());//b赔率
        String aab407=this.get("aab407").toString();//竞猜结果
        String aab401=this.get("aab401").toString();

        StringBuilder sql=new StringBuilder()
                .append("update  ab04 a")
                .append("   set  a.aab407 = ?")
                .append(" where  a.aab401 = ?")
                ;
        Object args[]= {
                this.get("aab407"),
                this.get("aab401")
        };
        this.executeUpdate(sql.toString(),args);//修改ab04表中竞猜结果
        this.modifyAb05Gamble();
        return true;
    }

    /**
     * 修改ab05表中的竞猜结果
     *
     * @return
     * @throws Exception
     */
    public boolean modifyAb05Gamble()throws Exception{
        //得到用户竞猜信息 包含aab502（选项）和aab503（下注数量）

        String aab407=this.get("aab407").toString();//竞猜结果
        double odds;

        List<Map<String,String>> ab05Rows=this.queryAb05();//查询ab05结果
        StringBuilder sql=new StringBuilder()
                .append("update     ab05 a")
                .append("       set a.aab504 = ?")
                .append("   where a.aab501 = ?")
                .append("   and   a.aab401 = ?")
                ;

        String userId[]=new String[ab05Rows.size()];//用户id
        String rows[]=new String[ab05Rows.size()];//ab05序列号
        int result[]=new int[ab05Rows.size()];//个人竞猜结果
        Object args=this.get("aab401");//当前竞猜序列号

        for(int i=0;i<ab05Rows.size();i++) {
            //ab05Rows.get(i).get("aab101");//用户id
            //ab05Rows.get(i).get("aab501");//主键值
            //ab05Rows.get(i).get("aab502");//选项
            //ab05Rows.get(i).get("aab503");//下注数量

            rows[i]=ab05Rows.get(i).get("aab501");//ab05序列号
            userId[i]=ab05Rows.get(i).get("aab101");//用户id
            //结果是
            if(aab407.equals("A")){
                odds=Double.valueOf(this.get("aab405").toString());
            }else if (aab407.equals("B")){
                odds=Double.valueOf(this.get("aab406").toString());
            }else {
                odds=0;
            }
            //判断选项是否选对
            if(ab05Rows.get(i).get("aab502").equals(aab407)){
                result[i]=(int)(Double.valueOf(ab05Rows.get(i).get("aab503"))*(odds));
            }
            else {
                result[i]=0;
            }
        }
        this.executeEndGamble(sql.toString(),args,result,rows);//竞猜结果发放给到个人竞猜信息表中（ab05）
        //更新用户的代币数量

        /**
         * userId[i]
         */
        //去掉数组中的重复元素
        String newUserId[]= Tools.removeRepeat(userId);
        List<Map<String,String>> db=this.queryForList_2(queryAb01Aab101(),newUserId);//得到用户当前的代币数量(结束竞猜之前)
        int[] newDb=new int[db.size()];//竞猜结束之后用户的代币数量
        /**
         * 得到用户当前的代币数量
         *
         */

        for(int j=0;j<db.size();j++){
            newDb[j]=Integer.valueOf(db.get(j).get("aab110"));

            for(int k=0;k<result.length;k++) {
                if ((db.get(j).get("aab101")).equals(userId[k])){

                    newDb[j]+=result[k];
                }
            }
        }
        this.executeModifyAb01(modifyAb01Aab110(),newDb,newUserId);//更新用户的代币数量
        return true;
    }

    /**
     * 查询用户当前代币数量
     * @return
     * @throws Exception
     */
    public String queryAb01Aab101()throws Exception{
        StringBuilder sql=new StringBuilder()
                .append("select   a.aab101,a.aab110")
                .append("    from ab01 a")
                .append("   where a.aab101 = ?")
                ;
        return sql.toString();
    }
    //更新用户代币数量
    public String modifyAb01Aab110()throws Exception{
        StringBuilder sql=new StringBuilder()
                .append("update    ab01 a")
                .append("   set    a.aab110 = ?")
                .append("   where  a.aab101 = ?")
                ;
        return sql.toString();
    }

    /**
     *查询ab05表中的aab502（选项）和aab503（下注数量）aab501(主键值)
     * @return
     * @throws Exception
     */
    public List<Map<String,String>> queryAb05()throws Exception{
        StringBuilder sql=new StringBuilder()
                .append("select     a.aab101,a.aab501,a.aab502,a.aab503")
                .append("        from ab05 a")
                .append("     where a.aab401 = ")
                .append(this.get("aab401"))
                ;
        return this.queryForList(sql.toString());
    }

//    //修改赛事，将赛事信息修改
//    private boolean modifyGamble() throws Exception{
//        StringBuilder sql=new StringBuilder()
//                .append("update ab04 a")
//                .append("   set a.aab403=?,a.aab404=?,a.aab405=?,a.aab406=?")
//                .append(" where a.aab401=?")
//                ;
//
////        String aaf401=new String(this.get("aaf401").toString());
////        System.out.println("modifyGamble"+aaf401);
//        Object args[]= {
//                this.get("aab403"),
//                this.get("aab404"),
//                //this.get("aaf104"),
//                calculate((String)this.get("aab403"),(String) this.get("aab404")),
//                calculate((String)this.get("aab404"),(String) this.get("aab403")),
////                1.5,
////                3.0,
//                this.get("aab401").toString()
//
//        };
//        //System.out.println("modifyGamble"+args);
//        return this.executeUpdate(sql.toString(),args)>0;
//
//    }
    
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


































