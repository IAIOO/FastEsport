<%--
  Created by IntelliJ IDEA.
  User: zzzzzzzzzzb
  Date: 2019/7/9
  Time: 9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GBK" language="java" %>
<%String path=request.getContextPath();%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="<%=path%>/addGamble.html" method="post">

    竞猜主题:<input type="text" name="aab402">
    <br>
    选项A:<input type="text" name="aab408">
    <br>
    选项B:<input type="text" name="aab409">
    <br>

    <input type="submit" name="next" value="添加"
           formaction="addGamble.html">
    <br>




</form>
</body>
</html>
