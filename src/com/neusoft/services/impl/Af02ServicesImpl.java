package com.neusoft.services.impl;

import com.neusoft.services.JdbcServicesSupport;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;

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
                    .append("select a.aaf201,a.aaf202,a.aaf203,a.aaf204,a.aaf205,a.aaf206")
                    .append("  from af02 a")
                    .append(" where a.aaf101 = ")
                    .append(this.get("aaf101"));

            System.out.println("����aaf101" + this.get("aaf101"));
            //System.out.println(this.get("aaf101"));
            //ִ�в�ѯ

            return this.queryForList(sql.toString());

        }

}
