<%@ page language="java" pageEncoding="GBK"%>
<%String path = request.getContextPath(); %>
<html>
<head>
<link type="text/css" rel="stylesheet" href="css/admin.css" />
<title>登录界面</title>
</head>

<body>
	<form action="<%=path%>/adminLogin.html">
		<table align="center" width=30%>
		<div class="login-form">
		
			<tr>
				<td>用户名</td>
				<td><input type="text" name="aad102"/></td>
			</tr>
			<tr>
				<td>密码</td>
				<td><input type="password" name="aad103"/></td>
			</tr>
			<tr>
				<td><input type="submit" name="login" value="登录"></td>
			</tr>
		</table>
		</div>
	</form>
	${msg}
</body>

</html>