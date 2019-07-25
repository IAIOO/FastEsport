<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%String path = request.getContextPath(); %>
<html>
<head>
<title>
	<c:forEach items="${rows }" var="ins" varStatus="vs">
		<c:if test="${ins.aab202 != null }">
		${ins.aab202 }
		</c:if>
	</c:forEach>
</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- gallery -->
<link rel="stylesheet" href="css/lightGallery.css" type="text/css" media="all" />
<!-- //gallery -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet">  

<link title="style1" rel="stylesheet" href="css/style1.css" type="text/css" />
<style>
.report{
    width:20%; margin-top:20%; margin:auto; padding:28px;
    height:250px; border:1px #111 solid;
    display:none;            /* 默认对话框隐藏 */
}
.report.show{display:block;} 
.report input[type="hidden"]{
width:100%; font-size:18px; margin-top:18px;
}
.report textarea{
width: 125%;
}
.report button{
width: 125%;
}
</style>

<script type="text/javascript">
function onReport(vaab101b,vaab201){
	document.getElementById('report').style.display='block'; 
	document.getElementById("aab101b").value=vaab101b;
	document.getElementById("aab201").value=vaab201;
}

function cancel(){
	document.getElementById('report').style.display='none';
	window.event.returnValue = false;
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
							<a href="#"><%=session.getAttribute("aab102") %></a>
							<a href="<%=path%>/userLoginout.html">退出登录</a>
						</c:otherwise>
					</c:choose>
		</div>
		
		<div class="clearfix"> </div>
	</div>
<!-- banner -->
 <!-- Start of Page Container -->
    <div class="page-container" align="center">
       <div class="container">
             <div class="row">
             
                <!-- start of page content -->
                <div class="span8 main-listing">
				    <c:choose>
				     <c:when test="${rows!=null }">
				         <!-- 显示实际查询到的数据 -->
					     <c:forEach items="${rows }" var="ins" varStatus="vs">
						  <article class="format-standard type-post hentry clearfix">
						  <c:choose>
						  	<c:when test="${ins.aab202 != null }">
				               <header class="clearfix">
				                   <h3 class="post-title">
				                           <a>${ins.aab202 }</a>
				                   </h3>
				                   <div class="post-meta clearfix">
			                          	<span class="category"><a href="#" title="View all posts in Server &amp; Database">${ins.aab102 }</a></span>
										<span class="date">${ins.aab205 }</span>
										<span><a href="#" onclick="onReport(${ins.aab101 },${ins.aab201 })">举报</a></span>
				                   </div><!-- end of post meta -->
				               </header>
				               <p>${ins.aab203 }</p>
				               <br></br>
			               	</c:when>
			               	<c:otherwise>
			               		<header class="clearfix">
				                   <div class="post-meta clearfix">
			                          	<span class="category"><a href="#" title="View all posts in Server &amp; Database">${ins.aab102 }</a></span>
										<span class="date">${ins.aab205 }</span>
										<span><a href="#" onclick="onReport(${ins.aab101 },${ins.aab201 })">举报</a></span>
				                   </div><!-- end of post meta -->
				               </header>
				               <p>${ins.aab203 }</p>
			               	</c:otherwise>
			               </c:choose>
				               
				          </article>
					     </c:forEach>
					    </c:when>
					  </c:choose>

                <!-- end of page content -->
             </div>
          </div>
      </div>
	<div class="form_content">
    <form id="test" action="<%=path %>/bbsAddPost.html" method="post">
	   <fieldset>
		<div class="form-row">
	           <div class="field-label"><label for="field1">回复</label>:</div>
	           <div class="field-widget"><input name="aab203" id="field1" class="required" title="Enter your name" /></div>
	       </div>
	       <input type="hidden" name="aab101" value="<%=session.getAttribute("aab101")%>">
	       <input type="hidden" name="aab204" value="<%=request.getParameter("aab201")%>">
	   </fieldset>
    	<input type="submit" class="submit" value="回复" /> <input class="reset" type="button" value="清空" onclick="valid.reset(); return false" />
    </form>
    </div>
        

	<div class="report" id="report">
		<form action="<%=path %>/bbsReport.html">
			<table>
				<tr><td>请输入举报原因：</td></tr>
				<tr><td><e:textarea rows="5" cols="20" name="aab603" required="true"/></td></tr>
				<tr>
					<td><input type="hidden" id="aab101b" name="aab101b" value=""></td>
					<td><input type="hidden" id="aab201" name="aab201" value=""></td>
					<td><input type="hidden" name="aab101a" value="<%=session.getAttribute("aab101")%>"></td>
				</tr>
				<tr>
					<td><input type="submit" name="next" value="提交"></td>
					<td><button onclick="cancel()">取消</button></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>