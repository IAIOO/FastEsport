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
    <head>
        <title>Home</title>
        <!-- for-mobile-apps -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
        function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //for-mobile-apps -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!-- gallery -->
        <link rel="stylesheet" href="css/lightGallery.css" type="text/css" media="all" />
        <!-- //gallery -->
        <!-- font-awesome icons -->
        <link href="css/font-awesome.css" rel="stylesheet">

        <!-- //font-awesome icons -->
        <link href="http://fonts.googleapis.com/css?family=Questrial" rel="stylesheet">
        <link href="http://fonts.googleapis.com/css?family=Jura:300,400,500,600" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>

    </head>


</head>
<body>
<!-- <div class="w3_navigation" style="background-color: #bce8f1">
    <div class="container">
        <nav class="navbar navbar-default">
            <div class="navbar-header navbar-left">
                <div class="w3_navigation_pos">
                    <h1><a href="index.jsp"><span>Fantasy</span> World</a></h1>
                </div>
            </div>
            Collect the nav links, forms, and other content for toggling
            <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
                <nav class="cl-effect-5" id="cl-effect-5">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index.jsp"><span data-hover="Home">Home</span></a></li>
                        <li><a href="#about" class="scroll"><span data-hover="About">全部赛事</span></a></li>
                        <li><a href="#services" class="scroll"><span data-hover="Services">赛事管理</span></a></li>
                        <li><a href="#work" class="scroll"><span data-hover="Gallery">战队</span></a></li>
                        <li><a href="#projects" class="scroll"><span data-hover="News">商城</span></a></li>
                        <li><a href="#mail" class="scroll"><span data-hover="Contact">论坛</span></a></li>
                    </ul>
                </nav>
            </div>
        </nav>
    </div>
</div> -->
<%--${ins }--%>

<div style="text-align: center">
    <form action="<%=path%>/competitionAddGame.html" method="post">


        <%--比赛类型:<input type="text" name="aaf102" value="${ins.aaf102}">--%>
        比赛类型：
        <select name="aaf102">
            <option value="1">DOTA2</option>
            <option value="2">LOL</option>
            <option value="3">王者荣耀</option>
            <option value="4">CSGO</option>
            <option value="5">PUBG</option>
            <option value="6">OW</option>
            <option value="7">星际争霸2</option>
            <option value="8">魔兽争霸3</option>
            <option value="9">炉石传说</option>
        </select>
        <br>
        比赛名称:<input type="text" name="aaf103" value="${ins.aaf103}">
        <br>
            <%--<input type="text" name="aaf105" value="${ins.aaf105}">--%>
        赛制:<select name="aaf105">
            <option value="1">单败淘汰赛</option>
            <option value="2">小组循环单败淘汰赛</option>
            <option value="3">小组循环双败淘汰赛</option>
        </select>
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
                   formaction="<%=path%>/${empty param.aaf101?'competitionAdd':'competitionModify' }Game.html">
        <br>
        <input type="hidden" name="aaf101" value="${param.aaf101 }">
        <input type="hidden" name="aab101" value="<%=session.getAttribute("aab101") %>">




    </form>
</div>
</body>
</html>

