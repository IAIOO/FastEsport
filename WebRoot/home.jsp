<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e" %>
<%String path=request.getContextPath();%>
<html>
<head>
<title>������ҳ</title>
</head>
<body>
<form action="<%=path%>/userLoginout.html" method="post">
		<table>
			<tr>
				<td><%=session.getAttribute("aab102") %>�ĸ�����ҳ</td>
			</tr>
			<tr>
				<td><input type="submit" name="deluser" value="ע��"></td>
			</tr>
		</table>
	</form>
</body>
</html>