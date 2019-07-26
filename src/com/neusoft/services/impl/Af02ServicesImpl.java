package com.neusoft.services.impl;

import com.neusoft.services.JdbcServicesSupport;
import com.neusoft.system.tools.ExcelExportNImport;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import org.eclipse.jdt.internal.compiler.ast.ThisReference;

public class Af02ServicesImpl extends JdbcServicesSupport {


//    @Override
//    public boolean update(String utype) throws Exception {
//        if(utype.equalsIgnoreCase("addSchedule")){
//            return this.addSchedule();
//        }
//        else {
//            throw new Exception("在类[ Af02ServicesImpl ]中进行了未定义的动作调用,动作名称是"  +utype);
//        }
//    }
        //赛事编排

//    static int gameId=11;//aaf101
//    static String gameDate="2019-07-11 16:37:21";
        /**
         *1.
         * 首先根据比赛的id从报名表ac05中查出所有相应比赛的所有报名的人员
         */
//    public List<Map<String,String>> queryAc05() throws Exception {
//
//        StringBuilder sql = new StringBuilder()
//                .append("select   a.aac501,a.aac502,a.aab101")
//                .append("    from ac05 a")
//                .append("   where a.aaf101 = ")
//                .append(gameId);
//        List<Map<String, String>> ac05Rows = this.queryForList(sql.toString());
//
//        //随机打乱ac05Rows
//        Collections.shuffle(ac05Rows);
//        return ac05Rows;
//    }
        /**
         * 2.
         *对从ac05表中查询出来的数据ac05Rows编排，并存入af02中
         *
         *
         */
        //Map<String,String> map= ac05Rows.get(1);

//    public String[] single(List<Map<String,String>> ac05Rows){
//        System.out.println(ac05Rows.size());
//
//        String[] idRows =new String[ac05Rows.size()];
//        //得到参赛人员的序列号
//
//        if (ac05Rows.size()!=0) {
//            for (int i = 0; i < ac05Rows.size(); i++) {
//                idRows[i] = ac05Rows.get(i).get("aac501");
//            }
//            System.out.println(idRows);
//        }else {
//            System.out.println("ac05表为空");
//        }
//        for(int j=0;j<idRows.length;j++){
//            System.out.println(idRows[j]);
//        }
//
//        return idRows;
//    }
//
//    //判断比赛赛制
//    public String getSz(int gameId)throws Exception {
//        StringBuilder sql = new StringBuilder()
//                .append("select a.aaf105")
//                .append("from   af01 a")
//                .append("where  a.aaf101 = ")
//                .append(gameId);
//        List<Map<String, String>> rows = this.queryForList(sql.toString());
//        return rows.get(1).get("aaf105");
//    }
        /**
         * 2.
         *对从ac05表中查询出来的数据编排，并存入af02中
         *
         *
         */
        //判断选手是否被淘汰


//    public boolean addSchedule() throws Exception{
//        StringBuilder sql=new StringBuilder()
//                .append("insert into af02(aaf101,aaf204,aaf202,aaf203)")
//                .append("           values(?,?,?,?)")
//                ;
//        String [] idRows=single(queryAc05());
//
//        Object args[] = {
//                gameId,
//                gameDate
//        };
//
//        return this.batchInsert_game(sql.toString(),args,idRows);
//
//    }
        /**
         *
         * 3.
         * 查询af02表
         */
        public void insertInto()throws Exception{

        }


        public List<Map<String,String>> query()throws Exception{
            //1.编写SQL语句
            StringBuilder sql = new StringBuilder()
                    .append("select a.aaf201,a.aaf202,a.aaf203,a.aaf204,a.aaf205,a.aaf206,")
                    .append("       b.aab102 namea,c.aab102 nameb,d.aab101 userid")
                    .append("  from af02 a,ab01 b,ab01 c,af01 d")
                    .append(" where a.aaf202 = b.aab101 ")
                    .append("   and a.aaf203 = c.aab101")
                    .append("   and d.aaf101 = ")
                    .append(this.get("aaf101"))
                    .append("   and a.aaf101 = ")
                    .append(this.get("aaf101"));

            System.out.println("调用aaf101" + this.get("aaf101"));
            //System.out.println(this.get("aaf101"));
            //执行查询

            return this.queryForList(sql.toString());

        }
        
        
        
      
      //人工编排的赛程表用excel导入数据库中
        public boolean excelInsertInto()throws Exception{

            String filePath=this.get("filePath").toString();
            List<List<String>> rows= ExcelExportNImport.excel2List(filePath);
            int a=rows.get(1).size();
            StringBuilder sql=new StringBuilder()
                    .append("insert into af02(aaf101,aaf202,aaf203,aaf204)")
                    .append("          values(?,?,?,?)")
                    ;


            return this.executeUpdateExcel(sql.toString(),rows);
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        public List<Map<String,String>> query2()throws Exception{
            //1.编写SQL语句
            StringBuilder sql = new StringBuilder()
                    .append("select a.aaf101,a.aaf201,b.aab102 aab102a,b.aab102 aab102b,a.aaf204,a.aaf205,a.aaf206")
                    .append("  from af02 a,ab01 b")
                    .append("  where a.aaf202=b.aab101  or a.aaf203=b.aab101")
                    ;
            //执行查询

            return this.queryForList(sql.toString());

        }
        
        private boolean modifyEmp()throws Exception
        {
        	StringBuilder sql=new StringBuilder()

        			.append("update af02 a")
        			.append("   set a.aaf205=?,a.aaf206=?")
        			.append(" where a.aaf201=?")
        			;

        	
        	Object args[]={
        			
        			this.get("aaf205"),
        			this.get("aaf206"),
        			this.get("aaf201")

        	};
        	System.out.println(this.get("aaf205"));
        	System.out.println(this.get("aaf206"));
        	return this.executeUpdate(sql.toString(), args)>0;
        	
        }
        


        
        
        public Map<String,String> findById()throws Exception
        {
        	//1.编写SQL语句
        	StringBuilder sql=new StringBuilder()
        			.append("select a.aaf101,a.aaf205,a.aaf206")
        			.append("  from af02 a")
        			.append(" where a.aaf201=?")
        			;
        	//执行查询
        	System.out.println(this.get("aaf201"));
        	return this.queryForMap(sql.toString(), this.get("aaf201"));
        }
        

}
