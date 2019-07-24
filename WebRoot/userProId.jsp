<!DOCTYPE html>
<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%String path = request.getContextPath();%>
<head>
<title>Others</title>
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

<!-- 编辑你的script -->
<script type="text/javascript">
function onMake() {
    var formData1 = new FormData($('#form2')[0]);
    $.ajax({
        type: 'post',
        url: '<%=path%>/uploadProIdPic',
        data: formData1,
        dataType: "text",
        contentType: false, //不设置内容类型
        processData: false, //不处理数据
        success: function (data) {
        	alert(data);
        	$("#aac202").attr("value",data);
            var formData2 = new FormData($('#form3')[0]);
            $.ajax({
                type: 'post',
                url: '<%=path%>/uploadUserIdPic',
                data: formData2,
                dataType: "text",
                contentType: false, //不设置内容类型
                processData: false, //不处理数据
                success: function (data) {
                	alert(data);
                	$("#aac208").attr("value",data);
	  		  		var vform = document.getElementById("form1");
	  		  		vform.action="<%=path%>/teamUserProId.html";
	  		  		vform.submit();
	  	        	alert("申请职业认证成功!");
                },
                   error : function() {
                       alert("异常！");
                   }
            });
        	
        },
           error : function() {
               alert("异常！");
           }
    });	
}
</script>
</head>
	
<body>
<!-- header -->
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
<a href="index.jsp">首页			
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
<!-- banner -->


<!-- 自由修改区域 -->
<!-- 自由修改区域 -->
<!-- 自由修改区域 -->
<div class="form_content1">
    <form id="form1" name="form1">
    <fieldset>
        <legend>个人职业认证</legend>         
        <div class="form-row">
            <div class="field-label"><label for="field4">平台昵称</label>:</div>
            <div class="field-widget"><e:text name="aac102" defval="${ins.aab102 }"/></div>
        </div>
        <div class="form-row">
            <div class="field-label"><label for="field6">用户编号</label>:</div>
            <div class="field-widget"><e:text name="aab103" defval="${ins.aab103 }"/></div>
        </div>
        <div class="form-row">
            <div class="field-label"><label for="field6">联系电话</label>:</div>
            <div class="field-widget"><e:text name="aab105" defval="${ins.aab105 }"/></div>
        </div>
        <div class="form-row">
            <div class="field-label"><label for="field6">联系邮箱</label>:</div>
            <div class="field-widget"><e:text name="aab106" defval="${ins.aab106 }"/></div>
        </div>
        <div class="form-row">
            <div class="field-label"><label for="field6">真实姓名</label>:</div>
            <div class="field-widget"><e:text name="aac206" defval="${ins.aac206 }"/></div>
        </div>
        <div class="form-row">
            <div class="field-label"><label for="field6">身份证号</label>:</div>
            <div class="field-widget"><e:text name="aac207" defval="${ins.aac207 }"/></div>
        </div>
        <div class="form-row">
            <div class="field-label"><label for="field6">职业履历</label>:</div>
            <div class="field-widget"><e:textarea rows="15" cols="80" name="aac203" defval="${ins.aac203 }"/></div>
        </div>
        <div class="form-row">
            <div class="field-label"><label for="field6">个人荣誉</label>:</div>
            <div class="field-widget"><e:textarea rows="15" cols="80" name="aac205" defval="${ins.aac205 }"/></div>
        </div> 
        <input type="hidden" name="aab101" value="<%=session.getAttribute("aab101")%>">    
        <input type="hidden" name="aac204" value="0">
        <input type="hidden" id="aac202" name="aac202">
	    <input type="hidden" id="aac208" name="aac208">
		</fieldset>
	</form> 
	
	<form id="form2" enctype="multipart/form-data">
	<fieldset>
	<div>
		<span>上传图片证明材料：</span> 
		<input type="file" id="proIdPic" name="proIdPic"> 
	    <i>图片是jpg,png格式，但须小于1M.</i>
	</div>
	</fieldset>
	</form>

	<form id="form3" enctype="multipart/form-data">
	<fieldset>
	<div>
		<span>上传身份证：</span> 
		<input type="file" id="userIdPic" name="userIdPic"> 
	    <i>图片是jpg,png格式，但须小于1M.</i>
	</div>
	</fieldset>
	</form>
	<div class="from-row">
	    <input class="submit" type="button" onclick="onMake()" value="申请职业认证">
	    <input class="reset" type="button" value="返回" onclick="valid.reset(); return false" />	
	</div>
</div>
<!-- 自由修改区域 -->
<!-- 自由修改区域 -->
<!-- 自由修改区域 -->

<!-- Modal1 -->
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
<!-- //Modal1 -->





<!-- gallery -->
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

<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
</body>
</html>