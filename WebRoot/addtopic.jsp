<%@ page language="java" pageEncoding="GBK"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>��������</title>
</head>
<body>
<form action="<%=path %>/bbsAddTopic.html" method="post">
	<table>
		<tr>
			<td><input type="hidden" name="aab101" value="<%=session.getAttribute("aab101")%>"></td>
		</tr>
		<tr>
			<td>���⣺</td>
			<td><input type="text" required="required" name="aab202"></td>
		</tr>
		<tr>
			<td>���ݣ�</td>
			<td><input type="text" required="required" name="aab203"></td>
		</tr>
		<tr>
			<td><input type="submit" name="�������" value="����"></td>
		</tr>
	</table>
</form>
</body>
</html>