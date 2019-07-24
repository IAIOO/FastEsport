<%@ page  language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>
<html>
<head>
<link type="text/css" rel="stylesheet" href="css/sheetstyle.css" />
<link type="text/css" rel="stylesheet" href="css/style-responsive.css" />
   <title>Insert title here</title>
   <style>
   .div-td{width:95%}
   .div-td table td{ background:#CCC;color:#000;line-height:25px}
   tr
     {
        height:25px;
     }
   
   
    
   </style>
   
    <script type="text/javascript">
      var count=0;
      function onadd(vaab101)
      {
    	 var vform = document.getElementById("myform");
    	 vform.action="<%=path%>/adminAddprocheck.html?aab101="+vaab101;
    	 //alert(vform.action);
    	 vform.submit();
      } 
      function race(){
  		window.location.href="<%=path%>/adminRacecheck.html";
  	}
  	function quiz(){
  		window.location.href="<%=path%>/adminQuizcheck.html";
  	}
  	function team(){
  		window.location.href="<%=path%>/adminProcheck.html";
  	}
  	function user(){
  		window.location.href="<%=path%>/adminUsersearch.html";
  	}
  	function shop(){
  		window.location.href="<%=path%>/shopGoodsadd.html";
  	}
  	function good(){
  		window.location.href="<%=path%>/shopGoodssearch.html";
  	}
      
      
   </script>
</head>
<body>
<div class="div-td">
${msg }
<br>
<br>
<form id="myform" action="<%=path%>/adminProcheck.html" method="post">
  <!-- 查询条件区 -->
	<table border="1" width="88%" align="right">
	  <caption>
	               职业认证
	    <hr width="160">
	  </caption>
	 </table>
	<!-- 数据迭代区 -->
	<div class="ui_content">
	<table border="1" width="88%" align="right">
	  <tr>
	    <td>申请认证号</td>
	    <td>用户序列号</td>
	    <td>申请图片资料</td>
	    <td>职业履历</td>
	    <td>个人荣誉</td>
	    <td>真实姓名</td>
	    <td>身份证号</td>
	    <td>身份证图片</td>
	    <td>操作</td>
	  </tr>
	  <!--
	         注意事项
	    1.$及大括号的结束标记 }与双引号之间,不允许出现空格
	    2.所有的属性之间至少要有一个空格,否则报错
	    3.var 属性,相当于在页面定义变量名称,因此  ins不允许再用$ {  }
	   -->
	   <c:choose>
	     <c:when test="${rows!=null }">
	         <!-- 显示实际查询到的数据 -->
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td>${ins.aac201 }</td>
				    <td>${ins.aab101 }</td>
				    <td><img src="${ins.aac202 }" style=height:80;weight:80></td>
				    <td>${ins.aac203 }</td>
				    <td>${ins.aac204 }</td>
				    <td>${ins.aac205 }</td>
				    <td>${ins.aac206 }</td>
				    <td><img src="${ins.aac207 }" style=height:80;weight:80></td>
				    <td>
				      <a href="#" onclick="onadd('${ins.aab101}')">认证</a>
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
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	             
	           </tr>
	        </c:forEach>
	     </c:otherwise>
	   </c:choose>
	</table>
	</div>
	<!-- 功能按钮区 -->
	<table border="1" width="88%" align="right">
	  <tr>
	    <td align="center">
	       <input type="submit" name="next" value="查询">
	    </td>
	  </tr>
	</table>
	<tablewidth="100" height="100%" border="1"cellspacing="0">
  <tr height="10%">
  <div id="sidebar" class="nav-collapse">
  <ul class="sidebar-menu">
    
    
      <li><a href="index.jsp"target="main">首页</a></li>
      <li><a href="#" onclick="team()">职业认证</a></li>
      <li><a href="#" onclick="quiz()">竞猜认证</a></li>
      <li><a href="#" onclick="race()">赛事审核</a></li>
      <li><a href="#" onclick="user()">用户检举处理</a></li>
      <li><a href="goodsadd.jsp">商品添加</a></li>
      <li><a href="#" onclick="good()">商品查询与删除</a></li>
      
  </ul>
</div>
  </tr>
</form>
</div>
</body>
</html>