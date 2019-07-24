<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath(); 
if(session.getAttribute("aab101") == null){
	session.setAttribute("aab101", request.getAttribute("aab101"));
	session.setAttribute("aab102", request.getAttribute("aab102"));	
	session.setAttribute("aac114", request.getAttribute("aac114"));
	session.setAttribute("aac101", request.getAttribute("aac101"));
}else{
	session.setAttribute("aab101", session.getAttribute("aab101"));
	session.setAttribute("aab102", session.getAttribute("aab102"));
	session.setAttribute("aac114", session.getAttribute("aac114"));
	session.setAttribute("aac101", session.getAttribute("aac101"));
}
%>
<head>
<title>快电竞赛事管理系统</title>
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


<script type="text/javascript">
var code; //在全局 定义验证码
function createCode() {
	//创建验证码函数
	code = "";
	var codeLength = 4;//验证码的长度
	var selectChar = new Array(2, 3, 4, 5, 6, 7, 8, 9, 'a', 'b', 'c', 'd',
			'e', 'f', 'g', 'h', 'i', 'j', 'k', 'm', 'n', 'p', 'q', 'r',
			's', 't', 'u', 'v', 'w', 'x', 'y', 'z');//所有候选组成验证码的字符，当然也可以用中文的

	for (var i = 0; i < codeLength; i++) {
		var charIndex = Math.floor(Math.random() * 32);
		code += selectChar[charIndex];
	}
	// 设置验证码的显示样式，并显示
	document.getElementById("discode").style.fontFamily = "Fixedsys"; //设置字体
	document.getElementById("discode").style.letterSpacing = "5px"; //字体间距
	document.getElementById("discode").style.color = "#0ab000"; //字体颜色
	document.getElementById("discode").innerHTML = code; // 显示
}

function check() {
	var vcode = document.getElementById("verifycode").value;
	var vaab102 = document.getElementById("aab102").value;
	var vaab104 = document.getElementById("aab104").value;
	if(vaab102 == ""){
		alert("用户名不能为空");
		window.event.returnValue = false;
		return false;
		}
	if(vaab104 == ""){
		alert("密码不能为空");
		window.event.returnValue = false;
		return false;
	}
	if(vcode == ""){
		alert("验证码不能为空");
		window.event.returnValue = false;
		return false;
	}
	if (vcode != code) {
		alert("验证码错误");
		createCode();
		window.event.returnValue = false;
		return false;
	}else{
		document.getElementById("hidebg").style.display="none";
		document.getElementById("win").style.display="none";
	}
}
function gotoLogin(){
	document.getElementById("hidebg").style.display="block";
	document.getElementById("hidebg").style.height=document.body.clientHeight+"px";
	document.getElementById("win").style.display="";
	createCode();
}
function toinfo(vaab201){
	  //实现页面的跳转
	  window.location.href='<%=path%>/bbsQueryPost.html?aab201=' + vaab201;
}
window.onload=function(){
	if("<%=request.getAttribute("msg")%>" != "null"){
		gotoLogin();
	}
}

</script>
</head>
	
<body>
<!-- header -->
<c:set var="userId" scope="session" value='<%=session.getAttribute("aab101") %>'/>
<c:choose>
<c:when test="${userId!=null }">
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
<a href="index.jsp" class="dropdown-toggle menu__link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">首页			
</a>
</li>
		
<!-- 全部赛事 -->	
<li class="dropdown menu__item">
<a href="<%=path %>/competitionQueryForUser.html" class="dropdown-toggle menu__link">全部赛事
</a>
</li>
						
<!-- 赛事管理 -->
<li class="dropdown menu__item">
<a href="competitionQueryGame.html?aab101=<%=session.getAttribute("aab101") %>" class="dropdown-toggle menu__link" >赛事管理
</a>
</li>
							
<!-- 战队管理 -->
<li class="dropdown menu__item">
<a href="index.jsp" class="dropdown-toggle menu__link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">战队管理
	<span class="caret"></span>
