<%--
  Created by IntelliJ IDEA.
  User: zzzzzzzzzzb
  Date: 2019/7/9
  Time: 16:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GBK" language="java" %>
<%String path=request.getContextPath(); %>

<html>
<head >
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

</head>
<body>
<form action="<%=path%>/addSchedule.html" method="post">


    <input type="submit" name="next" value="自动生成赛程">
    <input type="submit" name="next" value="导出比赛报名表excel">


</form>



</form>
</body>
</html>

