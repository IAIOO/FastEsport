<%@ page  language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>
<html>
<head>
   <title>Insert title here</title>
   <style type="text/css">
     tr
     {
        height:25px;
     }
   </style>
   
   <script type="text/javascript">
   var count=0;
   function onChe(vaad201)
   {
 	 var vform = document.getElementById("myform");
 	 vform.action="<%=path%>/shopGoodsdelete.html?aad201="+vaad201;
 	 //alert(vform.action);
 	 vform.submit();
   } 
      
   </script>
</head>
<body>
${msg }
<form id="myform" action="<%=path%>/shopGoodssearch.html" method="post">
<!-- 查询条件区 -->
<table border="1" width="95%" align="center">
	  <caption>
	               商品查询与删除
	    <hr width="160">
	  </caption>
	 </table>
	<!-- 数据迭代区 -->
	<table border="1" width="95%" align="center">
	  <tr>
	    <td></td>
	    <td></td>
	    <td>商品序列号</td>
	    <td>商品名称</td>
	    <td>商品信息</td>
	    <td>商品数量</td>
	    <td>消耗代币</td>
	    <td></td>
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
				    <td>${vs.count }</td>
				    <td>
				      <!-- #  空锚 -->
				    </td>
				    <td>${ins.aad201 }</td>
				    <td>${ins.aad202 }</td>
				    <td>${ins.aad203 }</td>
				    <td>${ins.aad204 }</td>
				    <td>${ins.aad205 }</td>
				    <td>
				     <a href="#" onclick="onChe('${ins.aad201}')">删除</a>
				    </td>
				  </tr>
		      </c:forEach>
		      <!-- 补充空行 -->
		      <c:forEach begin="${fn:length(rows)+1 }" step="1" end="11">
			          <tr>
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
	        <c:forEach begin="1" step="1" end="11">
	           <tr>
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
	<table border="1" width="95%" align="center">
	  <tr>
	    <td align="center">
	       <input type="submit" name="next" value="查询">
	        <a href="adminindex.jsp"target="main">首页</a>
	    </td>
	  </tr>
	</table>
</form>
</body>
</html>