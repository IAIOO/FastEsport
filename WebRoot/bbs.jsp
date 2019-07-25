<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>论坛首页</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- gallery -->
<link rel="stylesheet" href="css/lightGallery.css" type="text/css" media="all" />
<!-- //gallery -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet">  

<link title="style1" rel="stylesheet" href="css/style1.css" type="text/css" />


<script type="text/javascript">
  function toinfo(vaab201){
	  //实现页面的跳转
	  window.location.href='<%=path%>/bbsQueryPost.html?aab201=' + vaab201;
  }
  
  function doPage(num) {
	  window.location.href='<%=path%>/bbsQuery.html?now=' + num;
  }
  
  function toPage() {
	  var vpageNum = document.getElementById("pageNum").value;
	  if(vpageNum < 1 || vpageNum > ${pageBean.totalPage}){
		  alert("输入页码有误");
	  }
	  else{
	      window.location.href='<%=path%>/bbsQuery.html?now=' + vpageNum;
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
							<a href="<%=path%>/userLoginout.html">退出登录</a>
						</c:otherwise>
					</c:choose>
		</div>
		
		<div class="clearfix"> </div>
	</div>
<!-- banner -->

    <!-- Start of Page Container -->
    <div class="page-container">
            <div class="container">
                    <div class="row">
                    
                    <a href="addtopic.jsp" style="float: right">点我发帖</a>
                       <!-- start of page content -->
                       <div class="span8 main-listing">
                               <c:choose>
							     <c:when test="${rows!=null }">
							         <!-- 显示实际查询到的数据 -->
								     <c:forEach items="${rows }" var="ins" varStatus="vs">
									  <article class="format-standard type-post hentry clearfix">
		                                      <header class="clearfix">
		                                              <h3 class="post-title">
		                                                      <a href="javascript:void(0)" onclick="toinfo(${ins.aab201 })">${ins.aab202 }</a>
		                                              </h3>
		                                              <div class="post-meta clearfix">
		                                                      <span class="date">${ins.aab205 }</span>
		                                                      <span class="category"><a href="#" title="View all posts in Server &amp; Database">${ins.aab102 }</a></span>
		                                              </div><!-- end of post meta -->
		                                      </header>
		                              </article>
								      </c:forEach>
							     </c:when>
							   </c:choose>

                               <div id="pagination">
                                       	<a href="javascript:void(0)" onclick="doPage(1)">首页</a>&nbsp;
						                <a href="javascript:void(0)" onclick="doPage(${pageBean.pageNo-1})">上一页</a>&nbsp;
						                <a href="javascript:void(0)" onclick="doPage(${pageBean.pageNo+1})">下一页</a>&nbsp;
						                <a href="javascript:void(0)" onclick="doPage(${pageBean.totalPage})">末页</a>&nbsp;
						                 	第${pageBean.pageNo}页/第${pageBean.totalPage}页&nbsp;
						                <input type="text" id="pageNum">&nbsp;
						                <button onclick="toPage()">go</button>
                               </div>

                       </div>
                       <!-- end of page content -->
                    </div>
                 </div>
             </div>

</body>
</html>