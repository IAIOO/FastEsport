<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e" %>
<%String path=request.getContextPath();%>

<html>
<head>
<title>ע��ҳ��</title>

</head>

<body>
	<form action="<%=path%>/userAdd.html" method="post" id="form1">
		<table align="center" width=30%>
			<tr>
				<td>�û�����</td>
				<td><input type="text" name="aab102" size="20"
					required="required"></td>
			</tr>
			<tr>
				<td>�ֻ��ţ�</td>
				<td><e:text name="aab105" required="true" /></td>
			</tr>
			<tr>
				<td>���䣺</td>
				<td><e:text name="aab106" required="true" /></td>
			</tr>
			<tr>
				<td>���룺</td>
				<td><input type="password" name="aab104a" id="aab104a"
					size="20" required="required"></td>
			</tr>
			<!-- <tr>
				<td>ȷ�����룺</td>
				<td><input type="password" name="aab104b" id="aab104b"
					size="20" required="required"></td>
			</tr>
			<tr>
				<td>��������֤�룺</td>
				<td><input type="text" name="verifycode" id="vcode" /></td>
				<td><img src="img.jsp" onclick='src="img.jsp?"+new Date()' /></td>
			</tr> -->
			<tr>
				<td><input type="submit" name="newuser" value="ע��" id="newuser">
				</td>
			</tr>
		</table>
	</form>
	${error}
</body>
</html>