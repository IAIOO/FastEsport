<%@ page language="java" pageEncoding="GBK"%>
<%String path = request.getContextPath(); %>
<html>
<head>
<title>��¼����</title>
</head>

<body>
	<form action="<%=path%>/adminLogin.html">
		<table align="center" width=30%>
			<tr>
				<td>�û���</td>
				<td><input type="text" name="aad102" /></td>
			</tr>
			<tr>
				<td>����</td>
				<td><input type="password" name="aad103"/></td>
			</tr>
			<tr>
				<td><input type="submit" name="login" value="��¼"></td>
			</tr>
		</table>
	</form>
	${msg}
</body>

</html>