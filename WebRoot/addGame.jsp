<%--
  Created by IntelliJ IDEA.
  User: zzzzzzzzzzb
  Date: 2019/7/5
  Time: 9:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ taglib prefix="e" uri="http://org.wangxg/jsp/extl" %>
<%String path=request.getContextPath();%>
<html>
<head>
    <title>【FastEsport】电竞赛事平台</title>
    <style>a{TEXT-DECORATION:none}</style>
   
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
	
	<link title="stylezb" rel="stylesheet" href="css/stylezb.css" type="text/css" />
	
	<!-- 编辑你的script -->
	<script type="text/javascript">
	
	</script>
</head>
	
<body>
<!-- header -->
<div class="w3_navigation">
		<div class="container">
			<nav class="navbar navbar-default">
				<div class="navbar-header navbar-left">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<div class="w3_navigation_pos">
						<h1><span>FastEsport</span></h1>
					</div>
				</div>
				
<!-- 导航栏 -->
<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
	<nav class="cl-effect-5" id="cl-effect-5">												
		<ul class="nav navbar-nav">	
		 
<!-- 首页 -->																							
<li class="dropdown menu__item">
<a href="fistPage.jsp" class="dropdown-toggle menu__link">首页			
</a>
</li>
		
<!-- 全部赛事 -->	
<li class="dropdown menu__item">
<a href="<%=path %>/competitionQueryForUser.html" class="dropdown-toggle menu__link">全部赛事
</a>
</li>
						
<!-- 赛事管理 -->
<li class="dropdown menu__item">
<a href="competitionQueryGame.html?aab101=<%=session.getAttribute("aab101") %>" class="dropdown-toggle menu__link">赛事管理
</a>
</li>
							
<!-- 战队管理 -->
<li class="dropdown menu__item">
<a href="#" class="dropdown-toggle menu__link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">战队管理
	<span class="caret"></span>
</a>
<ul class="dropdown-menu">
	<li>
		<a href="makeTeam.jsp">创建战队</a>
	</li>
	<li>
		<a href="teamMyTeam.html">我的战队</a>
	</li>
	<li>
		<a href="enlistTeam.jsp">发布招募</a>
	</li>
	<li>
		<a href="queryForMyEnlist.jsp">审核招募</a>
	</li>
	<li>
		<a href="queryForTeam.jsp">报名战队</a>
	</li>
	<li>
		<a href="userProId.jsp">职业认证</a>
	</li>
</ul>
</li>

<!-- 论坛天地 -->							
<li class="dropdown menu__item">
<a href="<%=path %>/bbsQuery.html" class="dropdown-toggle menu__link">论坛天地
</a>
</li>
	
<!-- 商城中心 -->							
<li class="dropdown menu__item">
<a href="usershop.jsp" class="dropdown-toggle menu__link">商城中心
</a>
</li>																					
					</ul>																					
				</nav>
			</div>
		</nav>	
	</div>
</div>
	
	
<!-- //header -->	
<div class="header">
	<div class="w3layouts_header_left">
			<div class="top-nav-text">
					<p>Call Us : <span class="call">+00 111 2222 333</span></p>
					<p>Email Us : <span class="mail"><a href="mailto:info@example.com">FastEsport@us.com</a></span></p>
				</div>
	</div>
	
	<div class="w3layouts_header_right">
		 	<c:choose>
					<c:when test="${empty sessionScope.aab101}">
						<a href="#" onclick="gotoLogin()">登录/注册</a>
					</c:when>
					<c:otherwise>
						<a href="<%=path%>/home.jsp"><%=session.getAttribute("aab102") %></a>
					</c:otherwise>
				</c:choose>
	</div>
	
	<div class="clearfix"> </div>
</div>
<!-- banner -->

<div class="form_content">
   <form id="test" action="#" method="get">
   <fieldset>
       <div class="form-row">
           <div class="field-label"><label for="field6">比赛项目</label>:</div>
           <div class="field-widget">
               <select id="field6" name="aaf102" class="validate-selection" title="Choose your department">
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
           </div>
       </div>
       <div class="form-row">
           <div class="field-label"><label for="field1">比赛名称</label>:</div>
           <div class="field-widget"><input name="aaf103" id="field1" class="required" title="Enter your name" /></div>
       </div>
       
       <div class="form-row">
           <div class="field-label"><label for="field2">赛制</label>:</div>
           <div class="field-widget">
           		<select id="field6" name="aaf105" class="validate-selection" title="Choose your department">
               		<option value="1">单败淘汰赛</option>
            		<option value="2">小组循环单败淘汰赛</option>
            		<option value="3">小组循环双败淘汰赛</option>
               </select>
            </div>
       </div>
       <div class="form-row">
           <div class="field-label"><label for="field1">报名结束时间</label>:</div>
           <div class="field-widget"><input type="date" name="aaf107" id="field1" class="required" title="Enter your name" /></div>
       </div>
       <div class="form-row">
           <div class="field-label"><label for="field1">比赛开始时间</label>:</div>
           <div class="field-widget"><input type="date" name="aaf108" id="field1" class="required" title="Enter your name" /></div>
       </div>
       <div class="form-row">
           <div class="field-label"><label for="field1">人数限制</label>:</div>
           <div class="field-widget"><input name="aaf110" id="field1" class="required" title="Enter your name" /></div>
       </div>
       <div class="form-row">
           <div class="field-label"><label for="field1">地址</label>:</div>
           <div class="field-widget"><input name="aaf111" id="field1" class="required" title="Enter your name" /></div>
       </div>
       <div class="form-row">
           <div class="field-label"><label for="field3">比赛规则</label>:</div>
           <div class="field-widget"><textarea class="required" name="aaf112"></textarea></div>
       </div>
       <div class="form-row">
           <div class="field-label"><label for="field1">密码</label>:</div>
           <div class="field-widget"><input name="aaf113" id="field1" class="required" title="Enter your name" /></div>
       </div>   
       
       
   </fieldset>
   <input type="submit" class="submit" name="next" value="${empty param.aaf101?'添加':'修改' }"
          formaction="<%=path%>/${empty param.aaf101?'competitionAdd':'competitionModify' }Game.html"> <input class="reset" type="button" value="Reset" onclick="valid.reset(); return false" />
   <input type="hidden" name="aaf101" value="${param.aaf101 }">
   <input type="hidden" name="aab101" value="<%=session.getAttribute("aab101") %>">
  </form>
 </div>
   <%-- 
   
<div style="text-align: center">
    <form action="<%=path%>/competitionAddGame.html" method="post">


        比赛类型:<input type="text" name="aaf102" value="${ins.aaf102}">
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
            <input type="text" name="aaf105" value="${ins.aaf105}">
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
</div> --%>
</body>
</html>

