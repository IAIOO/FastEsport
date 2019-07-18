<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%String path=request.getContextPath(); %>
<%--
  Created by IntelliJ IDEA.
  User: zzzzzzzzzzb
  Date: 2019/7/8
  Time: 9:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GBK" language="java" %>
<html>
<head>
    <title>【FastEsport】电竞赛事平台</title>
    <style>a{TEXT-DECORATION:none}</style>
    <script src="jquery/jquery.js"></script>
    <script type="text/javascript">
        function onEdit(vaaf101)
        {
            var vform = document.getElementById("myform");
            vform.action="<%=path%>/findByIdGame.html?aaf101="+vaaf101;
            //alert(vform.action);
            vform.submit();
        }
        function myFunction(vaaf1011)
        {
            var vform = document.getElementById("myform");
            vform.action="<%=path%>/querySchedule.html?aaf101="+vaaf1011;
            //alert(vform.action);
            vform.submit();
        }
        function autoLoad() {
            jQuery.autoLoad({
                method:"POST",
                url:"web/impl/QueryGameServlet"
            });
        }
    </script>
</head>
<body onload="autoLoad()">
<%=session.getAttribute("UserId")%>
<%--${rows }--%>
<div style="background-color: darkgray;">
    <table>
        <tr style="width: 1400px;height: 90px;font-size: large">
            <td style="width: 280px;text-align: center;">
                <a href="/" style="font-family: 楷体;color: black"><img src="sources/fastesoprt.png" style="width: 200px;height: 75px"></a>
            </td>
            <td style="width: 280px;text-align: center;">
                <a href="querySchedule.html" style="font-family: 楷体;color: black"><span>全部赛事</span></a>
            </td>
            <td style="width: 280px;text-align: center">
                <a href="queryGame.html" style="font-family: 楷体;color: black"><span>赛事管理</span></a>
            </td>
            <td style="width: 280px;text-align: center">
                <a href="queryGamble.html" style="font-family: 楷体;color: black"><span>参与竞猜</span></a>
            </td>
            <td style="width: 280px;text-align: center;font-family: 楷体;color: black">
                <span>商城</span>
            </td>
        </tr>
    </table>
</div>
<input type="hidden" name="aab101" value="${session.getAttribute("UserId") }">
<a href="addGame.jsp">
    <table frame="box" align="center">
        <tr>
            <td>举办比赛</td>
        </tr>
    </table>
</a>
<form id="myform" action="<%=path%>/queryGame.html" method="post">
    <c:choose>
        <c:when test="${rows !=null}">
            <c:forEach items="${rows }" var="ins" varStatus="vs">
                <a href="#" onclick="onEdit('${ins.aaf101 }')">
                    <table frame="box" align="center">
                        <tr>
                            <td>
                                赛事名称：${ins.aaf103 }<br>
                                报名截止时间：${ins.aaf107}<br>
                                比赛规则：${ins.aaf112 }<br>
                                比赛状态：${ins.aaf109 }<br>
                            </td>
                            <%--<td>--%>
                                <%--<input id="myform1" type="submit" value="比赛修改" onclick="onEdit('${ins.aaf101 }')">--%>
                                <%--<input id="myform2" type="submit" value="查看赛程" onclick="myFunction('${ins.aaf101 }')">--%>
                            <%--</td>--%>
                        </tr>
                    </table>
                </a>
            </c:forEach>
        </c:when>
    </c:choose>
</form>
<h5>注：修改比赛必须在比赛报名开始之前</h5>


</body>
</html>
