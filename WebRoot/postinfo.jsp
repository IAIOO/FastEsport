<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%String path = request.getContextPath(); %>
<html>
<head>
<title>
	<c:forEach items="${rows }" var="ins" varStatus="vs">
		<c:if test="${ins.aab202 != null }">
		${ins.aab202 }
		</c:if>
	</c:forEach>
</title>

</head>
<body>
	<table border="1" width="95%" align="center">
		<tr>
			<td>内容</td>
			<td>作者</td>
			<td>发表日期</td>
		</tr>
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
				<c:choose>
					<c:when test="${ins.aab202 != null }">
					<tr>
					<td>标题：</td>
					<td>${ins.aab202 }</td>
					</tr>
					<tr>
						<td>${ins.aab203 }</td>
						<td>${ins.aab102 }</td>
						<td>${ins.aab205 }</td>
					</tr>
					</c:when>
					<c:otherwise>
					<tr>
						<td>${ins.aab203 }</td>
						<td>${ins.aab102 }</td>
						<td>${ins.aab205 }</td>
					</tr>
					</c:otherwise>
				</c:choose>
				</c:forEach>
			</c:when>
		</c:choose>
	</table>
	<form action="<%=path %>/bbsAddPost.html" method="post">
		<table>
			<tr>
				<td><input type="hidden" name="aab101" value="<%=session.getAttribute("aab101")%>"></td>
				<td><input type="hidden" name="aab204" value="<%=request.getParameter("aab201")%>"></td>
			</tr>
			<tr>
				<td>回复：</td>
				<td><input type="text" name="aab203"></td>
			</tr>
			<tr>
				<td><input type="submit" name="next" value="回复"></td>
			</tr>
		</table>
	</form>
</body>
</html>