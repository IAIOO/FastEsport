<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zzzzzzzzzzb
  Date: 2019/7/16
  Time: 18:50
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=GBK" language="java" %>
<%String path=request.getContextPath();%>
<html>
<head>
    <title>Title</title>
    <style>
    	div.selectBox{
			display:none;
			position:fixed;
			top:30%;
			left:30%;
			width:300px;
			height:300px;
			border:3px solid black;
			background-color:white;
			z-index:1002;
		}
   	</style>
    <script type="text/javascript" src="js/jquery-3.2.1.js"></script>
    <script>
	    function onMake1() {
	    	$.ajax({
	        	type: 'post',
	            url: "<%=path%>/userQueryPlayer.html",   
	            data: $('#myform2').serialize(),
	            /* success: function(dates) {
	            	$("#section").html(dates)
	            	//alert(dates);
	            },
	    		error: function() {
	    			alert("异常");
	    		} */
	           
	        });
	    	
	        
	    }
	    function onMake(){
	        $.ajax({
	            type: 'post',
	            url: "<%=path%>/playerAc05Add",   
	            data: $('#myform1').serialize(),
	            success: function () {
	   				alert("ok");
	            },
	            error : function() {
	                alert("异常！");
	            }
	        });
	    }
        function myFunction(vaaf1011)
        {
            var vform = document.getElementById("myform");
            vform.action="<%=path%>/userQueryGamble.html?aaf101="+vaaf1011;
            //alert(vform.action);
            vform.submit();
        }
       
        
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
							<a href="<%=path%>/userLoginout.html">退出登录</a>
						</c:otherwise>
					</c:choose>
		</div>
		
		<div class="clearfix"> </div>
	</div>
<!-- banner -->
</head>
<body>
<c:set var="userId" scope="session" value='<%=session.getAttribute("aab101") %>'/>
<div>
	<c:if test="${ins.aav103!=null }">
	    <div id="header">
	    	
	    </div>
    </c:if>
    <div id="game_message" align="center">
	    <div>
	    	
	        <form id="myform1" action="<%=path%>/playerAc05Add.html">
				<input type="hidden" name="aaf101" value="${param.aaf101 }">
				<input type="hidden" name="aab101" value="<%=session.getAttribute("aab101") %>">
	            <input id="buttonn" type="submit" value="立刻报名" >  
	        </form>
	        
		    <form id="myform2" action="<%=path%>/userQueryPlayer.html">
		    	<input type="hidden" name="aaf101" value="${param.aaf101 }">
		        <input type="hidden" name="aab101" value="<%=session.getAttribute("aab101") %>">
		    	<input id="buttonn" type=submit value="参赛列表" >
		    </form>
	    
		    <form id="myform3">
		        <input id="buttonn" type="submit" value="查看赛程"
		               formaction="<%=path%>/userQuerySchedule.html">
		        <%-- <input type="submit" name="next" value="导出比赛报名表excel"
		               formaction="<%=path%>/judgeExportExcel.html"> --%>
		               
		        <input type="hidden" name="aaf101" value="${param.aaf101 }">
		        <input type="hidden" name="aab101" value="<%=session.getAttribute("aab101") %>">
	        </form>
	        <form id="myform4">
	        	<input type="hidden" name="aaf101" value="${param.aaf101 }">
		        <input type="hidden" name="aab101" value="<%=session.getAttribute("aab101") %>">
		        <input id="buttonn" type="submit" name="next" value="查看竞猜"
		               formaction="<%=path%>/userQueryGamble.html">
	        </form>
		        
		        
		    
	    </div>
   </div>
   <div id="section"> 
   		
        <%-- <c:if test="${rows[1].userid==userId}">
   		<form action="<%=path%>/judgeExportExcel.html">
   			<input type="hidden" name="aaf101" value="${param.aaf101 }">
			<input type="submit" value="导出比赛报名表">
		</form>
		</c:if> --%>
   		<div>
			<div style="float: left;width: 1100px">
			    <table>
			        <tr>
			            <td style="width: 200px;text-align: center">
			                	名称
			            </td>
			            <td style="width: 300px;text-align: center">
			                	编号
			            </td>
			            <td style="width: 600px;text-align: center">
			                	是否为职业选手
			            </td>
			        </tr>
			    </table>
		    </div>
	
		    <div id="myform" style="float: left;width: 1100px">
		        <table>
		            <c:forEach items="${rows }" var="ins" varStatus="vs">
						
		                <tr style="height: 60px;margin-top: 0px">
		                	<td>${vs.count }</td>
		                    <td width="200px" align="center">
		                        	${ins.aab102 }
		                    </td>
		                    <td width="300px" align="center">
		                            ${ins.aab103 }
		                    </td>
		                    <td width="600px" align="center">
		                            ${ins.ab108val }
		                    </td>
		                </tr>
		
		            </c:forEach>
		        </table>
		    </div>
		</div>
		
	    
   </div>
</div>

</body>
</html>
