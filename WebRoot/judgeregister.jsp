<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
    <%String path=request.getContextPath();%>
<!DOCTYPE html>
<html>
<head>
<meta charset="GBK">
<title>��Ϣע��</title>
<style type="text/css">
	td{
		heigth:100px;
	}
</style>
</head>
<body>
<form action="<%=path %>/Register.html" method="post"> 
<table border="1" align="center" width="30%">
	<caption>
	������Ա��Ϣע���
	<hr width="100">
	</caption>
	<tr>
		<td>����</td>
		<td>
	    	<input type="text" name="aad302" required="true" autofocus="true">
		</td>
	</tr>
	<tr>
		<td>����</td>
		<td>
			<input type="password" name="aad303" required="true">
		</td>
	</tr>
	<tr>
		<td>����</td>
		<td>
			<input type="email" name="aad304" required="true">
		</td>
	</tr>
	<tr>
		<td>����֤��</td>
		<td>
			<input type="text" name="aad305" required="true">
		</td>
	</tr>
	
	<tr>
		<td>���б��</td>
		<td>
			<input type="text" name="aad306" required="true">
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" name="tijiao" value="�ύ">
		
			<input type="submit" name="fanhui" value="����">
		</td>
	</tr>
	
</table>

</form>

</body>
</html>