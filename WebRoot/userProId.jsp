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
               alert("�쳣��");
           }
       });
    var formData1 = new FormData($('#form2')[0]);
    $.ajax({
        type: 'post',
        url: '/FastEsport/uploadProIdPic',
        data: formData1,
        dataType: "text",
        contentType: false, //��������������
        processData: false, //����������
        success: function () {
        	alert("okkkkkk");
        },
           error : function() {
               alert("�쳣��");
           }
    });	
    var formData2 = new FormData($('#form3')[0]);
    $.ajax({
        type: 'post',
        url: '/FastEsport/uploadUserIdPic',
        data: formData2,
        dataType: "text",
        contentType: false, //��������������
        processData: false, //����������
        success: function () {
        	alert("okkk");
        },
           error : function() {
               alert("�쳣��");
           }
    });
}
</script>
</head>
<body>
<form id="form1">
<table border="1" align="center" width="80%">
<caption>
����ְҵ��֤
<hr width="160">
</caption>
<tr>
<td>��д��֤��</td>
</tr>
<tr>
<td>ƽ̨�ǳ�</td>
<td><e:text name="aac102" defval="${ins.aac102 }"/></td>
<td>�û����</td>
<td><e:text name="aab103" defval="${ins.aab103 }"/></td>
</tr>
<tr>
<td>��ϵ�绰</td>
<td><e:text name="aab105" defval="${ins.aab105 }"/></td>
<td>��ϵ����</td>
<td><e:text name="aab106" defval="${ins.aab106 }"/></td>
</tr>
<tr>
<td>��ʵ����</td>
<td><e:text name="aac206" defval="${ins.aac206 }"/></td>
<td>���֤</td>
<td><e:text name="aac207" defval="${ins.aac207 }"/></td>
</tr>
<tr>
<td>ְҵ����</td>
<td><e:textarea rows="25" cols="80" name="aac203" defval="${ins.aac203 }"/></td>
<td>��������</td>
<td><e:textarea rows="25" cols="80" name="aac205" defval="${ins.aac205 }"/></td>
</tr>
<input type="hidden" name="aac204" value="0">
</table>
</form>

<form id="form2" enctype="multipart/form-data">
<div>
	<span>�ϴ�ͼƬ֤�����ϣ�</span> 
	<input type="file" id="proIdPic" name="proIdPic"> 
    <i>ͼƬ��jpg,png��ʽ������С��1M.</i>
</div>
</form>

<form id="form3" enctype="multipart/form-data">
<div>
	<span>�ϴ����֤��</span> 
	<input type="file" id="userIdPic" name="userIdPic"> 
    <i>ͼƬ��jpg,png��ʽ������С��1M.</i>
    <input type="button" onclick="onMake()" value="����ְҵ��֤">
</div>
</form>
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
</body>
</html>