</a>
<ul class="dropdown-menu">
	<!-- 	判断是否已创建战队 -->
	<c:set var="teamId" scope="session" value='<%=session.getAttribute("aac114") %>'/>
	<c:if test="${teamId==null }">
	<li>
		<a href="makeTeam.jsp">创建战队</a>
	</li>
	</c:if>
	<c:if test="${teamId==0 }">
	<li>
		<a href="inCheck.jsp">我的战队</a>
	</li>
	</c:if>
	<c:if test="${teamId==1 }">
	<li>
		<a href="teamMyTeam.html?aab101=<%=session.getAttribute("aab101") %>">我的战队</a>
	</li>
	</c:if>
	<li>
		<a href="teamFindForEnlist.html?aab101=<%=session.getAttribute("aab101") %>">发布招募</a>
	</li>
	<li>
		<a href="queryForMyEnlist.jsp">审核招募</a>
	</li>
	<li>
		<a href="teamQueryForOnEnlist.html?aac101=<%=session.getAttribute("aac101")%>&qaac409=1">我的队员</a>
	</li>
	<li>
		<a href="queryForTeam.jsp">报名战队</a>
	</li>
	<li>
		<a href="teamQueryForTeam.html?aab101=<%=session.getAttribute("aab101") %>">我加入的战队</a>
	</li>
	<li>
		<a href="teamFindByIdForPro.html?aab101=<%=session.getAttribute("aab101") %>">职业认证</a>
	</li>
</ul>
</li>

<!-- 论坛天地 -->							
<li class="dropdown menu__item">
<a href="<%=path %>/bbsQuery.html" class="dropdown-toggle menu__link" >论坛天地
</a>
</li>
	
<!-- 商城中心 -->							
<li class="dropdown menu__item">
<a href="<%=path %>/shopUsershop.html" class="dropdown-toggle menu__link" >商城中心
</a>
</li>																					
					</ul>																					
				</nav>
			</div>
		</nav>	
	</div>
</div>
</c:when>
<c:otherwise>
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
<a href="index.jsp" class="dropdown-toggle menu__link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">首页			
</a>
</li>
		
<!-- 全部赛事 -->	
<li class="dropdown menu__item">
<a href="<%=path%>/userLogin.html" class="dropdown-toggle menu__link">全部赛事
</a>
</li>
						
<!-- 赛事管理 -->
<li class="dropdown menu__item">
<a href="<%=path%>/userLogin.html" class="dropdown-toggle menu__link" >赛事管理
</a>
</li>
							
<!-- 战队管理 -->
<li class="dropdown menu__item">
<a href="<%=path%>/userLogin.html" class="dropdown-toggle menu__link">战队管理
	<span class="caret"></span>
</a>
<ul class="dropdown-menu">
	<li>
		<a href="makeTeam.jsp">创建战队</a>
	</li>
	<li>
		<a href="teamMyTeam.html?aab101=<%=session.getAttribute("aab101") %>">我的战队</a>
	</li>
	<li>
		<a href="teamFindForEnlist.html?aab101=<%=session.getAttribute("aab101") %>">发布招募</a>
	</li>
	<li>
		<a href="queryForMyEnlist.jsp">审核招募</a>
	</li>
	<li>
		<a href="queryForTeam.jsp">报名战队</a>
	</li>
	<li>
		<a href="teamFindByIdForPro.html?aab101=<%=session.getAttribute("aab101")%>">职业认证</a>
	</li>
</ul>
</li>

<!-- 论坛天地 -->							
<li class="dropdown menu__item">
<a href="<%=path%>/userLogin.html" class="dropdown-toggle menu__link" >论坛天地
</a>
</li>
	
<!-- 商城中心 -->							
<li class="dropdown menu__item">
<a href="<%=path%>/userLogin.html" class="dropdown-toggle menu__link" >商城中心
</a>
</li>																					
					</ul>																					
				</nav>
			</div>
		</nav>	
	</div>
</div>
</c:otherwise>
</c:choose>
	
