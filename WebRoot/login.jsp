<%@ page language="java" pageEncoding="GBK"%>
<%String path = request.getContextPath(); %>
<html>
<head>
<title>��¼����</title>
</head>

<body>
	<form action="<%=path%>/userLogin.html">
		<table align="center" width=30%>
			<tr>
				<td>�û���</td>
				<td><input type="text" name="aab102" /></td>
			</tr>
			<tr>
				<td>����</td>
				<td><input type="password" name="aab104"/></td>
			</tr>
			<tr>
				<td><input type="submit" name="login" value="��¼"></td>
				<td><a href="register.jsp">ע��</a></td>
			</tr>
		</table>
	</form>
	${msg}
</body>

</html>