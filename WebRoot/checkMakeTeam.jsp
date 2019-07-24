<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path = request.getContextPath(); %>
<head>
<title>Others</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
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

<link rel="stylesheet" href="css/style1.css" type="text/css" />
<link rel="stylesheet" href="css/table.css" type="text/css" />

<!-- 编辑你的script -->
<script type="text/javascript">
function onLook(vaac101)
{	 
	 var vform = document.getElementById("myform");
	 vform.action="<%=path%>/teamMyTeam.html?aac101="+vaac101;
	 vform.submit();
}
</script>
</head>
	
<body>
<!-- header -->
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


<!-- 自由修改区域 -->
<!-- 自由修改区域 -->
<!-- 自由修改区域 -->
<div class="form_content2">
<form id="myform" action="<%=path%>/teamQueryForCheckTeam.html" method="post">
<fieldset>
        <legend>创建战队审核</legend>
        <div class="form-row">
			<div class="field-label"><label for="field4">待审核</label>:</div>
            <div class="field-widget">
            <e:radio name="qaac114" value="待审核:0,已审核:1" defval="0" />
			</div>
        </div>
        <div class="form-row">
			<div class="field-label"><label for="field4">职业/非职业战队</label>:</div>
            <div class="field-widget">
            <e:radio name="qaac111" value="职业战队:1,非职业:0" defval="1" />
			</div>
			<div class="field-label"><label for="field4">申请日期</label>:</div>
            <div class="field-widget">
            <e:date name="qaac110" style="height: 27px;" />
			</div>
        </div>        
</fieldset>
  
<fieldset>
<table> 
    <thead> 
    <tr>
	<td></td>
	<td>战队名称</td>
	<td>战队类型</td>
	<td>申请日期</td>
	</tr>
    </thead> 
    <tbody> 
		   <c:choose>
     <c:when test="${rows!=null }">
         <!-- 显示实际查询到的数据 -->
	     <c:forEach items="${rows }" var="ins" varStatus="vs">
    	   	  <tr>
			    <td>${vs.count }</td>
			    <td>${ins.aac103 }</td>
			    <td>${ins.aac102 }</td>
			    <td>${ins.aac110 }</td>
			    <td>
			      <!-- #  空锚 -->
			      <a href="#" onclick="onLook('${ins.aac101 }')">审核</a>
			    </td>
			  </tr>
	      </c:forEach>
	      <!-- 补充空行 -->
	      <c:forEach begin="${fn:length(rows)+1 }" step="1" end="15">
		          <tr>
		            <td></td>
		            <td></td>
		            <td></td>
		            <td></td>
		            <td></td>
		          </tr>
	      </c:forEach>
     </c:when>
		     <c:otherwise>
		        <c:forEach begin="1" step="1" end="15">
		           <tr>
		             <td></td>
		             <td></td>
		             <td></td>
		             <td></td>
		             <td></td>
		           </tr>
		        </c:forEach>
		     </c:otherwise>
		   </c:choose>
    </tbody> 
</table>
<div class="form-row">  
<input class="submit" type="submit" name="next" value="查询">
<input class="reset" type="button" value="返回" onclick="valid.reset(); return false" />
</div>     
     </fieldset>

        		</form>
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

<script type="text/javascript" src="js/city.js"></script>
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
</body>
</html>