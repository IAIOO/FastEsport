package com.neusoft.services.impl;

import com.neusoft.services.JdbcServicesSupport;
import com.neusoft.system.tools.ExcelExportNImport;
import com.neusoft.system.tools.Tools;

import java.util.Collections;
import java.util.List;
import java.util.Map;

import org.eclipse.jdt.internal.compiler.ast.ThisReference;

public class Ac05ServicesImpl extends JdbcServicesSupport {

    static int gameId=11;//aaf101
    static String gameDate="2019-07-28";
    
    
    public List<Map<String,String>> query() throws Exception {

        System.out.println("����aaf101" + this.get("aaf101"));

        StringBuilder sql = new StringBuilder()
                .append("select   a.aac501,a.aab101,b.aab102,b.aab103,c.fvalue ab108val,d.aab101 userid")
                .append("    from ac05 a,ab01 b,syscode c,af01 d")
                .append("   where a.aab101 = b.aab101")
                .append("     and b.aab108 = c.fcode and c.fname = 'aab108'")
                .append("     and d.aaf101 = ")
                .append(this.get("aaf101"))
                .append("     and a.aaf101 = ")
                .append(this.get("aaf101"));

        return this.queryForList(sql.toString());
    }
    /**
     *1.
     * ���ȸ��ݱ�����id�ӱ�����ac05�в��������Ӧ���������б�������Ա
     */
    public List<Map<String,String>> queryForSchedule() throws Exception {

        System.out.println("����aaf101" + this.get("aaf101"));

        StringBuilder sql = new StringBuilder()
                .append("select   a.aac501,a.aab101,a.aaf101")
                .append("    from ac05 a")
                .append("   where a.aaf101 = ")
                .append(this.get("aaf101"));

        return this.queryForList(sql.toString());
    }


//    public boolean addPlayer() throws Exception{
//
//    }


    public boolean addSchedule() throws Exception{
        StringBuilder sql=new StringBuilder()
                .append("insert into af02(aaf101,aaf204,aaf202,aaf203)")
                .append("           values(?,?,?,?)")
                ;
        String [] idRows=Tools.getRows(this.queryForSchedule(),"2");

        Object args[] = {
                this.get("aaf101"),
                gameDate
        };

        return this.batchInsert_game(sql.toString(),args,idRows);

    }
    
  //�����ݿ��е����μӱ�����ѡ��
    public boolean query2Excel1() throws Exception{
        List<Map<String,String>> ac05Rows=this.queryForSchedule();

        ExcelExportNImport.List2Excel(ac05Rows,this.get("aaf101").toString());
        return true;
    }
    
    private boolean deleteById()throws Exception
    {
    	String sql="delete from ab02 where aab201=?";
    	return this.executeUpdate(sql, this.get("aab201"))>0;
    }
    
    private boolean modifyEmp()throws Exception
    {
    	StringBuilder sql=new StringBuilder()

//    			;
    			.append("update af02 a")
    			.append("   set a.aaf205=?,a.aaf206=?")
    			.append(" where a.aaf201=?")
    			;

    	
    	Object args[]={
    			
    			this.get("aaf205"),
    			this.get("aaf206"),
    			this.get("aaf201"),

    	};
    	System.out.println(this.get("aaf205"));
    	System.out.println(this.get("aaf206"));
    	return this.executeUpdate(sql.toString(), args)>0;
    	
    }
    

    
    public boolean addEmp() throws Exception{
        StringBuilder sql=new StringBuilder()
                .append("insert into ac05(aab101,aaf101)")
                .append("           values(?,?)")
                ;
        Object args[]={

        		this.get("aab101"),
             //   this.get("aab101")
                this.get("aaf101")
                
        };
        return this.executeUpdate(sql.toString(),args)>0;
    }
    
    


   
    
    
    public Map<String,String> findById()throws Exception
    {
    	//1.��дSQL���
    	StringBuilder sql=new StringBuilder()
    			.append("select a.aad301")
    			.append("  from ad03 a")
    			.append(" where a.aad305=?")
    			;
    	//ִ�в�ѯ
    	System.out.println(this.get("aad301"));
    	return this.queryForMap(sql.toString(), this.get("aad305"));
    }
    
}
