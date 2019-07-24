<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%String path = request.getContextPath(); %>
<head>
<title>Others</title>
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
        url: '/FastEsport/uploadGoodsPic',
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
                url: '/FastEsport/shopGoodsadd.html',
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

<!-- banner -->



	<div class="form_content">
    <form id="form1" action="#" method="post">
    <fieldset>
        <legend>商品信息</legend>
        <div class="form-row">
            <div class="field-label"><label for="field1">商品名称</label>:</div>
            <div class="field-widget"><input name="aad202" id="field1" class="required" title="Enter your name" /></div>
        </div>
        
        <div class="form-row">
            <div class="field-label"><label for="field2">商品信息</label>:</div>
            <div class="field-widget"><input name="aad203" id="field1" class="required" title="Enter your name" /></div>
        </div>
        
        <div class="form-row">
            <div class="field-label"><label for="field3">商品数量</label>:</div>
            <div class="field-widget"><input type="number" name="aad204"></div>
        </div>    
        <div class="form-row">
            <div class="field-label"><label for="field3">消耗代币</label>:</div>
            <div class="field-widget"><input type="number" name="aad205"></div>
        </div>
        <input type="hidden" id="aad206" name="aad206">
        </fieldset>
        </form>
        </div>    
      <div class="form_content">
      <form id="form2" enctype="multipart/form-data" method="post">
      <fieldset>
      <legend>上传图片</legend>
      <div class="form-row">
      <input type="file" id="goodsPic" name="goodsPic"> 
	    <i class="input-tips">图片是jpg,png格式，但须小于1M.</i>
	    <input type="button" value="上传商品" onclick="onMake()">
	    <img id="goodsPicPlay">
      </div>
      </fieldset>
      </form>
      <script type="text/javascript" src="<%=path %>/js/jquery-3.2.1.js"></script>
      </div>

</body>
</html>