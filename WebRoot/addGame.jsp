<%--
  Created by IntelliJ IDEA.
  User: zzzzzzzzzzb
  Date: 2019/7/5
  Time: 9:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GBK" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ taglib prefix="e" uri="http://org.wangxg/jsp/extl" %>
<%String path=request.getContextPath();%>
<html>
<head>
    <title>��FastEsport���羺����ƽ̨</title>
    <style>a{TEXT-DECORATION:none}</style>
    <script>
        Date.prototype.Format = function(fmt)
        { //author: meizz
            var o = {
                "M+" : this.getMonth()+1,                 //�·�
                "d+" : this.getDate(),                    //��
                "h+" : this.getHours(),                   //Сʱ
                "m+" : this.getMinutes(),                 //��
                "s+" : this.getSeconds(),                 //��
                "q+" : Math.floor((this.getMonth()+3)/3), //����
                "S"  : this.getMilliseconds()             //����
            };
            if(/(y+)/.test(fmt))
                fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));
            for(var k in o)
                if(new RegExp("("+ k +")").test(fmt))
                    fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));
            return fmt;
        };
    </script>


</head>
<body>
<%--${ins }--%>
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
                <a href="queryGame.html" style="font-family: ����;color: black"><span>���¹���</span></a>
            </td>
            <td style="width: 200px;text-align: center">
                <a href="queryGamble.html" style="font-family: ����;color: black"><span>���뾺��</span></a>
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

<div style="text-align: center">
    <form action="<%=path%>/addGame.html" method="post">


        ��������:<input type="text" name="aaf102" value="${ins.aaf102}">
        <br>
        ��������:<input type="text" name="aaf103" value="${ins.aaf103}">
        <br>
        ����:<input type="text" name="aaf105" value="${ins.aaf105}">
        <br>
        ��������ʱ��:<input type="date" name="aaf107" value="${ins.aaf107}">
        <br>
        ������ʼʱ��:<input type="date" name="aaf108" value="${ins.aaf108}">
        <br>
        ��������:<input type="text" name="aaf110" value="${ins.aaf110}">
        <br>
        ��ַ:<input type="text" name="aaf111" value="${ins.aaf111}">
        <br>
        ��������:<input type="text" name="aaf112" value="${ins.aaf112}">
        <br>
        ����:<input type="text" name="aaf113" value="${ins.aaf113}">
        <br>
            <input type="submit" name="next" value="${empty param.aaf101?'���':'�޸�' }"
                   formaction="<%=path%>/${empty param.aaf101?'add':'modify' }Game.html">
        <br>
        <input type="hidden" name="aaf101" value="${param.aaf101 }">




    </form>
</div>
</body>
</html>

