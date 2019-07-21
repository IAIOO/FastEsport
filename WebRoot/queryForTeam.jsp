<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path = request.getContextPath(); %>
<html>
<head>
<style type="text/css">
  tr
  {
     height:25px;
  }
</style>
<script type="text/javascript">
function onLook(vaac301)
{	 
	 var vform = document.getElementById("myform");
	 vform.action="<%=path%>/teamFindByIdEnlist.html?aac301="+vaac301;
	 vform.submit();
}
function onMoney(){
	var bMoney=Number($("#qaac305").val());
	var eMoney=Number($("#qaac310").val());	
	if(bMoney>eMoney)
		{
			$("#qaac310").val(bMoney);				
		}
	if(bMoney<0||eMoney<0)
		{
			alert('提示:工资不能为负!')
			$("#qaac305").val('');
			$("#qaac310").val('');
		}
}
</script>
</head>
<body>
<form id="myform" action="<%=path%>/teamQueryForTeam.html" method="post">
<!-- 查询条件区 -->
<table border="1" width="95%" align="center">
<caption>
	战队招募信息查询
	<hr width="160">
</caption>
<tr>
	<td colspan="4">查询条件</td>
</tr>
<tr>
	<td>战队名称</td>
	<td><e:text name="qaac103" /></td>
 	<td>游戏类型</td>
	<td><e:groupbox name="qaac304" value="DOTA2:1,LOL:2,王者荣耀:3,CSGO:4,PUBG:5,OW:6,星际争霸2:7,魔兽争霸3:8,炉石传说:9"/></td>
</tr>
<tr>
	<td>薪资范围</td>
	<td><e:number step="100" id="qaac305" name="qaac305" defval="${ins.aac305 }" onchange="onMoney()"/>
	——<e:number step="100" id="qaac310" name="qaac310" defval="${ins.aac310 }" onchange="onMoney()"/>(RMB)</td>
	<td>职业/非职业战队</td>
	<td><e:radio name="qaac111" value="非职业战队:0,职业战队:1" defval="0" /></td>
</tr>
<tr>
	<td>结束日期（在此日期前的所有结果）</td>
	<td><e:date name="eaac307" /></td>
 	<td>战队所在地区</td>
	<td>
	<select id="province" name="qaac104" onchange="selectprovince(this.value);"></select>
    <select id="city" name="qaac104" style=" width:95px;"></select>
    </td> 
</tr>
</table>
<table border="1" align="center" width="80%">
	<!--  数据迭代区-->
<tr>
	<td></td>
	<td>战队名称</td>
	<td>剩余招募人数</td>
	<td>最低工资</td>
	<td>最高工资</td>
	<td>职业/非职业战队</td>
	<td>招募结束日期</td>
	<td>战队所在地区</td>
	<td>查看具体信息</td>
		  <!--
	         注意事项
	    1.$及大括号的结束标记 }与双引号之间,不允许出现空格
	    2.所有的属性之间至少要有一个空格,否则报错
	    3.var 属性,相当于在页面定义变量名称,因此  ins不允许再用$ {  }
	   -->
   <c:choose>
     <c:when test="${rows!=null }">
         <!-- 显示实际查询到的数据 -->
	     <c:forEach items="${rows }" var="ins" varStatus="vs">
    	   	  <tr>
			    <td>${vs.count }</td>
			    <td>${ins.aac103 }</td>
			    <td>${ins.aac303 }</td>
			    <td>${ins.aac305 }</td>
			    <td>${ins.aac310 }</td>
			    <td>${ins.aac111 }</td>
			    <td>${ins.aac307 }</td>
			    <td>${ins.aac104 }</td>
			    <td>
			      <!-- #  空锚 -->
			      <a href="#" onclick="onLook('${ins.aac301 }')">查看</a>
			    </td>
			  </tr>
	      </c:forEach>
	      <!-- 补充空行 -->
	      <c:forEach begin="${fn:length(rows)+1 }" step="1" end="15">
		          <tr>
		            <td></td>
		            <td></td>
		            <td></td>
		            <td></td>
		            <td></td>
		            <td></td>
		            <td></td>
		            <td></td>
		            <td></td>
		          </tr>
	      </c:forEach>
     </c:when>
     <c:otherwise>
        <c:forEach begin="1" step="1" end="15">
           <tr>
             <td></td>
             <td></td>
             <td></td>
             <td></td>
             <td></td>
             <td></td>
             <td></td>
             <td></td>
             <td></td>
           </tr>
        </c:forEach>
     </c:otherwise>
   </c:choose>
</tr>
</table>

<!-- 功能按钮区 -->
<table border="1" width="95%" align="center">
  <tr>
    <td align="center">
       <input type="submit" name="next" value="查询">
    </td>
  </tr>
</table>
</form>
<script type="text/javascript" src="js/city.js"></script>
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
</body>
</html>