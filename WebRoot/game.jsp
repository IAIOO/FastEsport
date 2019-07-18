<%--
  Created by IntelliJ IDEA.
  User: zzzzzzzzzzb
  Date: 2019/7/16
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path=request.getContextPath();%>
<html>
<head>
    <title>Title</title>
    <script>
        function myFunction(vaaf1011)
        {
            var vform = document.getElementById("myform");
            vform.action="<%=path%>/querySchedule.html?aaf101="+vaaf1011;
            //alert(vform.action);
            vform.submit();
        }
    </script>
</head>
<body>
<div>
    <div>
        ${ins }
        赛事名称：${ins.aaf103 }<br>
        赛事类型：${ins.aaf102 }<br>
        报名截止时间：${ins.aaf107}<br>
        比赛规则：${ins.aaf112 }<br>
        比赛状态：${ins.aaf109 }<br>
    </div>
    <div>
        <form>
            <input type="submit" value="立刻报名">
        </form>
    </div>
</div>

<div>
    <form id="myform" action="<%=path%>/queryPlayer.html" method="post">
        <input type="submit" value="参赛者列表">
        <input type="submit" value="查看赛程"
               formaction="<%=path%>/querySchedule.html">>
        <input type="hidden" name="aaf101" value="${param.aaf101 }">
    </form>
</div>
</body>
</html>
