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
        contentType: false, //不设置内容类型
        processData: false, //不处理数据
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
                	alert("上传商品成功！");
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
${msg}
<%=path %>
<br>
<br>
<form id="form1">
<table  border="1" align="center" width="45%">
    <caption>
       商品
      <hr width="160">
    </caption>
   <tr>
     <td colspan="2">商品资料</td>
   </tr>
   <tr>
     <td>商品名称</td>
     <td>
       <e:text name="aad202" autofocus="true" /> 
     </td>
   </tr>
   <tr>
     <td>商品信息</td>
     <td>
       <e:text name="aad203"/>
     </td>
   </tr>
   <tr>
   </tr>
   <tr>
     <td>商品数量</td>
     <td>
        <e:number name="aad204"  step="1"/> 
     </td>
   </tr>
   <tr>
     <td>消耗代币</td>
     <td>
       <e:number name="aad205"  step="1" /> 
     </td>
   </tr>
   <input type="hidden" id="aad206" name="aad206">
</table>
<table border="1" width="45%" align="center">
	  <tr>
	    <td align="center">
	        <a href="adminindex.jsp"target="main">首页</a>
	    </td>
	  </tr>
	</table>
</form>
<form id="form2" enctype="multipart/form-data">
	<div>
		<span>上传职业证明：</span> 
		<input type="file" id="goodsPic" name="goodsPic"> 
	    <i class="input-tips">图片是jpg,png格式，但须小于1M.</i>
	    <input type="button" value="上传商品" onclick="onMake()">
	    <img id="goodsPicPlay">
	</div>
</form>
<script type="text/javascript" src="<%=path %>/js/jquery-3.2.1.js"></script>
</body>
</html>