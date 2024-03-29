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
	 * 	        业务逻辑组件及架构注入
	 *****************************************/
	
	private BaseServices services=null;
	
	/**
	 * 子类通过该方法,为Services变量传递引用的具体类对象
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
	 * 	        子类业务流程封装
	 *****************************************/
	
	protected void showTeam()throws Exception
    {
    	Map<String, String> ins = this.services.findById();
    	
    	this.saveAttribute("ins", ins);
    }
	
	/**
	 * 回帖操作
	 * @param methodName
	 * @throws Exception
	 */
	protected final void retReport(String methodName)throws Exception
	{
		this.executeUpdateMethod(methodName);
		this.saveAttribute("aab201", this.dto.get("aab201"));
	}
	
	/**
	 * 回帖操作
	 * @param methodName
	 * @throws Exception
	 */
	protected final void retPost(String methodName)throws Exception
	{
		this.executeUpdateMethod(methodName);
		this.saveAttribute("aab201", this.dto.get("aab204"));
	}
	
	/**
	 * 批量查询*2
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
			this.saveAttribute("msg", "没有符合条件的数据!");
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
			this.saveAttribute("msg", "没有符合条件的数据!");
		}	
	}
	/**
	 * 实现分页查询
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
			this.saveAttribute("msg", "没有符合条件的数据!");
		}	
	}
	/**
	 * 论坛帖子预览
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
			this.saveAttribute("msg", "没有符合条件的数据!");
		}
	}
	
	/**
	 * 退出登录
	 * @throws Exception
	 */
	protected final void loginout()throws Exception {
		this.attribute.clear();
	}
	
	
	/**
	 * 用户登录查询
	 * @throws Exception
	 */
	protected final void login()throws Exception
	{
		Map<String,String> ins=this.services.findById();
		if(ins!=null)
		{
			
			if(!(ins.get("aab104").equals(Tools.getMd5(this.dto.get("aab104"))))) {
				this.saveAttribute("msg", "用户名或密码错误");
				return;
			}
			this.saveAttribute("aab101", ins.get("aab101"));
			this.saveAttribute("aab102", this.dto.get("aab102"));
			this.saveAttribute("aac114", ins.get("aac114"));
			this.saveAttribute("aac101", ins.get("aac101"));	
			this.saveAttribute("aab110", ins.get("aab110"));
		}
		else
		{
			this.saveAttribute("msg", "用户不存在");
		}	
	}
	
	/**
	 * 裁判登录查询
	 * @throws Exception
	 */
	protected final void Login()throws Exception
	{
		Map<String,String> ins=this.services.findById();
		if(ins!=null)
		{
			if(!(ins.get("aad303").equals(this.dto.get("aad303")))) {
				this.saveAttribute("msg", "用户名或密码错误");
			}
			this.saveAttribute("aad301", ins.get("aad301"));
			this.saveAttribute("aad305", this.dto.get("aad305"));
		}
		else
		{
			this.saveAttribute("msg", "用户不存在");
		}	
	}
	
	/**
	 * 管理员登录查询
	 * @throws Exception
	 */
	protected final void adminLogin()throws Exception
	{
		Map<String,String> ins=this.services.findById();
		if(ins!=null)
		{
			if(!(ins.get("aad103").equals(dto.get("aad103")))) {
				this.saveAttribute("msg", "用户名或密码错误");
			}
			this.saveAttribute("name", dto.get("aad102"));
		}
		else
		{
			this.saveAttribute("msg", "用户不存在");
		}	
	}
	
	
	/**
	 * 数据批量查询
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
			this.saveAttribute("msg", "没有符合条件的数据!");
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
			this.saveAttribute("msg", "没有符合条件的数据!");
		}	
	}
	/**
	 * 单一实例 查询
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
			this.saveAttribute("msg", "提示:该数据已删除或禁止访问!");
		}	
	}
	
	protected final void retMoney()throws Exception
	{
		Map<String,String> ins=this.services.findById();
		if(ins!=null)
		{
			this.saveAttribute("aab110",  ins.get("aab110"));
		}
		else
		{
			this.saveAttribute("msg", "提示:该数据已删除或禁止访问!");
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
			this.saveAttribute("msg", "提示:该数据已删除或禁止访问!");
		}	
	}
	
	/**
	 * 通过反射执行更新方法
	 * @param methodName
	 * @return
	 * @throws Exception
	 */
	private boolean executeUpdateMethod(String methodName)throws Exception
	{
		//1.获取需要调用的方法对象
		Method method=this.services.getClass().getDeclaredMethod(methodName);
		method.setAccessible(true);
		//2.调用方法
		return  (boolean)method.invoke(services);
	}
	
	
	/**
	 * 更新行为的总开关
	 * <
	 *   简单消息提示
	 * >
	 * @param utype
	 * @param msgText
	 * @throws Exception
	 */
	protected final void update(String methodName,String msgText)throws Exception
	{
		String msg=this.executeUpdateMethod(methodName)?"成功!":"失败!";
		this.saveAttribute("msg", msgText+msg);
	}
	
	/**
	 * 带有编号的消息提示的更新行为
	 * @param utype
	 * @param typeText
	 * @param msgText
	 * @param key
	 * @throws Exception
	 */
	protected final void update(String methodName,String typeText,String msgText,String key)throws Exception
	{
		String msg=typeText+"失败!";
    	if(this.executeUpdateMethod(methodName))
    	{
    		msg=msgText+"[ <msg> "+this.dto.get(key)+" </msg> ]";
    	}
    	//Servlet向页面输出数据
    	this.saveAttribute("msg", msg);

	}
	
	/**
	 * 删除后的数据检索
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
	 * 	        数据输入流
	 *****************************************/
	private Map<String,Object> dto=null;
    @Override
    public final void setMapDto(Map<String, Object> dto) 
    {
        this.dto=dto;	
        //同步为Services传递DTO
        this.services.setMapDto(dto);
        
    }
    
    protected final void showDto()
    {
    	System.out.println(this.dto);
    }

    
	/*****************************************
	 * 	        数据输出流
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
