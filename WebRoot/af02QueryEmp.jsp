<%@ page  language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>
<html>
<head>
   <title>������Ϣһ����</title>
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
  <!-- ��ѯ������ -->
	<table border="1" width="95%" align="center">
	  <caption>
	              ���̽����Ϣ�޸�
	    <hr width="160">
	  </caption>
	  
	  
	<!-- ���ݵ����� -->
	<table border="1" width="95%" align="center">
	  <tr>
	    <td></td>
	    <!-- <td>���к�</td> -->
	    <td>�������к�</td>
	    <td>ѡ��A</td>
	    <td>ѡ��B</td>
	    <td>������ʼʱ��</td>
	    <td>A�÷�</td>
	    <td>B�÷�</td>
	  </tr>
	  <!--
	         ע������
	    1.$�������ŵĽ������ }��˫����֮��,��������ֿո�
	    2.���е�����֮������Ҫ��һ���ո�,���򱨴�
	    3.var ����,�൱����ҳ�涨���������,���  ins����������$ {  }
	   -->
	   <c:choose>
	     <c:when test="${rows!=null }">
	         <!-- ��ʾʵ�ʲ�ѯ�������� -->
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
				      <!-- #  ��ê -->
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
		      <!-- ������� -->
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
	
	<!-- ���ܰ�ť�� -->
	<table border="1" width="95%" align="center">
	  <tr>
	    <td align="center">
	       <input type="submit" name="next" value="��ѯ" formaction="<%=path%>/af02QueryEmp.html">
	       
	       <%-- <input type="submit" id="modify" name="next" value="�޸�" formaction="<%=path%>/af01ModifyEmp.html"> --%>
<%-- 	              formaction="<%=path%>/delEmp.html"  disabled="disabled"> --%>
	    </td>
	  </tr>
	</table>
<%-- <input type="hidden" name="aaf101" value="${param.aaf101 }"> --%>
</form>
</body>
</html>