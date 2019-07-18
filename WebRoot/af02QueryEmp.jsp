<%@ page  language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>
<html>
<head>
   <title>赛程信息一览表</title>
   <style type="text/css">
     tr
     {
        height:25px;
     }
   </style>
   
   <script type="text/javascript">
      var count=0;
      function onSelect(vstate)
      {
    	  vstate?count++:count--;
    	  var vdel=document.getElementById("del");
    	  vdel.disabled=(count==0);
      }
      
      function onEdit(vaaf201)
      {
    	 var vform = document.getElementById("myform");
    	 vform.action="<%=path%>/af02FindByIdEmp.html?aaf201="+vaaf201;
    	 //alert(vform.action);
    	 vform.submit();
      }
      
      function onDel(vaab101)
      {
    	 var vform = document.getElementById("myform");
    	 vform.action="<%=path%>/delByIdEmp.html?aab101="+vaab101;
    	 //alert(vform.action);
    	 vform.submit();
      } 
      
   </script>
</head>
<body>
${msg }
<br>
<%=session.getId() %>
<br>
<form id="myform" method="post" action="<%=path%>/af02QueryEmp.html">
  <!-- 查询条件区 -->
	<table border="1" width="95%" align="center">
	  <caption>
	              赛程结果信息修改
	    <hr width="160">
	  </caption>
	  
	  
	<!-- 数据迭代区 -->
	<table border="1" width="95%" align="center">
	  <tr>
	    <td></td>
	    <!-- <td>序列号</td> -->
	    <td>赛事序列号</td>
	    <td>选手A</td>
	    <td>选手B</td>
	    <td>比赛开始时间</td>
	    <td>A得分</td>
	    <td>B得分</td>
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
				    <%-- <td>
				      <input type="checkbox" name="idlist" value="${ins.aac401 }"
				             onclick="onSelect(this.checked)" >
				    </td> --%>
				    
			 	    <td>${vs.count }</td> 
			 	    <%-- <td>${ins.aaf101 }</td> --%>
			 	    <%-- <td>${ins.aaf101 }</td> --%>
			
				    <td>
				      <!-- #  空锚 -->
				      <a href="#" onclick="onEdit('${ins.aaf201}')">${ins.aaf101 }</a> 
				    </td>
				  <%--   <td>${ins.aaf102 }</td> --%>
				    <%-- <td>${ins.aaf103 }</td> --%>
				    <td>${ins.aaf202 }</td>
				    <td>${ins.aaf203 }</td>
				    <td>${ins.aaf204 }</td>
				    <td>${ins.aaf205 }</td>
				    <td>${ins.aaf206 }</td>
				    <%-- <td>
				    	<input type="text" name="aaf109" value="${ins.aaf109 }">
				    </td> --%>
				    
				   
				    
				  

				    
				    
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
	           </tr>
	        </c:forEach>
	     </c:otherwise>
	   </c:choose>
	</table>
	
	<!-- 功能按钮区 -->
	<table border="1" width="95%" align="center">
	  <tr>
	    <td align="center">
	       <input type="submit" name="next" value="查询" formaction="<%=path%>/af02QueryEmp.html">
	       
	       <%-- <input type="submit" id="modify" name="next" value="修改" formaction="<%=path%>/af01ModifyEmp.html"> --%>
<%-- 	              formaction="<%=path%>/delEmp.html"  disabled="disabled"> --%>
	    </td>
	  </tr>
	</table>
<%-- <input type="hidden" name="aaf101" value="${param.aaf101 }"> --%>
</form>
</body>
</html>