<%@ page language="java" import="java.util.*"  pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<html>
<head>
<script type="text/javascript">
function onMake() {
    $.ajax({
           type: 'post',
           url: "/FastEsport/teamUserProId.html",   
           data: $('#form1').serialize(),
           success: function () {
  				alert("ok");
           },
           error : function() {
               alert("异常！");
           }
       });
    var formData1 = new FormData($('#form2')[0]);
    $.ajax({
        type: 'post',
        url: '/FastEsport/uploadProIdPic',
        data: formData1,
        dataType: "text",
        contentType: false, //不设置内容类型
        processData: false, //不处理数据
        success: function () {
        	alert("okkkkkk");
        },
           error : function() {
               alert("异常！");
           }
    });	
    var formData2 = new FormData($('#form3')[0]);
    $.ajax({
        type: 'post',
        url: '/FastEsport/uploadUserIdPic',
        data: formData2,
        dataType: "text",
        contentType: false, //不设置内容类型
        processData: false, //不处理数据
        success: function () {
        	alert("okkk");
        },
           error : function() {
               alert("异常！");
           }
    });
}
</script>
</head>
<body>
<form id="form1">
<table border="1" align="center" width="80%">
<caption>
个人职业认证
<hr width="160">
</caption>
<tr>
<td>填写认证表</td>
</tr>
<tr>
<td>平台昵称</td>
<td><e:text name="aac102" defval="${ins.aac102 }"/></td>
<td>用户编号</td>
<td><e:text name="aab103" defval="${ins.aab103 }"/></td>
</tr>
<tr>
<td>联系电话</td>
<td><e:text name="aab105" defval="${ins.aab105 }"/></td>
<td>联系邮箱</td>
<td><e:text name="aab106" defval="${ins.aab106 }"/></td>
</tr>
<tr>
<td>真实姓名</td>
<td><e:text name="aac206" defval="${ins.aac206 }"/></td>
<td>身份证</td>
<td><e:text name="aac207" defval="${ins.aac207 }"/></td>
</tr>
<tr>
<td>职业履历</td>
<td><e:textarea rows="25" cols="80" name="aac203" defval="${ins.aac203 }"/></td>
<td>个人荣誉</td>
<td><e:textarea rows="25" cols="80" name="aac205" defval="${ins.aac205 }"/></td>
</tr>
<input type="hidden" name="aac204" value="0">
</table>
</form>

<form id="form2" enctype="multipart/form-data">
<div>
	<span>上传图片证明材料：</span> 
	<input type="file" id="proIdPic" name="proIdPic"> 
    <i>图片是jpg,png格式，但须小于1M.</i>
</div>
</form>

<form id="form3" enctype="multipart/form-data">
<div>
	<span>上传身份证：</span> 
	<input type="file" id="userIdPic" name="userIdPic"> 
    <i>图片是jpg,png格式，但须小于1M.</i>
    <input type="button" onclick="onMake()" value="申请职业认证">
</div>
</form>
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
</body>
</html>