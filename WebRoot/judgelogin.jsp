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
<form  action="<%=path%>/checkout.jsp" method="post">
���֤�ţ�<input type="text" name="name" ><br>
���룺  <input type="password" name="pass"><br>
<input type="submit" value="��½" >
<input type="submit" value="ע��"  formaction="<%=path%>/register.jsp">

</form>
</body>
</html>