package com.neusoft.web.support;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.neusoft.services.BaseServices;
import com.neusoft.system.tools.PageBean;
import com.neusoft.system.tools.Tools;

public abstract class ControllerSupport implements BaseController
{

	/*****************************************
	 * 	        ҵ���߼�������ܹ�ע��
	 *****************************************/
	
	private BaseServices services=null;
	
	/**
	 * ����ͨ���÷���,ΪServices�����������õľ��������
	 * @param services
	 */
	protected void setServices(BaseServices services)
	{
		this.services=services;
	}
	
	protected BaseServices getServices()
	{
		return this.services;
	}
	
	/*****************************************
	 * 	        ����ҵ�����̷�װ
	 *****************************************/
	
	protected void showTeam()throws Exception
    {
    	Map<String, String> ins = this.services.findById();
    	
    	this.saveAttribute("ins", ins);
    }
	
	/**
	 * ��������
	 * @param methodName
	 * @throws Exception
	 */
	protected final void retReport(String methodName)throws Exception
	{
		this.executeUpdateMethod(methodName);
		this.saveAttribute("aab201", this.dto.get("aab201"));
	}
	
	/**
	 * ��������
	 * @param methodName
	 * @throws Exception
	 */
	protected final void retPost(String methodName)throws Exception
	{
		this.executeUpdateMethod(methodName);
		this.saveAttribute("aab201", this.dto.get("aab204"));
	}
	
	/**
	 * ������ѯ*2
	 * @throws Exception
	 */
	protected final void queryTwo()throws Exception
	{
		List<Map<String,String>> rows=this.services.queryTwo();
		if(rows.size()>0)
		{
			this.saveAttribute("rows", rows);
		}
		else
		{
			this.saveAttribute("msg", "û�з�������������!");
		}	
	}
	protected final void queryThree()throws Exception
	{
		List<Map<String,String>> rows=this.services.queryThree();
		if(rows.size()>0)
		{
			this.saveAttribute("rows", rows);
		}
		else
		{
			this.saveAttribute("msg", "û�з�������������!");
		}	
	}
	/**
	 * ʵ�ַ�ҳ��ѯ
	 * @throws Exception
	 */
	protected final void getPage()throws Exception {
		Object now = this.dto.get("now");
		PageBean<Map<String,String>> pageBean = new PageBean<>();
		int count = this.services.queryCount();
		pageBean.setRows(count);
		if (now!=null){
            pageBean.setPageNo(Integer.valueOf(now.toString()));
        }
		int first = (pageBean.getPageNo()-1)*pageBean.getPageSize();
		int end = pageBean.getPageSize();
		this.dto.put("first", first);
		this.dto.put("end", end);
		List<Map<String,String>> rows=this.services.queryForPage();
		if(rows.size()>0)
		{
			pageBean.setLists(rows);
			this.saveAttribute("rows", rows);
			this.saveAttribute("pageBean", pageBean);
		}
		else
		{
			this.saveAttribute("msg", "û�з�������������!");
		}	
	}
	/**
	 * ��̳����Ԥ��
	 * @throws Exception
	 */
	protected final void dataForPreview()throws Exception {
		this.dto.put("first", 0);
		this.dto.put("end", 5);
		List<Map<String,String>> prows=this.services.queryForPage();
		if(prows.size()>0)
		{
			this.saveAttribute("prows", prows);
		}
		else
		{
			this.saveAttribute("msg", "û�з�������������!");
		}
	}
	
	/**
	 * �˳���¼
	 * @throws Exception
	 */
	protected final void loginout()throws Exception {
		this.attribute.clear();
	}
	
	
	/**
	 * �û���¼��ѯ
	 * @throws Exception
	 */
	protected final void login()throws Exception
	{
		Map<String,String> ins=this.services.findById();
		if(ins!=null)
		{
			
			if(!(ins.get("aab104").equals(Tools.getMd5(this.dto.get("aab104"))))) {
				this.saveAttribute("msg", "�û������������");
				return;
			}
			this.saveAttribute("aab101", ins.get("aab101"));
			this.saveAttribute("aab102", this.dto.get("aab102"));
			this.saveAttribute("aac114", ins.get("aac114"));
			this.saveAttribute("aac101", ins.get("aac101"));	
		}
		else
		{
			this.saveAttribute("msg", "�û�������");
		}	
	}
	
	/**
	 * ���е�¼��ѯ
	 * @throws Exception
	 */
	protected final void Login()throws Exception
	{
		Map<String,String> ins=this.services.findById();
		if(ins!=null)
		{
			if(!(ins.get("aad303").equals(this.dto.get("aad303")))) {
				this.saveAttribute("msg", "�û������������");
			}
			this.saveAttribute("aad301", ins.get("aad301"));
			this.saveAttribute("aad305", this.dto.get("aad305"));
		}
		else
		{
			this.saveAttribute("msg", "�û�������");
		}	
	}
	
