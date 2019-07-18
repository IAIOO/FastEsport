<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zzzzzzzzzzb
  Date: 2019/7/9
  Time: 9:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GBK" language="java" %>
<%String path=request.getContextPath(); %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>a{TEXT-DECORATION:none}</style>
    <style>
        div.selectBox{display:none;position:fixed;top:30%;left:30%;width:300px;height:300px;border:3px solid black;background-color:white;z-index:1002}
    </style>
    <script>
        function showSelectBox() {
            document.getElementById("selectBox").style.display = "block";
            // document.getElementById("shelter").style.display = "block";
        }
        function cancel() {
            document.getElementById("selectBox").style.display = "none";
            // document.getElementById("shelter").style.display = "none";
        }

    </script>

    <script type="text/javascript">
        function onEdit(vaaf401)
        {
            var vform = document.getElementById("myform1");
            vform.action="<%=path%>/findByIdGame.html?aaf101="+vaaf401;
            //alert(vform.action);
            vform.submit();
        }
        $.ajax({
            cache:true,
            type:post,
            uri:ajaxCallUrl,
            data:$('#gamble_modify').serialize(),
            async:false,
            error:function (request) {
                alert("提交error");
            }
        })
    </script>


</head>
<body>
<%--${rows }--%>
<%--<%=session.getId()%>--%>
<%=session.getAttribute("UserId")%>
<%--<%=session.getAttribute("测试")%>--%>
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
<a href="addGamble.jsp">
    <table frame="box" align="center">
        <tr>
            <td>发起竞猜</td>
        </tr>
    </table>
</a>
<form id="myform1" action="<%=path%>/queryGamble.html" method="post">
    <c:choose>
        <c:when test="${rows !=null}">
            <c:forEach items="${rows }" var="ins1" varStatus="vs">
                <table frame="box" align="center">
                    <tr>
                        <td>
                            竞猜主题：${ins1.aab402 }<br>
                            选项A：${ins1.aab408 }A押注：${ins1.aab403 }A赔率：${ins1.aab405 }<br>
                            选项B：${ins1.aab409 }B押注：${ins1.aab404 }B赔率：${ins1.aab406 }<br>

                            <div>
                                <input id="btnSelect" type="button" value="参与竞猜" onclick="showSelectBox()"/>
                                <div id="selectBox" class="selectBox">
                                    <select>
                                        <option value="volvo">${ins1.aab408 }</option>
                                        <option value="saab">${ins1.aab409 }</option>
                                    </select>
                                    <form id="gamble_modify">
                                        <input name="aab401" value="${ins1.aab401 }" type="text" />
                                            ${ins1.aab408 }<input name="aab403" value="${ins1.aab403 }"/>
                                            ${ins1.aab409 }<input name="aab404" value="${ins1.aab404 }"/>
                                            <%--<input type="hidden" name="aab401" value="${ins1.aab401 }">--%>
                                            <%--<a onclick="ok()">OK</a>&nbsp;&nbsp;&nbsp;<a onclick="cancel()">Cancel</a>--%>
                                        <input type="submit" value="提交" formaction="<%=path%>/modifyGamble.html">&nbsp;&nbsp;&nbsp;<a onclick="cancel()">取消</a>
                                    </form>
                                </div>
                                <%--ajax异步提交，只提交这部分--%>
                                <%--<div id="shelter" class="shelter"></div>--%>
                            </div>
                            <br>
                        </td>
                    </tr>
                </table>
            </c:forEach>
        </c:when>
    </c:choose>
</form>

<%--<form id="form1" runat="server">--%>




    <%--&lt;%&ndash;竞猜主题:<input type="text" name="aab402">--%>
    <%--<br>--%>
    <%--选项A:<input type="text" name="aab408">--%>
    <%--<br>--%>
    <%--选项B:<input type="text" name="aab409">&ndash;%&gt;--%>
    <%--<div id="selectBox" class="selectBox">--%>
        <%--<p>请选择跳转的页面：</p>--%>
        <%--<p><input name="new" id="Radio1" value="${ins1.aab403 }" type="text" /></p>--%>
        <%--<p><input name="new" id="Radio2" value="new2" type="text" /></p>--%>
        <%--&lt;%&ndash;<a onclick="ok()">OK</a>&nbsp;&nbsp;&nbsp;<a onclick="cancel()">Cancel</a>&ndash;%&gt;--%>
        <%--<input type="submit" value="提交">&nbsp;&nbsp;&nbsp;<a onclick="cancel()">取消</a>--%>
    <%--</div>--%>
    <%--<div id="shelter" class="shelter"></div>--%>

<%--</form>--%>

</body>
</html>
