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
function onLook(vaac401)
{
	 var vform = document.getElementById("myform");
	 vform.action="<%=path%>/teamFindByIdOnEnlist.html?aac401="+vaac401;
	 vform.submit();
}
</script>
</head>
<c:choose>
	<c:when test="${empty rows }">
	<c:set var= "aac301" value="${param.aac301 }"></c:set>
	</c:when>
	<c:otherwise>
	<c:set var= "aac301" value="${rows[0].aac301 }"></c:set>
	</c:otherwise>
</c:choose>
<body>
<form id="myform" action="<%=path%>/teamQueryForOnEnlist.html?aac301=${aac301}" method="post">
<!-- 查询条件区 -->
<table border="1" width="95%" align="center">
<caption>
	招募信息审核
	<hr width="160">
</caption>
<tr>
	<td colspan="4">查询条件</td>
</tr>
<tr>
<td>审核状态</td>
<td><e:radio name="qaac409" value="待审核:0,已审核:1" defval="0"/></td>	
</tr>
</table>
<table border="1" align="center" width="80%">
	<!--  数据迭代区-->
<tr>
	<td></td>
	<td>姓名</td>
	<td>出生日期</td>
	<td>电话号码</td>
	<td>邮箱</td>
	<td>查看具体信息</td>
   <c:choose>
     <c:when test="${rows!=null }">
         <!-- 显示实际查询到的数据 -->
	     <c:forEach items="${rows }" var="ins" varStatus="vs">
    	   	  <tr>
			    <td>${vs.count }</td>
			    <td>${ins.aac402 }</td>
			    <td>${ins.aac404 }</td>
			    <td>${ins.aac405 }</td>
			    <td>${ins.aac408 }</td>
			    <td>
			      <!-- #  空锚 -->
			      <a href="#" onclick="onLook('${ins.aac401 }')">查看</a>
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