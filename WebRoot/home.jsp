<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e" %>
<%String path=request.getContextPath();%>
<html>
<head>
<title>个人主页</title>
</head>
<body>
<form action="<%=path%>/userLoginout.html" method="post">
		<table>
			<tr>
				<td><%=session.getAttribute("aab102") %>的个人主页</td>
			</tr>
			<tr>
				<td><input type="submit" name="deluser" value="注销"></td>
			</tr>
		</table>
	</form>
</body>
</html>