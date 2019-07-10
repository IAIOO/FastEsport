<%@ page language="java" pageEncoding="GBK"%>
<%String path = request.getContextPath(); %>
<html>
<head>
<title>登录界面</title>
</head>

<body>
	<form action="<%=path%>/userLogin.html">
		<table align="center" width=30%>
			<tr>
				<td>用户名</td>
				<td><input type="text" name="aab102" /></td>
			</tr>
			<tr>
				<td>密码</td>
				<td><input type="password" name="aab104"/></td>
			</tr>
			<tr>
				<td><input type="submit" name="login" value="登录"></td>
				<td><a href="register.jsp">注册</a></td>
			</tr>
		</table>
	</form>
	${msg}
</body>

</html>