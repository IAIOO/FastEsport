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
  
</head>
<body>
<form action="<%=path%>/adminAddSchedule.html" method="post" >

    <input type="submit" name="next" value="自动生成赛程">
    
    <input type="submit" name="next" value="导出比赛报名表excel"
    formaction="<%=path%>/judgeExportExcel.html">
    
</form>

<form enctype="multipart/form-data" action="/FastEsport/uploadExcel" method="post">
    <input type="file" id="excel" name="excel">
    <input type="submit" name="next" value="提交">
</form>




</body>
</html>