<!-- 用户登录模块 -->		
	<div id="hidebg" class="hidebg">
	<!-- 这是遮罩层 -->
	</div>
	<div id="win" class="win" style="display:none">
            <form action="<%=path%>/userLogin.html" method="post">
				<table align="center">
					<tr>
						<td>用户名</td>
						<td><input type="text" name="aab102" id="aab102"/></td>
					</tr>
					<tr>
						<td>密码</td>
						<td><input type="password" name="aab104" id="aab104"/></td>
					</tr>
					<tr>
						<td>请输入验证码：</td>
						<td><input type="text" name="verifycode" id="verifycode"></td>
						<td><span id="discode"></span></td>
						<td><a href="#" onclick="createCode()" >看不清，换一张</td>
					</tr>
					<tr>
						<td><input type="submit" name="login" value="登录" onclick="check()"></td>
						<td><a href="register.jsp">注册</a></td>
					</tr>
					<tr>${msg }</tr>
				</table>
			</form>
        </div>
        
<!-- 管理员裁判以及用户登录使用 -->	
	<div class="header">
		<div class="w3layouts_header_left">
				<div class="top-nav-text">
						<p>Call Us : <span class="call">+00 111 2222 333</span></p>
						<p>Email Us : <span class="mail"><a href="mailto:info@example.com">FastEsport@us.com</a></span></p>
					</div>
				<div class="top-nav-text">
						<p>官方使用 : <span class="mail"><a href="adminlogin.jsp">管理员入口</a></span></p>
						<p><span class="mail"><a href="judgeLogin.jsp">裁判入口</a></span></p>
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
	
<!-- 轮播图展示区域 -->
<div class="banner">
		<!--Slider-->
	<div class="slider">
		<div class="callbacks_container">
			<ul class="rslides" id="slider3">
				<li>
					<div class="slider-img">
						<img src="images/banner1.jpg" class="img-responsive" alt="Fantasy World">
					</div>
					<div class="slider-info">
						
						<h4>Dragon Fin Soup Ridding </h4>
						  <p>World building is component of fantasy </p>
						<a href="#about" class="hvr-shutter-in-horizontal scroll">Read More</a>
					</div>
				</li>
				<li>
					<div class="slider-img">
						<img src="images/banner2.jpg" class="img-responsive" alt="Fantasy World">
					</div>
					<div class="slider-info">
					 
						<h4>Girl Dragon fantasy sword wing</h4>
						   <p>World building is component of fantasy </p>
				<a href="#about" class="hvr-shutter-in-horizontal scroll">Read More</a>
					</div>
				</li>
				<li>
					<div class="slider-img">
						<img src="images/banner3.jpg" class="img-responsive" alt="Fantasy World">
					</div>
					<div class="slider-info">
						
						<h4>Danger bear guy pistol moment</h4>
					   <p>World building is component of fantasy </p>
					<a href="#about" class="hvr-shutter-in-horizontal scroll">Read More</a>
					</div>
				</li>


			</ul>
			
		</div>
		<div class="clearfix"></div>
	</div>
</div>

<!-- FastEsport平台介绍 -->
<div class="modal fade" id="myModal1" role="dialog">
	<div class="modal-dialog">
	<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4>Contracts</h4>
				<img src="images/ab.jpg" alt=" " class="img-responsive">
				<h5>Donec lobortis pharetra dolor</h5>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, rds which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.</p>
			</div>
		</div>
	</div>
</div>
<!-- 关于我们平台 -->
<div class="about" id="about">
	<div class="container">
		<div class="col-md-4 agileits_about_left">
			<h3 class="w3l_head">About Us</h3>
			<p class="w3ls_head_para">who we are</p>
		</div>
		<div class="agileits_banner_bottom_grids">
			<div class="col-md-6 agileits_banner_bottom_grid_l">
				<h4>Aliquam a nunc non erat lobortis</h4>
				<p><i>Vestibulum nec consequat nisl. Aliquam vehicula egestas commodo. 
					Pellentesque lorem magna, pulvinar sed lacinia et, venenatis in mi.</i>Nullam sodales rutrum nisl, gravida porttitor lectus porta et. 
					Duis purus arcu, semper at magna faucibus, elementum maximus ligula. 
					Etiam imperdiet posuere odio gravida vehicula. Nulla consectetur massa 
					eget tincidunt suscipit. Integer vitae ex eros. Cras ornare dignissim 
					scelerisque.</p>
			</div>
			<div class="col-md-6 agileits_banner_bottom_grid_r">
				<div class="agileits_banner_btm_grid_r">
					<img src="images/ab.jpg" alt=" " class="img-responsive">
					<div class="agileits_banner_btm_grid_r_pos">
						<img src="images/ab1.jpg" alt=" " class="img-responsive">
					</div>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!-- //关于我们平台 -->


