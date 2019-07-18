<%@ page language="java" pageEncoding="GBK"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>发表主贴</title>
</head>
<body>
<form action="<%=path %>/bbsAddTopic.html" method="post">
	<table>
		<tr>
			<td><input type="hidden" name="aab101" value="<%=session.getAttribute("aab101")%>"></td>
		</tr>
		<tr>
			<td>标题：</td>
			<td><input type="text" required="required" name="aab202"></td>
		</tr>
		<tr>
			<td>内容：</td>
			<td><input type="text" required="required" name="aab203"></td>
		</tr>
		<tr>
			<td><input type="submit" name="添加主贴" value="发表"></td>
		</tr>
	</table>
</form>
</body>
</html>