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
 	 vform.action="<%=path%>/shopgoodsdelete.html?aad201="+vaad201;
 	 //alert(vform.action);
 	 vform.submit();
   } 
      
   </script>
</head>
<body>
${msg }
<form id="myform" action="<%=path%>/shopgoodssearch.html" method="post">
<!-- ��ѯ������ -->
<table border="1" width="95%" align="center">
	  <caption>
	               ��Ʒ��ѯ��ɾ��
	    <hr width="160">
	  </caption>
	 </table>
	<!-- ���ݵ����� -->
	<table border="1" width="95%" align="center">
	  <tr>
	    <td></td>
	    <td></td>
	    <td>��Ʒ���к�</td>
	    <td>��Ʒ����</td>
	    <td>��Ʒ��Ϣ</td>
	    <td>��Ʒ����</td>
	    <td>���Ĵ���</td>
	    <td></td>
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
				    <td>${vs.count }</td>
				    <td>
				      <!-- #  ��ê -->
				    </td>
				    <td>${ins.aad201 }</td>
				    <td>${ins.aad202 }</td>
				    <td>${ins.aad203 }</td>
				    <td>${ins.aad204 }</td>
				    <td>${ins.aad205 }</td>
				    <td>
				     <a href="#" onclick="onChe('${ins.aad201}')">ɾ��</a>
				    </td>
				  </tr>
		      </c:forEach>
		      <!-- ������� -->
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
	
	<!-- ���ܰ�ť�� -->
	<table border="1" width="95%" align="center">
	  <tr>
	    <td align="center">
	       <input type="submit" name="next" value="��ѯ">
	    </td>
	  </tr>
	</table>
</form>
</body>
</html>