<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<%String path=request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="GBK">
<title>��½</title>
</head>
<body>
<form  action="<%=path%>/judgeLogin.html" method="post">
���֤�ţ�<input type="text" name="aad305" ><br>
���룺  <input type="password" name="aad303"><br>
<input type="submit" value="��½" >
<input type="submit" value="ע��"  formaction="<%=path%>/judgeRegister.jsp">

</form>
</body>
</html>