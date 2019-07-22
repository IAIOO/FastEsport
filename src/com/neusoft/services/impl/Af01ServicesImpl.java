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
            throw new Exception("����[ Af01ServicesImpl ]�н�����δ����Ķ�������,����������"  +utype);
        }
    }
    //�������£���������Ϣ�������ݱ�af01

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
                //��ȡ��ǰ�û�������ֵ
                1,
                this.get("aaf102"),
                this.get("aaf103"),
                //this.get("aaf104"),���±��
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


    int pkAab101=1;//��ǰ�û�������ֵ

    //��ѯ����
    public List<Map<String,String>> query()throws Exception{

        StringBuilder sql=new StringBuilder()
                .append("select  a.aaf101,a.aaf102,a.aaf103,a.aaf104,a.aaf105,")
                .append("        a.aaf107,a.aaf108,a.aaf109,a.aaf110,a.aaf111,")
                .append("        a.aaf112,a.aaf113")
                .append("  from  af01 a")
                .append("  where aab101 = ")
                .append(         pkAab101)//��ǰ�û�����ֵTODO
                ;
        return this.queryForList(sql.toString());
    }


    //�޸����£���������Ϣ�޸�
    private boolean modifyGame() throws Exception{
        StringBuilder sql=new StringBuilder()
                .append("update af01 a")
                .append("   set a.aaf102=?,a.aaf103=?,a.aaf105=?,")
                .append("       a.aaf107=?,a.aaf108=?,a.aaf110=?,a.aaf111=?,")
                .append("       a.aaf112=?,a.aaf113=?")
                .append(" where a.aaf101=?")
                ;
        System.out.println("aaf101��ֵΪ"+this.get("aaf101"));
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
    
    
    //�����޸�����״̬
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
    
    
    
    
    //��һʵ����ѯ
    public Map<String,String> findById()throws Exception{
        //1.��дSQL���
        StringBuilder sql=new StringBuilder()
                .append("select a.aaf102,a.aaf103,a.aaf104,a.aaf105,")
                .append("       a.aaf107,a.aaf108,a.aaf109,a.aaf110,a.aaf111,")
                .append("       a.aaf112,a.aaf113")
                .append("  from af01 a")
                .append(" where a.aaf101=?")
                ;
        System.out.println(this.get("aaf101"));
        //ִ�в�ѯ
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
	 * ����������ѯ
	 * @return
	 * @throws Exception
	 */
	  public List<Map<String,String>> queryTwo()throws Exception
	  {
	  		//��ԭҳ���ѯ����
	  		
	  		//����SQL����
	  		StringBuilder sql=new StringBuilder()
	  				.append("select aaf101,aaf102,aaf103,aaf104,aaf105,aaf108,")
	  				.append("       aaf109,aaf110,aaf111,aaf112")
	  				.append("  from af01 ")
	  				;
	  		return this.queryForList(sql.toString());
	  }
	  
	  
	  public List<Map<String,String>> queryT()throws Exception
	  {
	  		//��ԭҳ���ѯ����
	  		
	  		//����SQL����
	  		StringBuilder sql=new StringBuilder()
	  				.append("select aaf101,aaf102,aaf103,aaf104,aaf105,aaf108,")
	  				.append("       aaf109,aaf110,aaf111,aaf112")
	  				.append("  from af01 ")
	  				;
	  		return this.queryForList(sql.toString());
	  }
	  /**
		 * �û��鿴�����б�
		 */
		@Override
		public List<Map<String,String>> queryForPage()throws Exception{
			Object aaf102=this.get("aaf102");	  //��������
			Object aaf103=this.get("aaf103");     //��������  ģ����ѯ
	 		Object aaf104=this.get("aaf104");     //���±��
	 		Object aaf109=this.get("aaf109");	  //����״̬
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
		  * ��ѯ������������������
		 */
		@Override
		public int queryCount()throws Exception {
			Object aaf102=this.get("aaf102");	  //��������
			Object aaf103=this.get("aaf103");     //��������  ģ����ѯ
	 		Object aaf104=this.get("aaf104");     //���±��
	 		Object aaf109=this.get("aaf109");	  //����״̬
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
