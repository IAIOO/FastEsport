<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
    <%String path=request.getContextPath();%>
<!DOCTYPE html>
<html>
<head>
<meta charset="GBK">
<title>信息注册</title>
<style type="text/css">
	td{
		heigth:100px;
	}
</style>
</head>
<body>
<form action="<%=path %>/judgeRegister.html" method="post"> 
<table border="1" align="center" width="30%">
	<caption>
	管理人员信息注册表
	<hr width="100">
	</caption>
	<tr>
		<td>姓名</td>
		<td>
	    	<input type="text" name="aad302" required="true" autofocus="true">
		</td>
	</tr>
	<tr>
		<td>密码</td>
		<td>
			<input type="password" name="aad303" required="true">
		</td>
	</tr>
	<tr>
		<td>邮箱</td>
		<td>
			<input type="email" name="aad304" required="true">
		</td>
	</tr>
	<tr>
		<td>身份证号</td>
		<td>
			<input type="text" name="aad305" required="true">
		</td>
	</tr>
	
	
	<tr>
		<td colspan="2" align="center">
			<input type="submit" name="tijiao" value="提交">
		
			<input type="button" name="fanhui" value="返回" onclick="location='<%=path%>/judgeLogin.jsp'">
		</td>
	</tr>
	
</table>

</form>

</body>
</html>