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
    <title>【FastEsport】电竞赛事平台</title>
    <style>a{TEXT-DECORATION:none}</style>
    <script>
        Date.prototype.Format = function(fmt)
        { //author: meizz
            var o = {
                "M+" : this.getMonth()+1,                 //月份
                "d+" : this.getDate(),                    //日
                "h+" : this.getHours(),                   //小时
                "m+" : this.getMinutes(),                 //分
                "s+" : this.getSeconds(),                 //秒
                "q+" : Math.floor((this.getMonth()+3)/3), //季度
                "S"  : this.getMilliseconds()             //毫秒
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
                <a href="/" style="font-family: 楷体;color: black"><img src="sources/fastesoprt.png" style="width: 200px;height: 75px"></a>
            </td>
            <td style="width: 200px;text-align: center;font-family: 楷体;color: black">
                <span>我的战队</span>
            </td>
            <td style="width: 200px;text-align: center;font-family: 楷体;color: black">
                <span>论坛</span>
            </td>
            <td style="width: 200px;text-align: center;font-family: 楷体;color: black">
                <span>全部赛事</span>
            </td>
            <td style="width: 200px;text-align: center">
                <a href="queryGame.html" style="font-family: 楷体;color: black"><span>赛事管理</span></a>
            </td>
            <td style="width: 200px;text-align: center">
                <a href="queryGamble.html" style="font-family: 楷体;color: black"><span>参与竞猜</span></a>
            </td>
            <td style="width: 200px;text-align: center;font-family: 楷体;color: black">
                <span>商城</span>
            </td>
            <td style="width: 200px;text-align: center;font-family: 楷体;color: black">
                <span>个人中心</span>
            </td>
        </tr>
    </table>
</div>

<div style="text-align: center">
    <form action="<%=path%>/addGame.html" method="post">


        比赛类型:<input type="text" name="aaf102" value="${ins.aaf102}">
        <br>
        比赛名称:<input type="text" name="aaf103" value="${ins.aaf103}">
        <br>
        赛制:<input type="text" name="aaf105" value="${ins.aaf105}">
        <br>
        报名结束时间:<input type="date" name="aaf107" value="${ins.aaf107}">
        <br>
        比赛开始时间:<input type="date" name="aaf108" value="${ins.aaf108}">
        <br>
        人数限制:<input type="text" name="aaf110" value="${ins.aaf110}">
        <br>
        地址:<input type="text" name="aaf111" value="${ins.aaf111}">
        <br>
        比赛规则:<input type="text" name="aaf112" value="${ins.aaf112}">
        <br>
        密码:<input type="text" name="aaf113" value="${ins.aaf113}">
        <br>
            <input type="submit" name="next" value="${empty param.aaf101?'添加':'修改' }"
                   formaction="<%=path%>/${empty param.aaf101?'add':'modify' }Game.html">
        <br>
        <input type="hidden" name="aaf101" value="${param.aaf101 }">




    </form>
</div>
</body>
</html>

