<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%--
  Created by IntelliJ IDEA.
  User: zzzzzzzzzzb
  Date: 2019/7/10
  Time: 14:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>a{TEXT-DECORATION:none}</style>
    <script>
        function getPx(i,vs) {
            var a;
            switch (i) {
                case 1:a = 0;
                case 2:
                    if (vs==1){
                        a = 1;
                    } else {
                        a = 3;
                    }
                case 3:
                    if (vs==1){
                        a = 3;
                    } else {
                        a = 7;
                    }
                case 4:a = 7;
            }
            // return a;
            document.getElementById("table1").setAttribute()
        }
    </script>
</head>
<body>
<%--${rows }--%>
<%--求rows的长度--%>
<%--${fn:length(rows)}--%>
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



<div style="display: block;margin-left: 0px;">
    <table>
        <tr>
            <td style="width: 200px;text-align: center">
                比赛状态
            </td>
            <td style="width: 300px;text-align: center">
                比赛时间
            </td>
            <td style="width: 600px;text-align: center">
                对阵情况
            </td>
        </tr>
    </table>

    <div style="float: left;width: 1100px">
        <table>
            <c:forEach items="${rows }" var="ins" varStatus="vs">

                <tr style="height: 60px;margin-top: 0px">
                    <td width="200px" align="center">
                        已结束
                    </td>
                    <td width="300px" align="center">
                            ${ins.aaf204}
                    </td>
                    <td width="250px" align="center">
                            ${ins.aaf202}
                    </td>
                        <%--比分--%>
                    <td width="48px" align="center">
                        ${ins.aaf205}
                    </td>
                    <td width="4px" align="center">
                        :
                    </td>
                    <td width="48px" align="center">
                        ${ins.aaf206}
                    </td>
                    <td width="250px" align="center">
                            ${ins.aaf203}
                    </td>
                </tr>

            </c:forEach>
        </table>
    </div>
</div>






<%--</div>--%>
<%--${Math.exp(fn:length(rows))}--%>
<%--<div style="display: block;" >--%>

    <%--<c:forEach var="i" begin="1" end="8">--%>
    <%--<div style="display: block;float: left;width: 165px;height: ${(fn:length(rows) )*200}px;">--%>

        <%--<c:forEach var="j" begin="1" end="${(fn:length(rows)) / (Math.pow(2,i-1))}">--%>
            <%--<div style="float: left; margin-top: 0px; margin-bottom: 100px; position: relative; width: 165px;height: 100px">--%>
                <%--<table frame="box" style="width: 150px;height: 50px;">--%>
                    <%--<tr>--%>
                        <%--<td align="center">--%>
                            <%--<div class="text" >--%>
                                <%--<p>test1</p>--%>
                            <%--</div>--%>
                        <%--</td>--%>
                    <%--</tr>--%>
                <%--</table>--%>
                <%--<table frame="box" style="width: 150px;height: 50px;">--%>
                    <%--<tr>--%>
                        <%--<td align="center">--%>
                            <%--<div class="text" >--%>
                                <%--<p>test2</p>--%>
                            <%--</div>--%>
                        <%--</td>--%>
                    <%--</tr>--%>
                <%--</table>--%>
            <%--</div>--%>
        <%--</c:forEach>--%>
    <%--</div>--%>
    <%--</c:forEach>--%>
<%--</div>--%>


