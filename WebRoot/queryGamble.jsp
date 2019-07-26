<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zzzzzzzzzzb
  Date: 2019/7/9
  Time: 9:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path=request.getContextPath(); %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>a{TEXT-DECORATION:none}</style>
    <style>
        div.selectBox{display:none;position:fixed;top:30%;left:30%;width:300px;height:150px;border:3px solid black;background-color:white;z-index:1002}
        div.selectBox2{display:none;position:fixed;top:30%;left:30%;width:300px;height:150px;border:3px solid black;background-color:white;z-index:1002}
    </style>
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
    <script>
        function showSelectBox() {
            document.getElementById("selectBox").style.display = "block";
            //document.getElementById("selectBox2").style.display = "block";
        }
        function showSelectBox2() {
            //document.getElementById("selectBox").style.display = "block";
            document.getElementById("selectBox2").style.display = "block";
        }
        function cancel() {
            document.getElementById("selectBox").style.display = "none";
            // document.getElementById("shelter").style.display = "none";
        }
        function cancel2() {
            document.getElementById("selectBox2").style.display = "none";
            // document.getElementById("shelter").style.display = "none";
        }

    </script>

    <script language="JavaScript">
        function sumbit2Form() {
            var form1=document.getElementById("personGamble_add");
            var form2=document.getElementById("gamble_modify");

            form1.formAction="<%=path%>/addPersonGamble.html";
            form1.submit();
            form2.formAction="<%=path%>/modifyGamble.html"
            form2.submit();
        }
    </script>
    <script type="text/javascript">



        function onEdit(vaaf401)
        {
            var vform = document.getElementById("myform11");
            vform.action="<%=path%>/findByIdGame.html?aaf101="+vaaf401;
            //alert(vform.action);
            vform.submit();
        }
        
    </script>
    
    <script type="text/javascript" src="js/jquery-3.2.1.js"></script>
    <script>
	    function onMake1() {
	    	$.ajax({
	        	type: 'post',
	            url: "/FastEsport/userQueryPlayer",   
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
	            url: "/FastEsport/playerAc05Add.html",   
	            data: $('#myform1').serialize(),
	            async: false,
	            success: function () {
	   				alert("ok");
	            },
	            error : function() {
	                alert("异常！");
	            }
	        });
	    }
	    function joinQ(){
	        $.ajax({
	            type: 'post',
	            url: "/FastEsport/userAddPersonGamble.html?aaf101=${param.aaf101 }",  
	            data: $('#personGamble_add').serialize(),
	            
	            success: function () {
	   				alert("ok");
	            },
	            error : function() {
	                alert("异常！");
	            }
	        });
	    }
	    function endQ(){
	    	$.ajax({
	            type: 'post',
	            url: "/FastEsport/adminEndGamble.html?aaf101=${param.aaf101 }",   
	            data: $('#endGamble').serialize(),
	            success: function () {
	   				alert("ok");
	            },
	            error : function() {
	                alert("异常！");
	            }
	        });
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
<%--${rows }--%>
<%--<%=session.getId()%>--%>
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
	        <c:if test="${rows[1].aab101==userId ||rows[1].aab101==null}">
	        <form action="addGamble.jsp">
	        	<input type="hidden" name="aaf101" value="${param.aaf101 }">
		        <input type="hidden" name="aab101" value="<%=session.getAttribute("aab101") %>">
		        <input id="buttonn" type="submit" name="next" value="添加竞猜">
	        </form>
	        </c:if>
		    
		        
		    
	    </div>
   </div>
   
	<div id="section">
	<p>当前代币数量：${rows[1].aab110 }</p>
	    <c:choose>
	        <c:when test="${rows !=null}">
	            <c:forEach items="${rows }" var="ins1" varStatus="vs">
	                <table frame="box" align="center">
	                    <tr>
	                        <td>
	                        
					                            竞猜主题：${ins1.aab402 }<br>
	                            <p>选项A：${ins1.aab408 }</p>
	                            <p>A押注：${ins1.aab403 }  A赔率：${ins1.aab405 }</p>
	                            <p>选项B：${ins1.aab409 }</p>
	                            <p>B押注：${ins1.aab404 }  B赔率：${ins1.aab406 }</p>
	                            
	                            
	                            <div id="person">
	                            <c:choose>
	                            	<c:when test="${ins1.aab407 !=null }">
	                            		<p>竞猜已结束</p>
	                            	</c:when>
	                            	<c:when test="${ins1.aab410 ==1 }">
		                            	<c:choose>
		                            		<c:when test="${ins1.aab101!=userId}">
		                                		<input id="btnSelect" type="button" value="参与竞猜" onclick="showSelectBox()"/>
		                                	</c:when>
		                                	<c:otherwise>
		                                		<input id="btnSelect2" type="button" value="结束竞猜" onclick="showSelectBox2()"/>
		                                	</c:otherwise>
		                                </c:choose>
	                                </c:when>
	                                <c:otherwise>
	                                	<p>正在审核中</p>
	                                </c:otherwise>
                                </c:choose>
	                                <div id="selectBox" class="selectBox">
	
	                                    <form id="personGamble_add" action="userAddPersonGamble.html" method="post">
	                                        <select name="aab502">
	                                            <option value="A">${ins1.aab408 }</option>
	                                            <option value="B">${ins1.aab409 }</option>
	                                        </select>
	                                        <input name="aab101" value="<%=session.getAttribute("aab101") %>" type="hidden"/>
	                                        <input name="aaf101" value="${param.aaf101 }" type="hidden"/>
	                                        <input name="aab401" value="${ins1.aab401 }" type="hidden"/>
	                                        <input name="aab403" value="${ins1.aab403 }" type="hidden"/>
	                                        <input name="aab404" value="${ins1.aab404 }" type="hidden"/>
	                                            <input name="aab503"/>
	                                        <br>
	                                            <%--${ins1.aab409 }<input name="aab404" value="${ins1.aab404 }"/>--%>
	                                            <%--<input type="hidden" name="aab401" value="${ins1.aab401 }">--%>
	                                            <%--<a onclick="ok()">OK</a>&nbsp;&nbsp;&nbsp;<a onclick="cancel()">Cancel</a>--%>
	                                        <input type="submit" value="提交">&nbsp;&nbsp;&nbsp;<a onclick="cancel()">取消</a>
	                                    </form>
	                                </div>
	                                <div id="selectBox2" class="selectBox2">
	                                    <form id="endGamble" action="adminEndGamble.html" method="post">
	                                        <input name="aab101" value="<%=session.getAttribute("aab101") %>" type="hidden"/>
	                                        <input name="aab401" value="${ins1.aab401 }" type="hidden"/>
	                                        <input name="aab405" value="${ins1.aab405}" type="hidden"/>
	                                        <input name="aab406" value="${ins1.aab406}" type="hidden"/>
	                                        <p>请选择结束竞猜：</p>
	                                        <select name="aab407">
	                                            <option value="A">${ins1.aab408 }</option>
	                                            <option value="B">${ins1.aab409 }</option>
	                                        </select>
	                                        <br>
	                                        <input type="submit" value="结束竞猜">&nbsp;&nbsp;&nbsp;<a onclick="cancel2()">取消</a>
	                                    </form>
	                                </div>
	                            </div>
	                            <br>
	                        </td>
	                    </tr>
	                </table>
	            </c:forEach>
	        </c:when>
	    </c:choose>
	</div>
</div>

<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
</body>
</html>
