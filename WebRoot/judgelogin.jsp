<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<%String path=request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="GBK">
<title>登陆</title>
</head>
<body>
<form  action="<%=path%>/checkout.jsp" method="post">
身份证号：<input type="text" name="name" ><br>
密码：  <input type="password" name="pass"><br>
<input type="submit" value="登陆" >
<input type="submit" value="注册"  formaction="<%=path%>/register.jsp">

</form>
</body>
</html>