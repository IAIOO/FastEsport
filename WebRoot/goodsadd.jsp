<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%String path=request.getContextPath();%>
<html>
<head>
<title>Insert title here</title>
<style type="text/css">
  td{
      height:30px;
  }
  msg{
     color:#FF0000
  }
</style>
<script type="text/javascript">
function onMake() {
    var formData = new FormData($('#form2')[0]);
    $.ajax({
        type: 'post',
        url: '/FastEsport/ShopuploadGoodsPic',
        data: formData,
        dataType: "text",
        contentType: false, //��������������
        processData: false, //����������
        success: function (data) {
        	$("#goodsPicPlay").attr("src",data);
        	$("#aad206").attr("value",data);
        	alert(data);
            $.ajax({
                type: 'post',
                data: $('#form1').serialize(),
                dataType: "text",
                url: '/FastEsport/Shopgoodsadd.html',
                success: function () {
                	alert("�ϴ���Ʒ�ɹ���");
                },
                   error : function() {
                       alert("�쳣��");
                }
            });	
        },
           error : function() {
               alert("�쳣��");
           }
    });	
}
</script>
</head>
<body>
${msg}
<%=path %>
<br>
<br>
<form id="form1">
<table  border="1" align="center" width="45%">
    <caption>
       ��Ʒ
      <hr width="160">
    </caption>
   <tr>
     <td colspan="2">��Ʒ����</td>
   </tr>
   <tr>
     <td>��Ʒ����</td>
     <td>
       <e:text name="aad202" autofocus="true" /> 
     </td>
   </tr>
   <tr>
     <td>��Ʒ��Ϣ</td>
     <td>
       <e:text name="aad203"/>
     </td>
   </tr>
   <tr>
   </tr>
   <tr>
     <td>��Ʒ����</td>
     <td>
        <e:number name="aad204"  step="1"/> 
     </td>
   </tr>
   <tr>
     <td>���Ĵ���</td>
     <td>
       <e:number name="aad205"  step="1" /> 
     </td>
   </tr>
   <input type="hidden" id="aad206" name="aad206">
</table>
<table border="1" width="45%" align="center">
	  <tr>
	    <td align="center">
	        <a href="adminindex.jsp"target="main">��ҳ</a>
	    </td>
	  </tr>
	</table>
</form>
<form id="form2" enctype="multipart/form-data">
	<div>
		<span>�ϴ�ְҵ֤����</span> 
		<input type="file" id="goodsPic" name="goodsPic"> 
	    <i class="input-tips">ͼƬ��jpg,png��ʽ������С��1M.</i>
	    <input type="button" value="�ϴ���Ʒ" onclick="onMake()">
	    <img id="goodsPicPlay">
	</div>
</form>
<script type="text/javascript" src="<%=path %>/js/jquery-3.2.1.js"></script>
</body>
</html>