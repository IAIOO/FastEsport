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
      
      function oncon(vaaf101)
      {
    	 var vform = document.getElementById("myform");
    	 vform.action="<%=path%>/adminAddracecheck.html?aaf101="+vaaf101;
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
<form id="myform" action="<%=path%>/adminRacecheck.html" method="post">
  <!-- 查询条件区 -->
	<table border="1" width="90%" align="right">
	  <caption>
	               赛事审核
	    <hr width="160">
	  </caption>
	  
	<!-- 数据迭代区 -->
	<table border="1" width="90%" align="right">
	  <tr>
	    
	    <td>赛事类型</td>
	    <td>赛事名称</td>
	    <td>赛事编号</td>
	    <td>赛制</td>
	    <td>比赛开始时间</td>
	    <td>人数/队伍数限制</td>
	    <td>观赛地址</td>
	    <td>比赛规则</td>
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
				    
				    
				    <c:if test="${ins.aaf102 == 01}"><td>Dota2</td></c:if>
				    <c:if test="${ins.aaf102 == 02}"><td>LOL</td></c:if>
				    <c:if test="${ins.aaf102 == 03}"><td>王者荣耀</td></c:if>
				    <c:if test="${ins.aaf102 == 04}"><td>CSGO</td></c:if>
				    <c:if test="${ins.aaf102 == 05}"><td>PUBG</td></c:if>
				    <c:if test="${ins.aaf102 == 06}"><td>OW</td></c:if>
				    <c:if test="${ins.aaf102 == 07}"><td>星际争霸2</td></c:if>
				    <c:if test="${ins.aaf102 == 08}"><td>魔兽争霸3</td></c:if>
				    <c:if test="${ins.aaf102 == 09}"><td>炉石传说</td></c:if>
				    <td>${ins.aaf103 }</td>
				    <td>${ins.aaf104 }</td>
				    <c:if test="${ins.aaf105 == 1}"><td>单败淘汰赛</td></c:if>
				    <c:if test="${ins.aaf105 == 2}"><td>小组循环单败淘汰赛</td></c:if>
				    <c:if test="${ins.aaf105 == 3}"><td>小组循环双败淘汰赛</td></c:if>
				    <td>${ins.aaf108 }</td>
				    <td>${ins.aaf110 }</td>
				    <td>${ins.aaf111 }</td>
				    <td>${ins.aaf112 }</td>
				    <td>
				      <a href="#" onclick="oncon('${ins.aaf101}')">通过</a>
				    </td>
				  </tr>
		      </c:forEach>
		      <!-- 补充空行 -->
		      <c:forEach begin="${fn:length(rows)+1 }" step="1" end="16">
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
	        <c:forEach begin="1" step="1" end="16">
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
	
	<!-- 功能按钮区 -->
	<table border="1" width="90%" align="right">
	  <tr>
	    <td align="center">
	       <input type="submit" name="next" value="查询">
	    </td>
	  </tr>
	</table>
</form>
<tablewidth="100%" height="100%" border="1"cellspacing="0">
  <tr height="10%">
  <div id="sidebar" class="nav-collapse">
  <ul class="sidebar-menu">
    <li></li>
    
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
</body>
</html>