<!-- 九图展示平台 -->
<div class="team-bottom" id="work">
	<div class="container">
		<h3 class="w3l_head w3l_head1">Latest Gallery</h3>
		<p class="w3ls_head_para w3ls_head_para1">Lorem Ipsum Dolor</p>
		<div class="w3layouts_gallery_grids">
			<ul class="w3l_gallery_grid" id="lightGallery">
				<li data-title="Games" data-desc="Lorem Ipsum is simply dummy text of the printing." data-src="images/ab.jpg" data-responsive-src="images/8.jpg"> 
					<div class="w3layouts_gallery_grid1 box">
						<a href="#">
							<img src="images/ab.jpg" alt=" " class="img-responsive" />
							<div class="overbox">
								<h4 class="title overtext"> Fantasy World</h4>
								
							</div>
						</a>
					</div>
				</li>
				<li data-title="Games" data-desc="Lorem Ipsum is simply dummy text of the printing." data-src="images/g1.jpg" data-responsive-src="images/9.jpg"> 
					<div class="w3layouts_gallery_grid1 box">
						<a href="#">
							<img src="images/g1.jpg" alt=" " class="img-responsive" />
							<div class="overbox">
								<h4 class="title overtext"> Fantasy World</h4>
								
							</div>
						</a>
					</div>
				</li>
				<li data-title="Games" data-desc="Lorem Ipsum is simply dummy text of the printing." data-src="images/g2.jpg" data-responsive-src="images/10.jpg"> 
					<div class="w3layouts_gallery_grid1 box">
						<a href="#">
							<img src="images/g2.jpg" alt=" " class="img-responsive" />
							<div class="overbox">
								<h4 class="title overtext"> Fantasy World</h4>
								
							</div>
						</a>
					</div>
				</li>
				<li data-title="Games" data-desc="Lorem Ipsum is simply dummy text of the printing." data-src="images/g3.jpg" data-responsive-src="images/11.jpg"> 
					<div class="w3layouts_gallery_grid1 box">
						<a href="#">
							<img src="images/g3.jpg" alt=" " class="img-responsive" />
							<div class="overbox">
								<h4 class="title overtext"> Fantasy World</h4>
								
							</div>
						</a>
					</div>
				</li>
				<li data-title="Games" data-desc="Lorem Ipsum is simply dummy text of the printing." data-src="images/g4.jpg" data-responsive-src="images/12.jpg"> 
					<div class="w3layouts_gallery_grid1 box">
						<a href="#">
							<img src="images/g4.jpg" alt=" " class="img-responsive" />
							<div class="overbox">
								<h4 class="title overtext"> Fantasy World</h4>
								
							</div>
						</a>
					</div>
				</li>
				<li data-title="Games" data-desc="Lorem Ipsum is simply dummy text of the printing." data-src="images/g5.jpg" data-responsive-src="images/13.jpg"> 
					<div class="w3layouts_gallery_grid1 box">
						<a href="#">
							<img src="images/g5.jpg" alt=" " class="img-responsive" />
							<div class="overbox">
								<h4 class="title overtext"> Fantasy World</h4>
								
							</div>
						</a>
					</div>
				</li>
				<li data-title="Games" data-desc="Lorem Ipsum is simply dummy text of the printing." data-src="images/g8.jpg" data-responsive-src="images/14.jpg"> 
					<div class="w3layouts_gallery_grid1 box">
						<a href="#">
							<img src="images/g8.jpg" alt=" " class="img-responsive" />
							<div class="overbox">
								<h4 class="title overtext"> Fantasy World</h4>
							
							</div>
						</a>
					</div>
				</li>
				<li data-title="Games" data-desc="Lorem Ipsum is simply dummy text of the printing." data-src="images/g6.jpg" data-responsive-src="images/15.jpg"> 
					<div class="w3layouts_gallery_grid1 box">
						<a href="#">
							<img src="images/g6.jpg" alt=" " class="img-responsive" />
							<div class="overbox">
								<h4 class="title overtext"> Fantasy World</h4>
								
							</div>
						</a>
					</div>
				</li>
				<li data-title="Games" data-desc="Lorem Ipsum is simply dummy text of the printing." data-src="images/g7.jpg" data-responsive-src="images/16.jpg"> 
					<div class="w3layouts_gallery_grid1 box">
						<a href="#">
							<img src="images/g7.jpg" alt=" " class="img-responsive" />
							<div class="overbox">
								<h4 class="title overtext"> Fantasy World</h4>
							
							</div>
						</a>
					</div>
				</li>
			</ul>
		</div>
	</div>
