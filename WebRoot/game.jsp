<%--
  Created by IntelliJ IDEA.
  User: zzzzzzzzzzb
  Date: 2019/7/16
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@page import="com.mysql.fabric.xmlrpc.base.Param"%>
<%@ page contentType="text/html;charset=GBK" language="java" %>
<%String path=request.getContextPath();%>
<html>
<head>
    <title>Title</title>
    <script>
        function myFunction(vaaf1011)
        {
            var vform = document.getElementById("myform");
            vform.action="<%=path%>/userQueryGamble.html?aaf101="+vaaf1011;
            //alert(vform.action);
            vform.submit();
        }
        $.ajax({
            type: 'post',
            url: "/FastEsport/playerAc05Add.html",   
            data: $('#form1').serialize(),
            success: function () {
   				alert("ok");
            },
            error : function() {
                alert("异常！");
            }
        });
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
        <form id="form1">
			<input type="hidden" name="aaf101" value="${param.aaf101 }">
			<input type="hidden" name="aab101" value="<%=session.getAttribute("aab101") %>">
            <input type="submit" value="立刻报名">
            
        </form>
        
    </div>
    <div>
    <form id="myform" action="<%=path%>/userQueryPlayer.html" method="post">
        <input type="submit" value="参赛者列表">
        <input type="submit" value="查看赛程"
               formaction="<%=path%>/userQuerySchedule.html">>
               
        <%-- <input type="submit" name="next" value="导出比赛报名表excel"
               formaction="<%=path%>/judgeExportExcel.html"> --%>
               
        <input type="hidden" name="aaf101" value="${param.aaf101 }">
        <input type="hidden" name="aab101" value="<%=session.getAttribute("aab101") %>">
        
        
         <input type="submit" name="next" value="查看竞猜"
               formaction="<%=path%>/userQueryGamble.html">
    </form>
    </div>
</div>
</div>


</body>
</html>
