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
   function onDel(vaab601)
   {
 	 var vform = document.getElementById("myform");
 	 vform.action="<%=path%>/userdelete.html?aab601="+vaab601;
 	 //alert(vform.action);
 	 vform.submit();
   } 
      
   </script>
</head>
<body>
${msg }
<form id="myform" action="<%=path%>/userdelete.html" method="post">
<!-- ��ѯ������ -->
<table border="1" width="95%" align="center">
	  <caption>
	               �û�ɾ��
	    <hr width="160">
	  </caption>
	 </table>
	<!-- ���ݵ����� -->
	<table border="1" width="95%" align="center">
	  <tr>
	    <td></td>
	    <td></td>
	    <td>�ٱ����к�</td>
	    <td>�ٱ��û����к�</td>
	    <td>���ٱ��û����к�</td>
	    <td>���ԭ��</td>
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
				    <td>${ins.aab601 }</td>
				    <td>${ins.aab101a }</td>
				    <td>${ins.aab101b }</td>
				    <td>${ins.aab603 }</td>
				    <td>
				     <a href="#" onclick="onDel('${ins.aab601}')">ɾ��</a>
				    </td>
				  </tr>
		      </c:forEach>
		      <!-- ������� -->
		      <c:forEach begin="${fn:length(rows)+1 }" step="1" end="10">
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
	        <c:forEach begin="1" step="1" end="10">
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
	       <input type="submit" name="next" value="��ѯ">
	       <a href="index.jsp"target="main">��ҳ</a>
	    </td>
	  </tr>
	</table>
</form>
</body>
</html>