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
    <title>��FastEsport���羺����ƽ̨</title>
    <style>a{TEXT-DECORATION:none}</style>
    <script src="jquery/jquery.js"></script>
    <script type="text/javascript">
        function onEdit(vaaf101)
        {
            var vform = document.getElementById("myform");
            vform.action="<%=path%>/competitionFindByIdGame.html?aaf101="+vaaf101;
            //alert(vform.action);
            vform.submit();
        }
        function myFunction(vaaf1011)
        {
            var vform = document.getElementById("myform");
            vform.action="<%=path%>/userQuerySchedule.html?aaf101="+vaaf1011;
            //alert(vform.action);
            vform.submit();
        }
        // function autoLoad() {
        //     jQuery.autoLoad({
        //         method:"POST",
        //         url:"web/impl/QueryGameServlet"
        //     });
        // }
    </script>
</head>
<%--<body onload="autoLoad()">--%>

<%--${rows }--%>
<div style="background-color: darkgray;">
    <table>
        <tr style="width: 1400px;height: 90px;font-size: large">

            <td style="width: 200px;text-align: center;">
                <a href="/" style="font-family: ����;color: black"><img src="sources/fastesoprt.png" style="width: 200px;height: 75px"></a>
            </td>
            <td style="width: 200px;text-align: center;font-family: ����;color: black">
                <span>�ҵ�ս��</span>
            </td>
            <td style="width: 200px;text-align: center;font-family: ����;color: black">
                <span>��̳</span>
            </td>
            <td style="width: 200px;text-align: center;font-family: ����;color: black">
                <span>ȫ������</span>
            </td>
            <td style="width: 200px;text-align: center">
                <a href="#" style="font-family: ����;color: black"><span>���¹���</span></a>
            </td>
            <td style="width: 200px;text-align: center">
                <a href="#" style="font-family: ����;color: black"><span>���뾺��</span></a>
            </td>
            <td style="width: 200px;text-align: center;font-family: ����;color: black">
                <span>�̳�</span>
            </td>
            <td style="width: 200px;text-align: center;font-family: ����;color: black">
                <span>��������</span>
            </td>
        </tr>
    </table>
</div>
<input type="hidden" name="aab101" value="${session.getAttribute("UserId") }">
<a href="addGame.jsp">
    <table frame="box" align="center">
        <tr>
            <td>�ٰ����</td>
        </tr>
    </table>
</a>
<form id="myform" action="<%=path%>/competitionQueryGame.html" method="post">
    <c:choose>
        <c:when test="${rows !=null}">
            <c:forEach items="${rows }" var="ins" varStatus="vs">
                <a href="#" onclick="onEdit('${ins.aaf101 }')">
                    <table frame="box" align="center">
                        <tr>
                            <td>
                                �������ƣ�${ins.aaf103 }<br>
                                ������ֹʱ�䣺${ins.aaf107}<br>
                                ��������${ins.aaf112 }<br>
                                ����״̬��${ins.aaf109 }<br>
                            </td>
                            <%--<td>--%>
                                <%--<input id="myform1" type="submit" value="�����޸�" onclick="onEdit('${ins.aaf101 }')">--%>
                                <%--<input id="myform2" type="submit" value="�鿴����" onclick="myFunction('${ins.aaf101 }')">--%>
                            <%--</td>--%>
                        </tr>
                    </table>
                </a>
            </c:forEach>
        </c:when>
    </c:choose>
</form>
<h5>ע���޸ı��������ڱ���������ʼ֮ǰ</h5>


</body>
</html>
