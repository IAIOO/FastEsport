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
                alert("�ύerror");
            }
        })
    </script>


</head>
<body>
<%--${rows }--%>
<%--<%=session.getId()%>--%>
<%=session.getAttribute("UserId")%>
<%--<%=session.getAttribute("����")%>--%>
<div style="background-color: darkgray;">
    <table>
        <tr style="width: 1400px;height: 90px;font-size: large">
            <td style="width: 280px;text-align: center;">
                <a href="/" style="font-family: ����;color: black"><img src="sources/fastesoprt.png" style="width: 200px;height: 75px"></a>
            </td>
            <td style="width: 280px;text-align: center;">
                <a href="querySchedule.html" style="font-family: ����;color: black"><span>ȫ������</span></a>
            </td>
            <td style="width: 280px;text-align: center">
                <a href="queryGame.html" style="font-family: ����;color: black"><span>���¹���</span></a>
            </td>
            <td style="width: 280px;text-align: center">
                <a href="queryGamble.html" style="font-family: ����;color: black"><span>���뾺��</span></a>
            </td>
            <td style="width: 280px;text-align: center;font-family: ����;color: black">
                <span>�̳�</span>
            </td>
        </tr>
    </table>
</div>
<a href="addGamble.jsp">
    <table frame="box" align="center">
        <tr>
            <td>���𾺲�</td>
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
                            �������⣺${ins1.aab402 }<br>
                            ѡ��A��${ins1.aab408 }AѺע��${ins1.aab403 }A���ʣ�${ins1.aab405 }<br>
                            ѡ��B��${ins1.aab409 }BѺע��${ins1.aab404 }B���ʣ�${ins1.aab406 }<br>

                            <div>
                                <input id="btnSelect" type="button" value="���뾺��" onclick="showSelectBox()"/>
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
                                        <input type="submit" value="�ύ" formaction="<%=path%>/modifyGamble.html">&nbsp;&nbsp;&nbsp;<a onclick="cancel()">ȡ��</a>
                                    </form>
                                </div>
                                <%--ajax�첽�ύ��ֻ�ύ�ⲿ��--%>
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




    <%--&lt;%&ndash;��������:<input type="text" name="aab402">--%>
    <%--<br>--%>
    <%--ѡ��A:<input type="text" name="aab408">--%>
    <%--<br>--%>
    <%--ѡ��B:<input type="text" name="aab409">&ndash;%&gt;--%>
    <%--<div id="selectBox" class="selectBox">--%>
        <%--<p>��ѡ����ת��ҳ�棺</p>--%>
        <%--<p><input name="new" id="Radio1" value="${ins1.aab403 }" type="text" /></p>--%>
        <%--<p><input name="new" id="Radio2" value="new2" type="text" /></p>--%>
        <%--&lt;%&ndash;<a onclick="ok()">OK</a>&nbsp;&nbsp;&nbsp;<a onclick="cancel()">Cancel</a>&ndash;%&gt;--%>
        <%--<input type="submit" value="�ύ">&nbsp;&nbsp;&nbsp;<a onclick="cancel()">ȡ��</a>--%>
    <%--</div>--%>
    <%--<div id="shelter" class="shelter"></div>--%>

<%--</form>--%>

</body>
</html>
