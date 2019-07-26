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
//            throw new Exception("����[ Af02ServicesImpl ]�н�����δ����Ķ�������,����������"  +utype);
//        }
//    }
        //���±���

//    static int gameId=11;//aaf101
//    static String gameDate="2019-07-11 16:37:21";
        /**
         *1.
         * ���ȸ��ݱ�����id�ӱ�����ac05�в��������Ӧ���������б�������Ա
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
//        //�������ac05Rows
//        Collections.shuffle(ac05Rows);
//        return ac05Rows;
//    }
        /**
         * 2.
         *�Դ�ac05���в�ѯ����������ac05Rows���ţ�������af02��
         *
         *
         */
        //Map<String,String> map= ac05Rows.get(1);

//    public String[] single(List<Map<String,String>> ac05Rows){
//        System.out.println(ac05Rows.size());
//
//        String[] idRows =new String[ac05Rows.size()];
//        //�õ�������Ա�����к�
//
//        if (ac05Rows.size()!=0) {
//            for (int i = 0; i < ac05Rows.size(); i++) {
//                idRows[i] = ac05Rows.get(i).get("aac501");
//            }
//            System.out.println(idRows);
//        }else {
//            System.out.println("ac05��Ϊ��");
//        }
//        for(int j=0;j<idRows.length;j++){
//            System.out.println(idRows[j]);
//        }
//
//        return idRows;
//    }
//
//    //�жϱ�������
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
         *�Դ�ac05���в�ѯ���������ݱ��ţ�������af02��
         *
         *
         */
        //�ж�ѡ���Ƿ���̭


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
         * ��ѯaf02��
         */
        public void insertInto()throws Exception{

        }


        public List<Map<String,String>> query()throws Exception{
            //1.��дSQL���
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

            System.out.println("����aaf101" + this.get("aaf101"));
            //System.out.println(this.get("aaf101"));
            //ִ�в�ѯ

            return this.queryForList(sql.toString());

        }
        
        
        
      
      //�˹����ŵ����̱���excel�������ݿ���
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
            //1.��дSQL���
            StringBuilder sql = new StringBuilder()
                    .append("select a.aaf101,a.aaf201,b.aab102 aab102a,b.aab102 aab102b,a.aaf204,a.aaf205,a.aaf206")
                    .append("  from af02 a,ab01 b")
                    .append("  where a.aaf202=b.aab101  or a.aaf203=b.aab101")
                    ;
            //ִ�в�ѯ

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
        	//1.��дSQL���
        	StringBuilder sql=new StringBuilder()
        			.append("select a.aaf101,a.aaf205,a.aaf206")
        			.append("  from af02 a")
        			.append(" where a.aaf201=?")
        			;
        	//ִ�в�ѯ
        	System.out.println(this.get("aaf201"));
        	return this.queryForMap(sql.toString(), this.get("aaf201"));
        }
        

}