</div>
	<!-- //gallery -->
	<div class="tlinks">Collect from <a href="http://www.cssmoban.com/" >ææºç½ç«æ¨¡æ¿</a></div>
	<!-- //projects -->


	
<!-- footer -->
	<div class="w3l_footer">
		<div class="container">
			
			<div class="w3ls_footer_grids">
				
				<div class="w3ls_footer_grid">
					<div class="col-md-4 w3ls_footer_grid_left">
						<div class="w3ls_footer_grid_leftl">
							<i class="fa fa-map-marker" aria-hidden="true"></i>
						</div>
						<div class="w3ls_footer_grid_leftr">
							<h4>Location</h4>
							<p>3030 New York, NY, USA</p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="col-md-4 w3ls_footer_grid_left">
						<div class="w3ls_footer_grid_leftl">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</div>
						<div class="w3ls_footer_grid_leftr">
							<h4>Email</h4>
							<a href="mailto:info@example.com">info@example.com</a>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="col-md-4 w3ls_footer_grid_left">
						<div class="w3ls_footer_grid_leftl">
							<i class="fa fa-phone" aria-hidden="true"></i>
						</div>
						<div class="w3ls_footer_grid_leftr">
							<h4>Call Us</h4>
							<p>(+000) 003 003 0052</p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
	</div>
<!-- //footer -->


<!--banner Slider starts Here-->
<script src="js/jquery-2.2.3.min.js"></script> 
						<script src="js/responsiveslides.min.js"></script>
							<script>
								// You can also use "$(window).load(function() {"
								$(function () {
								  // Slideshow 4
								  $("#slider3").responsiveSlides({
									auto: true,
									pager:false,
									nav:true,
									speed: 500,
									namespace: "callbacks",
									before: function () {
									  $('.events').append("<li>before event fired.</li>");
									},
									after: function () {
									  $('.events').append("<li>after event fired.</li>");
									}
								  });
							
								});
							 </script>
							 <!-- js -->
<!-- start-smoth-scrolling -->
	<script src="js/lightGallery.js"></script>
	<script>
    	 $(document).ready(function() {
			$("#lightGallery").lightGallery({
				mode:"fade",
				speed:800,
				caption:true,
				desc:true,
				mobileSrc:true
			});
		});
    </script>

<script src="js/owl.carousel.js"></script> 
<link href="css/owl.theme.css" rel="stylesheet">
 <link rel="stylesheet" href="css/owl.carousel.css" type="text/css" media="all">
<script>
$(document).ready(function() { 
	$("#owl-demo").owlCarousel({
 
		autoPlay: 3000, //Set AutoPlay to 3 seconds
		  autoPlay : true,
		   navigation :true,

		items : 4,
		itemsDesktop : [640,5],
		itemsDesktopSmall : [414,4]
 
	});
	
}); 
</script>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<!-- //js -->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
</body>
</html>