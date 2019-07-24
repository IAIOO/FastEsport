<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%String path = request.getContextPath(); %>
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
	     	var formData = new FormData($('#form2')[0]);
	  	    $.ajax({
	  	        type: 'post',
	  	        url: '<%=path%>/uploadIdPic',
	  	        data: formData,
	  	        dataType: "text",
	  	        contentType: false, //不设置内容类型
	  	        processData: false, //不处理数据
	  	        success: function (data) {
	  	        	 $("#aac109").attr("value",data);
	  		  		 var vform = document.getElementById("form1");
	  		  		 vform.action="<%=path%>/teamMakeTeam.html";
	  		  		 vform.submit();
	  	        	 alert("申请创建战队成功!");
	  	        },
	           error : function() {
	               alert("异常!");
	           }
	  	    });		  	    
}
function onTeam(){
	    var formData = new FormData($('#form3')[0]);
	    $.ajax({
	        type: 'post',
	        url: '<%=path%>/uploadTeamPic?aab101=<%=session.getAttribute("aab101")%>',
	        data: formData,
	        dataType: "text",
	        contentType: false, //不设置内容类型
	        processData: false, //不处理数据
	        success: function (data) {
	        	$("#aac115").attr("src",data);
	        	$("#aac115").show();
	        },
	           error : function() {
	               alert("异常！");
	           }
	    });	
}
function onCheck(){ 
	$.ajax({
        type: 'post',
        url: '<%=path%>/teamCheckTeam.html',
        data: $("#form4").serialize(),
        dataType: "text",
        success: function () {
        	alert("已通过！");    	
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


<!-- 自由修改区域 -->
<!-- 自由修改区域 -->
<!-- 自由修改区域 -->
	<div class="form_content">
    <form id="form1" name="form1">
  	<input type="hidden" id="aab101" name="aab101" value="<%=session.getAttribute("aab101") %>">
    <fieldset>
        <c:if test="${ins.aac114==null||ins.aac114==1}"><legend>${empty ins.aac102?'创建':'我的' }战队</legend></c:if>
        <c:if test="${ins.aac114==0}"><legend>审核战队</legend></c:if>         
        <div class="form-row">
            <div class="field-label"><label for="field6">战队类型</label>:</div>
            <div class="field-widget">
                <select id="aac102" name="aac102" onchange="ChooseClanType(this.value)">
                    	<option value="1">职业战队</option>
						<option value="2">高校战队</option>
						<option value="3">网吧战队</option>
						<option value="4">自由战队</option>
                </select>
            </div>
        </div>
        
        <div class="form-row">
            <div class="field-label"><label for="field4">战队名称</label>:</div>
            <div class="field-widget"><input  style="height:23px;width: 145px;" type="text" name="aac103" value="${ins.aac103 }"/></div>
        </div>
        
        <div class="form-row">
            <div class="field-label"><label for="field6">所属城市</label>:</div>
            <div class="field-widget">
			<select id="province" name="aac104" onchange="selectprovince(this.value);" style="width: 95px;"></select> 
			<select id="city" name="aac104" style="width: 95px;"></select>
            </div>
        </div>
         
        <div class="form-row" id="rProTeam" name="rProTeam" style="display: block">
            <div class="field-label"><label for="field4">俱乐部名称</label>:</div>
            <div class="field-widget"><input  style="height:23px;width: 145px;" type="text" name="aac105" value="${ins.aac105 }" class="required"/></div>
        </div>
        
        <div id="rSchoolTeam" name="rSchoolTeam" style="display: none">
        	<div class="form-row">
            <div class="field-label"><label for="field4">高校名称</label>:</div>
            <div class="field-widget"><input  style="height:23px;width: 145px;" type="text" name="aac105" value="${ins.aac105 }" class="required"/></div>
            </div>
            <div class="form-row">
            <div class="field-label"><label for="field4">所属院校</label>:</div>
            <div class="field-widget"><input  style="height:23px;width: 145px;" type="text" name="aac112" value="${ins.aac112 }" class="required"/></div>
            </div>
        </div>
        
        <div class="form-row" id="rCafeTeam" name="rCafeTeam" style="display: none">
            <div class="field-label"><label for="field4">网吧名称</label>:</div>
            <div class="field-widget"><input  style="height:23px;width: 145px;" class="required" type="text" name="aac105" value="${ins.aac105 }"/></div>
        </div>
        
        <div class="form-row">
            <div class="field-label"><label for="field4">联系地址</label>:</div>
            <div class="field-widget"><input class="required" type="text" name="aac106" value="${ins.aac106 }"/></div>
        </div>
        
        <div class="form-row">
            <div class="field-label"><label for="field4">游戏类型</label>:</div>
            <div class="field-widget">
            <e:groupbox name="aac107" value="DOTA2:1,LOL:2,王者荣耀:3,CSGO:4,PUBG:5,OW:6,星际争霸2:7,魔兽争霸3:8,炉石传说:9" 
			newLineNumber="5" defval="${ins.aac107 }" />
			</div>
        </div>
        
        <div class="form-row">
            <div class="field-label"><label for="field3">战队介绍：</label></div>
            <div class="field-widget"><e:textarea rows="5" cols="45" name="aac108" defval="${ins.aac108 }"/></div>
        </div>  
        
        <input type="hidden" id="aac109" name="aac109">
		<!--   职业认证
		<input style="display: none" name="aac111" value="0"> 在AC01servicesImpl中完成-->
		<!--  审核状态-->
		<input style="display: none" name="aac114" value="0">
		<input style="display: none" name="aac115" value="0">
		</fieldset>
	</form> 
	
	<c:choose>
		<c:when test="${ins.aac114==1 }">
		<form id="form3" enctype="multipart/form-data">
		<fieldset>
			<div>
			    <span style="color:#00CC00">${empty ins.aac115?'暂未设置':'更改' }战队头像：</span>
				<input type="file" id="teamPic" name="teamPic" style="color:#00CC00"> 
			    <i style="color:#00CC00">图片是JPG,PNG格式，但须小于1M.</i>
			    <input type="button" onclick="onTeam()" value="上传">
			</div>
		    <div style="width:120px;height: 180px;position: absolute;left:915px; top:175px;">
		    <span style="color:#FFFFFF;">Team LOGO :</span><br>
		    <img id="aac115" src="${ins.aac115 }" style="width:120px;height: 180px;display:none;"> 
		    </div>
		</fieldset>
		</form>
		</c:when>
		<c:when test="${ins.aac114==null }">
		<form id="form2" enctype="multipart/form-data">
		<fieldset>
			<div class="form-row">
				<div class="field-label"><span>上传<span id="imgname">职业证明</span>：</span></div> 
				<div class="field-widget">
				<input type="file" id="idPic" name="idPic"> 
			    <i>图片必须是jpg,png格式,且须小于1M.</i>
			    </div>
			</div>
		</fieldset>
		</form>
		</c:when>
		<c:when test="${ins.aac114==0}">
			<div class="from-row" style="width:500px;height: 180px;">
		    <span style="color:#FFFFFF;">图片证明材料 :</span><br>
		    <img src="${ins.aac109 }" style="width:500px;height: 180px;"> 
		    </div>
		</c:when>
	</c:choose>   
		<c:if test="${ins==null }">
		    <input class="submit" type="submit" value="申请创建战队" onclick="onMake()" /> 
		</c:if>
		<div class="from-row">
		<c:if test="${ins.aac114==0 }">
		<form id="form4">
		<input type="hidden" name="aac101" value="${ins.aac101 }">	
		<input class="submit" type="submit" value="通过" onclick="onCheck()"/>
		</form>
		</c:if>
		<input class="reset" type="button" onclick="javascript:location.href='<%=path%>/index.jsp'" value="返回" />  
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

<script type="text/javascript">
window.onload = function ()
{
	$("#aac102").val(${ins.aac102 });
	ChooseClanType(${ins.aac102 });
	
	var yourString = "${ins.aac104}";
	var result= yourString.split(",");
	$("#province").val(result[0]);
	selectprovince(result[0]);
	$("#city").val(result[1]); 
	
	var teamString = "${ins.aac115}"
	if(teamString != "0")
	{
		$("#aac115").show();
	}
}

</script>
<script type="text/javascript" src="js/city.js"></script>
<script type="text/javascript" src="js/regclan.js"></script>
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
</body>
</html>