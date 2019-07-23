<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>全部赛事</title>
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

<link title="style1" rel="stylesheet" href="css/style1.css" type="text/css" />
<script type="text/javascript">
  function toinfo(vaaf101){
	  //实现页面的跳转
	  window.location.href='game.jsp?aaf101='+vaaf101;
  }
  
  function doPage(num) {
	  window.location.href='<%=path%>/matchQuery.html?now=' + num;
  }
  
  function toPage() {
	  var vpageNum = document.getElementById("pageNum").value;
	  if(vpageNum < 1 || vpageNum > ${pageBean.totalPage}){
		  alert("输入页码有误");
	  }
	  else{
	      window.location.href='<%=path%>/matchQuery.html?now=' + vpageNum;
	  }
	  window.event.returnValue=false;
  }
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
<form id="myform" action="<%=path%>/matchQuery.html" method="post">
  <!-- 查询条件区 -->
		<table width="95%" align="center">
			<tr>
				<td colspan="4">赛事搜索</td>
			</tr>
			<tr>
				<td>赛事名称</td>
				<td><e:text name="aaf103" /></td>
				<td>赛事类型</td>
				<td><e:select name="aaf102"
						value="DOTA2:01,LOL:02,王者荣耀:03,CSGO:04,PUBG:05,OW:06,星际争霸2:07,魔兽争霸3:08,炉石传说:09"
						header="true" /></td>
				<td>赛事状态</td>
				<td><e:select name="aaf109" value="审核中:1,审核通过:2,报名中:3,进行中:4,已结束:5"
						header="true"/></td>
				<td><input type="submit" name="findmatch" value="搜索"></td>
			</tr>
		</table>
		<br></br>
		<!-- 数据迭代区 -->
	<table border="0" width="95%" align="center" style="border-collapse:separate; border-spacing:0px 20px;">
	<tr>
	    <td>赛事名称</td>
	    <td>赛事类型</td>
	    <td>报名截止时间</td>
	    <td>人数限制</td>
	    <td>赛事状态</td>
	  </tr>
	  <!--
	         注意事项
	    1.$及大括号的结束标记 }与双引号之间,不允许出现空格
	    2.所有的属性之间至少要有一个空格,否则报错
	    3.var 属性,相当于在页面定义变量名称,因此  ins不允许再用$ {  }
	   -->
	   <c:choose>
	     <c:when test="${rows!=null }">
	         <!-- 显示实际查询到的数据 -->
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr onclick="toinfo(${ins.aaf101})">
				    <td>${ins.aaf103 }</td>
				    
				    <c:if test="${ins.aaf102 == 01}"><td>Dota2</td></c:if>
				    <c:if test="${ins.aaf102 == 02}"><td>LOL</td></c:if>
				    <c:if test="${ins.aaf102 == 03}"><td>王者荣耀</td></c:if>
				    <c:if test="${ins.aaf102 == 04}"><td>CSGO</td></c:if>
				    <c:if test="${ins.aaf102 == 05}"><td>PUBG</td></c:if>
				    <c:if test="${ins.aaf102 == 06}"><td>OW</td></c:if>
				    <c:if test="${ins.aaf102 == 07}"><td>星际争霸2</td></c:if>
				    <c:if test="${ins.aaf102 == 08}"><td>魔兽争霸3</td></c:if>
				    <c:if test="${ins.aaf102 == 09}"><td>炉石传说</td></c:if>
				    
				    <td>${ins.aaf107 }</td>
				    <td>${ins.aaf110 }</td>
				    <c:if test="${ins.aaf109 == 1}"><td>审核中</td></c:if>
				    <c:if test="${ins.aaf109 == 2}"><td>审核通过</td></c:if>
				    <c:if test="${ins.aaf109 == 3}"><td>报名中</td></c:if>
				    <c:if test="${ins.aaf109 == 4}"><td>进行中</td></c:if>
				    <c:if test="${ins.aaf109 == 5}"><td>已结束</td></c:if>
				  </tr>
		      </c:forEach>
	     </c:when>
	   </c:choose>
	   ${msg }
	   <tfoot id="tfootID">
         <tr>
             <td colspan="10">
                 <a href="javascript:void(0)" onclick="doPage(1)">首页</a>&nbsp;
                 <a href="javascript:void(0)" onclick="doPage(${pageBean.pageNo-1})">上一页</a>&nbsp;
                 <a href="javascript:void(0)" onclick="doPage(${pageBean.pageNo+1})">下一页</a>&nbsp;
                 <a href="javascript:void(0)" onclick="doPage(${pageBean.totalPage})">末页</a>&nbsp;
                 	第${pageBean.pageNo}页/第${pageBean.totalPage}页&nbsp;
                 <input type="text" id="pageNum">&nbsp;
                 <button onclick="toPage()">go</button>
             </td>
         </tr>
     </tfoot>
	</table>
</form>

</body>
</html>