<%--<div style="display: block;margin-left: 0px;">--%>

    <%--<c:forEach var="i" begin="1" end="4">--%>
        <%--<div style="display: block;float: left;width: 165px;margin-left: 40px">--%>
            <%--<c:forEach var="j" begin="1" end="4">--%>
                <%--<div style="float: left; margin-top: 0px; margin-bottom: 0px; position: relative; width: 165px;height: 100px">--%>
                    <%--<table id="table1" frame="box" style="width: 150px;height: 40px;margin-top: ${(i==1)?0:(i==2)?((j==1)?1:3):(i==3)?((j==1)?3:7):(i==4)?7:13};">--%>

                        <%--<tr>--%>
                            <%--<td align="center">--%>
                                <%--<div class="text" >--%>
                                    <%--<p>test1</p>--%>
                                <%--</div>--%>
                            <%--</td>--%>
                        <%--</tr>--%>
                    <%--</table>--%>
                    <%--<table frame="box" style="width: 150px;height: 40px;margin-bottom: ${((i==1)?1:0)*80})px">--%>
                        <%--<tr>--%>
                            <%--<td align="center">--%>
                                <%--<div class="text" >--%>
                                    <%--<p>test2</p>--%>
                                <%--</div>--%>
                            <%--</td>--%>
                        <%--</tr>--%>
                    <%--</table>--%>
                <%--</div>--%>
            <%--</c:forEach>--%>
        <%--</div>--%>
    <%--</c:forEach>--%>

    <%--&lt;%&ndash;静态&ndash;%&gt;--%>
    <%--&lt;%&ndash;<div style="display: block;float: left;width: 165px;margin-left: 40px">&ndash;%&gt;--%>
        <%--&lt;%&ndash;<c:forEach items="${rows }" var="ins1" varStatus="vs">&ndash;%&gt;--%>
            <%--&lt;%&ndash;<table frame="box" style="width: 150px;height: 40px;">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<td align="center">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;test1&lt;%&ndash;${ins1.aaf202}&ndash;%&gt;&ndash;%&gt;--%>
                    <%--&lt;%&ndash;</td>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</table>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<table frame="box" style="width: 150px;height: 40px;margin-bottom: 80px">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<td align="center">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;test2&lt;%&ndash;${ins1.aaf203}&ndash;%&gt;&ndash;%&gt;--%>
                    <%--&lt;%&ndash;</td>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</table>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>
    <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<div style="display: block;float: left;width: 165px;margin-left: 40px">&ndash;%&gt;--%>
        <%--&lt;%&ndash;<c:forEach  var="i" begin="1" end="4" >&ndash;%&gt;--%>

            <%--&lt;%&ndash;<table frame="box" style="width: 150px;height: 40px;margin-top: ${80*((i==1)?1:3)}px;">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<td align="center">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;test1&lt;%&ndash;${ins1.aaf202}&ndash;%&gt;&ndash;%&gt;--%>
                    <%--&lt;%&ndash;</td>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</table>&ndash;%&gt;--%>

            <%--&lt;%&ndash;<table frame="box" style="width: 150px;height: 40px;">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<td align="center">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;test2&lt;%&ndash;${ins1.aaf203}&ndash;%&gt;&ndash;%&gt;--%>
                    <%--&lt;%&ndash;</td>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</table>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>
    <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<div style="display: block;float: left;width: 165px;margin-left: 40px">&ndash;%&gt;--%>
        <%--&lt;%&ndash;<c:forEach var="i" begin="1" end="2">&ndash;%&gt;--%>

            <%--&lt;%&ndash;<table frame="box" style="width: 150px;height: 40px;margin-top: ${80*((i==1)?3:7)}px;">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<td align="center">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;test1&lt;%&ndash;${ins1.aaf202}&ndash;%&gt;&ndash;%&gt;--%>
                    <%--&lt;%&ndash;</td>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</table>&ndash;%&gt;--%>

            <%--&lt;%&ndash;<table frame="box" style="width: 150px;height: 40px;">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<td align="center">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;test2&lt;%&ndash;${ins1.aaf203}&ndash;%&gt;&ndash;%&gt;--%>
                    <%--&lt;%&ndash;</td>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</table>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>
    <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<div style="display: block;float: left;width: 165px;margin-left: 40px">&ndash;%&gt;--%>
        <%--&lt;%&ndash;<c:forEach var="i" begin="1" end="1">&ndash;%&gt;--%>

            <%--&lt;%&ndash;<table frame="box" style="width: 150px;height: 40px;margin-top: ${80*7}px;">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<td align="center">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;test1&lt;%&ndash;${ins1.aaf202}&ndash;%&gt;&ndash;%&gt;--%>
                    <%--&lt;%&ndash;</td>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</table>&ndash;%&gt;--%>

            <%--&lt;%&ndash;<table frame="box" style="width: 150px;height: 40px;">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<td align="center">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;test2&lt;%&ndash;${ins1.aaf203}&ndash;%&gt;&ndash;%&gt;--%>
                    <%--&lt;%&ndash;</td>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</table>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>
    <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--</div>--%>

</body>
</html>
