<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%String path = request.getContextPath();%>
<link href="css/common.css" type="text/css" rel="stylesheet" />
<link href="css/create_team.css" type="text/css" rel="stylesheet" />
<html>
<head>
<script type="text/javascript">    
function onEdit() //应该是点击我的战队 从session拿到用户序列号 查询战队表 查出数据 这里暂时自己赋值给aab101
{    
	var vaab101 = $('#aab101').val();
    $.ajax({
            type: 'post',
            url: "/FastEsport/teamMyTeam.html", 
            data: $('#form1').serialize(),
            success: function () {
            	window.location.href ="/FastEsport/teamMyTeam.html?aab101="+vaab101;
            	alert("22222");
            },
            error : function() {
                alert("异常！");
            }
        });
}
function onMake() {
	  $.ajax({
	         type: 'post',
	         url: "/FastEsport/teamMakeTeam.html",   
	         data: $('#form1').serialize(),
	         success: function () {
	     	    var formData = new FormData($('#form2')[0]);
	  	    $.ajax({
	  	        type: 'post',
	  	        url: '/FastEsport/uploadIdPic',
	  	        data: formData,
	  	        dataType: "text",
	  	        contentType: false, //不设置内容类型
	  	        processData: false, //不处理数据
	  	        success: function () {
	  	        	alert("申请创建战队成功!");
	  	        },
	           error : function() {
	               alert("异常!");
	           }
	  	    });			
	         },
	         error : function() {
	             alert("异常！");
	         }
	     });
}
function onTeam(){
	    var formData = new FormData($('#form3')[0]);
	    $.ajax({
	        type: 'post',
	        url: '/FastEsport/uploadTeamPic',
	        data: formData,
	        dataType: "text",
	        contentType: false, //不设置内容类型
	        processData: false, //不处理数据
	        success: function (data) {
	        	$("#backPic").attr("src",data);
	        	alert(data);
	        },
	           error : function() {
	               alert("异常！");
	           }
	    });	
}
function onEnlist() 
{    
	 var vfrom = document.getElementById("form1");
	 vfrom.action="<%=path%>/teamFindForEnlist.html";
	 vfrom.submit();
}
</script>
</head>
<body>
${msg } 
${ins } 
<%=session.getId()%>
<div>
<h3 class="none">创建战队</h3>
<div>
<form name="form1" id="form1">
<!--  应该从session中获取用户id-->
<a href="#" onclick="onEdit()">我的战队</a> <br>
<a href="#" onclick="onEnlist()">发布招募</a> <br>
<a href="<%=path%>/queryForMyEnlist.jsp">审核招募</a> <br>
<input type="hidden" value="1" id="aab101">
<input type="hidden" id="aac101" name="aac101" value="${ins.aac101 }">

<div class="input-line h39">
	<span class="input-name mb10">战队类型：</span> 
	<select class="select-item" id="aac102" name="aac102" onchange="ChooseClanType(this.value)">
	<option value="1">职业战队</option>
	<option value="2">高校战队</option>
	<option value="3">网吧战队</option>
	<option value="4">自由战队</option>
	</select>
	<p class="line-item"></p>
</div>

<div class="input-line">
	<span class="input-name">战队名称：</span> 
	<input class="input-item" type="text" name="aac103" value=${ins.aac103 }> 
	<i class="tips-red">你输入的字符须在4-14字符之间</i>
	<p class="line-item"></p>
</div>

<div class="input-line">
	<span class="input-name">所属城市：</span> 
	<select id="province" name="aac104" onchange="selectprovince(this.value);" style="width: 95px;"></select> 
	<select id="city" name="aac104" style="width: 95px;"></select>
	<p class="line-item"></p>
</div>

<div id="rProTeam" name="rProTeam" style="display: block">
	<div class="input-line">
		<span class="input-name">俱乐部名称：</span> 
		<input class="input-item" type="text" name="aac105" value="${ins.aac105 }"> 
		<i class="tips-red">你输入的字符须在4-34字符之间</i>
		<p class="line-item"></p>
	</div>
</div>

<div id="rSchoolTeam" name="rSchoolTeam" style="display: none">
	<div class="input-line">
		<span class="input-name">高校名称：</span> 
		<input class="input-item" type="text" name="aac105" value="${ins.aac105 }"> 
		<i class="tips-red">你输入的字符须在4-34字符之间</i>
		<p class="line-item"></p>
	</div>
	<div class="input-line">
		<span class="input-name">所属院校：</span> 
		<input class="input-item" type="text" name="aac112" value="${ins.aac112 }"> 
		<i class="tips-red">你输入的字符须在20字符以内</i>
		<p class="line-item"></p>
	</div>
</div>

<div id="rCafeTeam" name="rCafeTeam" style="display: none">
	<div class="input-line">
		<span class="input-name">网吧名称：</span> <input class="input-item" type="text" name="aac105" value="${ins.aac105 }">
	    <i class="tips-red">网吧字符须在4-34字符之间</i>
		<p class="line-item"></p>
	</div>
</div>

<div id="rFreeTeam" name="rFreeTeam" style="display: none"></div>

<div class="input-line">
	<span class="input-name">联系地址：</span>
	 <input class="input-item" type="text" name="aac106" value="${ins.aac106 }"> 
	 <i class="tips-red">你输入的字符须在40字符以内</i>
	<p class="line-item"></p>
</div>

<div>
<span class="input-name">游戏类型：</span>
<div>
<e:groupbox name="aac107" value="DOTA2:1,LOL:2,王者荣耀:3,CSGO:4,PUBG:5,OW:6,星际争霸2:7,魔兽争霸3:8,炉石传说:9" 
newLineNumber="5" defval="${ins.aac107 }" />
</div>

<div>
	<span class="input-name">战队介绍：</span>
	<e:textarea rows="5" cols="45" name="aac108" defval="${ins.aac108 }"/>
</div>

<!--   职业认证
<input style="display: none" name="aac111" value="0"> 在AC01servicesImpl中完成-->
<!--  审核状态-->
<input style="display: none" name="aac114" value="0">
	<c:if test="${ins==null }">
	<input type="button" onclick="onMake()" value="申请创建战队">
	</c:if>
</form>


<c:choose>
<c:when test="${ins!=null }">
<form id="form3" enctype="multipart/form-data">
	<div>
		<span class="input-name">更改战队头像：</span> 
		<input type="file" id="teamPic" name="teamPic"> 
	    <i class="input-tips">图片是jpg,png格式，但须小于1M.</i>
	    <input type="button" onclick="onTeam()" value="更换战队头像">
	</div>
	<div>
	<img id="backPic" style="width: 50%;height: 50%;">
	</div>
</form>
</c:when>
<c:otherwise>
<form id="form2" enctype="multipart/form-data">
	<div>
		<span class="input-name">上传<span id="imgname">职业证明</span>：</span> 
		<input type="file" id="idPic" name="idPic"> 
	    <i class="input-tips">图片是jpg,png格式，但须小于1M.</i>
	</div>
</form>
</c:otherwise>
</c:choose>
</div>
</div>

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
}
</script>
<script type="text/javascript" src="js/city.js"></script>
<script type="text/javascript" src="js/regclan.js"></script>
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
</body>
	</html>