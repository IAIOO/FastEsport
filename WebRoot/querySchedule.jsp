<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%--
  Created by IntelliJ IDEA.
  User: zzzzzzzzzzb
  Date: 2019/7/10
  Time: 14:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GBK" language="java" %>
<%String path=request.getContextPath(); %>
<html>
<head>
    <title>Title</title>
    <style>a{TEXT-DECORATION:none}</style>
    <script>
    function onEdit(vaaf201)
    {
        var vform = document.getElementById("myform");
        vform.action="<%=path%>/queryGamble.html?aaf101="+vaaf201;
        //alert(vform.action);
        vform.submit();
    }
    </script>
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
	            url: "/FastEsport/userQueryPlayer.html",   
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
						</c:otherwise>
					</c:choose>
		</div>
		
		<div class="clearfix"> </div>
	</div>
<!-- banner -->
</head>
<body>

<div>
    <c:if test="${ins.aav103!=null }">
	    <div id="header">
	    	
	    </div>
    </c:if>
    <div id="game_message" align="center">
	    <div>
	    	
	        <form id="myform1">
				<input type="hidden" name="aaf101" value="${param.aaf101 }">
				<input type="hidden" name="aab101" value="<%=session.getAttribute("aab101") %>">
	            <input id="buttonn" type="submit" value="立刻报名"  onclick="onMake()">  
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
		<div >
			<div style="float: left;width: 1100px">
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
		    </div>
	
		    <div id="myform" style="float: left;width: 1100px">
		        <table>
		            <c:forEach items="${rows }" var="ins" varStatus="vs">
		
		                <tr style="height: 60px;margin-top: 0px">
		                    <td width="200px" align="center">
		                        	未开始
		                    </td>
		                    <td width="300px" align="center">
		                            ${ins.aaf204}
		                    </td>
		                    <td width="250px" align="center">
		                            ${ins.namea}
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
		                            ${ins.nameb}
		                    </td>
		                </tr>
		
		            </c:forEach>
		        </table>
		    </div>
		</div>
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
