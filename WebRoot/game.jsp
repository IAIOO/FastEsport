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
                alert("�쳣��");
            }
        });
    </script>
</head>
<body>
<div>
    <div>
        ${ins }
        �������ƣ�${ins.aaf103 }<br>
        �������ͣ�${ins.aaf102 }<br>
        ������ֹʱ�䣺${ins.aaf107}<br>
        ��������${ins.aaf112 }<br>
        ����״̬��${ins.aaf109 }<br>
    </div>
    <div>
        <form id="form1">
			<input type="hidden" name="aaf101" value="${param.aaf101 }">
			<input type="hidden" name="aab101" value="<%=session.getAttribute("aab101") %>">
            <input type="submit" value="���̱���">
            
        </form>
        
    </div>
    <div>
    <form id="myform" action="<%=path%>/userQueryPlayer.html" method="post">
        <input type="submit" value="�������б�">
        <input type="submit" value="�鿴����"
               formaction="<%=path%>/userQuerySchedule.html">>
               
        <%-- <input type="submit" name="next" value="��������������excel"
               formaction="<%=path%>/judgeExportExcel.html"> --%>
               
        <input type="hidden" name="aaf101" value="${param.aaf101 }">
        <input type="hidden" name="aab101" value="<%=session.getAttribute("aab101") %>">
        
        
         <input type="submit" name="next" value="�鿴����"
               formaction="<%=path%>/userQueryGamble.html">
    </form>
    </div>
</div>
</div>


</body>
</html>
