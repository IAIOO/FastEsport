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
<a href="index.jsp" class="dropdown-toggle menu__link">首页			
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
<input type="hidden" name="aab101" value="<%=session.getAttribute("aab101")%>">

<style>
#ag {
	line-height:30px;
    background-color:#eeeeee;
    height:300px;
    width:100px;
    float:left;
    padding:5px; 
}
#sg {
	width:350px;
    float:left;
    padding:10px;	
}
</style>



<a href="addGame.jsp">
    <table id="ag" frame="box" align="center" style="width:50%;height:100%">
        <tr align="center">
            <td>举办比赛</td>
        </tr>
    </table>
</a>



<div id="sg" style="width:50%">
	<form id="myform" action="<%=path%>/competitionQueryGame.html" method="post">
	    <c:choose>
	        <c:when test="${rows !=null}">
	            <c:forEach items="${rows }" var="ins" varStatus="vs">
	                <div style="padding-top: 20px">
	                	<c:choose>
		                	<c:when test="${ins.aaf109val !='审核中' }">
				                <a href="#" onclick="onEdit('${ins.aaf101 }')">
				               		<table frame="box" align="center" style="width:50%; padding-top: 1px; ">
				               			<tr>
				               				<td style="background-color: #eeeeee">
					               				赛事名称：${ins.aaf103 }<br>
												<%-- 报名截止时间：${ins.aaf107}<br> --%>
												比赛状态：${ins.aaf109val }<br>
											</td>
										</tr>
			                       	</table>
				                </a>
			                </c:when>
			                <c:otherwise>
			                	<a href="#">
				               		<table frame="box" align="center" style="width:50%; padding-top: 1px; ">
				               			<tr>
				               				<td style="background-color: #eeeeee">
					               				赛事名称：${ins.aaf103 }<br>
												<%-- 报名截止时间：${ins.aaf107}<br> --%>
												比赛状态：${ins.aaf109val }<br>
											</td>
										</tr>
			                       	</table>
				                </a>
			                </c:otherwise>
		                </c:choose>
	               	</div>
	            </c:forEach>
	        </c:when>
	    </c:choose>
	</form>
</div>


</body>
</html>
