<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%String path = request.getContextPath();%>
<link href="css/common.css" type="text/css" rel="stylesheet" />
<link href="css/create_team.css" type="text/css" rel="stylesheet" />
<html>
<head>
<script type="text/javascript">    
function onEdit() //Ӧ���ǵ���ҵ�ս�� ��session�õ��û����к� ��ѯս�ӱ� ������� ������ʱ�Լ���ֵ��aab101
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
                alert("�쳣��");
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
	  	        contentType: false, //��������������
	  	        processData: false, //����������
	  	        success: function () {
	  	        	alert("���봴��ս�ӳɹ�!");
	  	        },
	           error : function() {
	               alert("�쳣!");
	           }
	  	    });			
	         },
	         error : function() {
	             alert("�쳣��");
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
	        contentType: false, //��������������
	        processData: false, //����������
	        success: function (data) {
	        	$("#backPic").attr("src",data);
	        	alert(data);
	        },
	           error : function() {
	               alert("�쳣��");
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
<h3 class="none">����ս��</h3>
<div>
<form name="form1" id="form1">
<!--  Ӧ�ô�session�л�ȡ�û�id-->
<a href="#" onclick="onEdit()">�ҵ�ս��</a> <br>
<a href="#" onclick="onEnlist()">������ļ</a> <br>
<a href="<%=path%>/queryForMyEnlist.jsp">�����ļ</a> <br>
<input type="hidden" value="1" id="aab101">
<input type="hidden" id="aac101" name="aac101" value="${ins.aac101 }">

<div class="input-line h39">
	<span class="input-name mb10">ս�����ͣ�</span> 
	<select class="select-item" id="aac102" name="aac102" onchange="ChooseClanType(this.value)">
	<option value="1">ְҵս��</option>
	<option value="2">��Уս��</option>
	<option value="3">����ս��</option>
	<option value="4">����ս��</option>
	</select>
	<p class="line-item"></p>
</div>

<div class="input-line">
	<span class="input-name">ս�����ƣ�</span> 
	<input class="input-item" type="text" name="aac103" value=${ins.aac103 }> 
	<i class="tips-red">��������ַ�����4-14�ַ�֮��</i>
	<p class="line-item"></p>
</div>

<div class="input-line">
	<span class="input-name">�������У�</span> 
	<select id="province" name="aac104" onchange="selectprovince(this.value);" style="width: 95px;"></select> 
	<select id="city" name="aac104" style="width: 95px;"></select>
	<p class="line-item"></p>
</div>

<div id="rProTeam" name="rProTeam" style="display: block">
	<div class="input-line">
		<span class="input-name">���ֲ����ƣ�</span> 
		<input class="input-item" type="text" name="aac105" value="${ins.aac105 }"> 
		<i class="tips-red">��������ַ�����4-34�ַ�֮��</i>
		<p class="line-item"></p>
	</div>
</div>

<div id="rSchoolTeam" name="rSchoolTeam" style="display: none">
	<div class="input-line">
		<span class="input-name">��У���ƣ�</span> 
		<input class="input-item" type="text" name="aac105" value="${ins.aac105 }"> 
		<i class="tips-red">��������ַ�����4-34�ַ�֮��</i>
		<p class="line-item"></p>
	</div>
	<div class="input-line">
		<span class="input-name">����ԺУ��</span> 
		<input class="input-item" type="text" name="aac112" value="${ins.aac112 }"> 
		<i class="tips-red">��������ַ�����20�ַ�����</i>
		<p class="line-item"></p>
	</div>
</div>

<div id="rCafeTeam" name="rCafeTeam" style="display: none">
	<div class="input-line">
		<span class="input-name">�������ƣ�</span> <input class="input-item" type="text" name="aac105" value="${ins.aac105 }">
	    <i class="tips-red">�����ַ�����4-34�ַ�֮��</i>
		<p class="line-item"></p>
	</div>
</div>

<div id="rFreeTeam" name="rFreeTeam" style="display: none"></div>

<div class="input-line">
	<span class="input-name">��ϵ��ַ��</span>
	 <input class="input-item" type="text" name="aac106" value="${ins.aac106 }"> 
	 <i class="tips-red">��������ַ�����40�ַ�����</i>
	<p class="line-item"></p>
</div>

<div>
<span class="input-name">��Ϸ���ͣ�</span>
<div>
<e:groupbox name="aac107" value="DOTA2:1,LOL:2,������ҫ:3,CSGO:4,PUBG:5,OW:6,�Ǽ�����2:7,ħ������3:8,¯ʯ��˵:9" 
newLineNumber="5" defval="${ins.aac107 }" />
</div>

<div>
	<span class="input-name">ս�ӽ��ܣ�</span>
	<e:textarea rows="5" cols="45" name="aac108" defval="${ins.aac108 }"/>
</div>

<!--   ְҵ��֤
<input style="display: none" name="aac111" value="0"> ��AC01servicesImpl�����-->
<!--  ���״̬-->
<input style="display: none" name="aac114" value="0">
	<c:if test="${ins==null }">
	<input type="button" onclick="onMake()" value="���봴��ս��">
	</c:if>
</form>


<c:choose>
<c:when test="${ins!=null }">
<form id="form3" enctype="multipart/form-data">
	<div>
		<span class="input-name">����ս��ͷ��</span> 
		<input type="file" id="teamPic" name="teamPic"> 
	    <i class="input-tips">ͼƬ��jpg,png��ʽ������С��1M.</i>
	    <input type="button" onclick="onTeam()" value="����ս��ͷ��">
	</div>
	<div>
	<img id="backPic" style="width: 50%;height: 50%;">
	</div>
</form>
</c:when>
<c:otherwise>
<form id="form2" enctype="multipart/form-data">
	<div>
		<span class="input-name">�ϴ�<span id="imgname">ְҵ֤��</span>��</span> 
		<input type="file" id="idPic" name="idPic"> 
	    <i class="input-tips">ͼƬ��jpg,png��ʽ������С��1M.</i>
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