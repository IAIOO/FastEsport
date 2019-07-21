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
function onCheck(vaac301)
{
	var qaac303 = document.getElementsByName("qaac303");
	var result;
	for(var i=0;i<qaac303.length;i++)
	{
		if(qaac303[i].checked)
		{
			result = qaac303[i].value;
		}
	}
	if(result == "0")
	{
		alert("已招募达预期人数");
	}
	    window.location.href="teamQueryForOnEnlist.html?"
	    		+"aac301="+vaac301
	    		+"&qaac409=0"
	    		;  
}
</script>
</head>
<body>
${rows }
<form id="myform" action="<%=path%>/teamQueryForMyEnlist.html" method="post">
<!-- 查询条件区 -->
<table border="1" width="95%" align="center">
<caption>
	已发布的招募
	<hr width="160">
</caption>
<tr>
	<td colspan="4">招募表</td>
</tr>
<tr>
<td>招募进度</td>
<td><e:radio id="qaac303" name="qaac303" value="未招募达预期人数:1,已招募达预期人数:0"/></td>	
</tr>
<tr>
<td>在此日期前结束的招募</td>
<td><e:date name="qaac307" /></td>	
</tr>
</table>
<table border="1" align="center" width="80%">
	<!--  数据迭代区-->
<tr>
	<td></td>
	<td>招募表序列号</td>
	<td>招募选手类型</td>
	<td>还需招募人数</td>
	<td>招募结束日期</td>
	<td>审核</td>
</tr>
   <c:choose>
     <c:when test="${rows!=null }">
         <!-- 显示实际查询到的数据 -->
	     <c:forEach items="${rows }" var="ins" varStatus="vs">
    	   	  <tr>
			    <td>${vs.count }</td>
		    	<td>${ins.aac301 }</td>
			    <td>${ins.aac302 }</td>
			    <td>${ins.aac303 }</td>
			    <td>${ins.aac307 }</td>
			    <td>
			      <!-- #  空锚 -->
			      <a href="#" onclick="onCheck('${ins.aac301 }')">审核</a>
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
           </tr>
        </c:forEach>
     </c:otherwise>
   </c:choose>
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