	/**
	 * ����Ա��¼��ѯ
	 * @throws Exception
	 */
	protected final void adminLogin()throws Exception
	{
		Map<String,String> ins=this.services.findById();
		if(ins!=null)
		{
			if(!(ins.get("aad103").equals(dto.get("aad103")))) {
				this.saveAttribute("msg", "�û������������");
			}
			this.saveAttribute("name", dto.get("aad102"));
		}
		else
		{
			this.saveAttribute("msg", "�û�������");
		}	
	}
	
	
	/**
	 * ����������ѯ
	 * @throws Exception
	 */
	protected final void savePageData()throws Exception
	{
		List<Map<String,String>> rows=this.services.query();
		if(rows.size()>0)
		{
			this.saveAttribute("rows", rows);
		}
		else
		{
			this.saveAttribute("msg", "û�з�������������!");
		}	
	}
	protected final void savePageData2()throws Exception
	{
		List<Map<String,String>> rows=this.services.query2();
		if(rows.size()>0)
		{
			this.saveAttribute("rows", rows);
		}
		else
		{
			this.saveAttribute("msg", "û�з�������������!");
		}	
	}
	/**
	 * ��һʵ�� ��ѯ
	 * @throws Exception
	 */
	protected final void savePageInstance()throws Exception
	{
		Map<String,String> ins=this.services.findById();
		if(ins!=null)
		{
			this.saveAttribute("ins",  ins);
		}
		else
		{
			this.saveAttribute("msg", "��ʾ:��������ɾ�����ֹ����!");
		}	
	}
	
	protected final void savePageInstance1()throws Exception
	{
		Map<String,String> ins=this.services.findById1();
		if(ins!=null)
		{
			this.saveAttribute("ins",  ins);
		}
		else
		{
			this.saveAttribute("msg", "��ʾ:��������ɾ�����ֹ����!");
		}	
	}
	
	/**
	 * ͨ������ִ�и��·���
	 * @param methodName
	 * @return
	 * @throws Exception
	 */
	private boolean executeUpdateMethod(String methodName)throws Exception
	{
		//1.��ȡ��Ҫ���õķ�������
		Method method=this.services.getClass().getDeclaredMethod(methodName);
		method.setAccessible(true);
		//2.���÷���
		return  (boolean)method.invoke(services);
	}
	
	
	/**
	 * ������Ϊ���ܿ���
	 * <
	 *   ����Ϣ��ʾ
	 * >
	 * @param utype
	 * @param msgText
	 * @throws Exception
	 */
	protected final void update(String methodName,String msgText)throws Exception
	{
		String msg=this.executeUpdateMethod(methodName)?"�ɹ�!":"ʧ��!";
		this.saveAttribute("msg", msgText+msg);
	}
	
	/**
	 * ���б�ŵ���Ϣ��ʾ�ĸ�����Ϊ
	 * @param utype
	 * @param typeText
	 * @param msgText
	 * @param key
	 * @throws Exception
	 */
	protected final void update(String methodName,String typeText,String msgText,String key)throws Exception
	{
		String msg=typeText+"ʧ��!";
    	if(this.executeUpdateMethod(methodName))
    	{
    		msg=msgText+"[ <msg> "+this.dto.get(key)+" </msg> ]";
    	}
    	//Servlet��ҳ���������
    	this.saveAttribute("msg", msg);

	}
	
	/**
	 * ɾ��������ݼ���
	 * @throws Exception
	 */
	protected final void savePageDataForDelete()throws Exception
	{
		List<Map<String,String>> rows=this.services.query();
		if(rows.size()>0)
		{
			this.saveAttribute("rows", rows);
		}
	}

	
	
	/*****************************************
	 * 	        ����������
	 *****************************************/
	private Map<String,Object> dto=null;
    @Override
    public final void setMapDto(Map<String, Object> dto) 
    {
        this.dto=dto;	
        //ͬ��ΪServices����DTO
        this.services.setMapDto(dto);
        
    }
    
    protected final void showDto()
    {
    	System.out.println(this.dto);
    }

    
	/*****************************************
	 * 	        ���������
	 *****************************************/
    private Map<String,Object> attribute=new HashMap<>();
    protected final void  saveAttribute(String key,Object value)
    {
    	this.attribute.put(key, value);
    }
    
    @Override
    public final Map<String, Object> getAttribute() 
    {
    	return this.attribute;
    }
}
