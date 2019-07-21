<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path = request.getContextPath(); %>
<html>
<head>
<style type="text/css">
  tr
  {
     height:25px;
  }
</style>
<script type="text/javascript">
function onLook(vaac401)
{
	 var vform = document.getElementById("myform");
	 vform.action="<%=path%>/teamFindByIdOnEnlist.html?aac401="+vaac401;
	 vform.submit();
}
</script>
</head>
<c:choose>
	<c:when test="${empty rows }">
	<c:set var= "aac301" value="${param.aac301 }"></c:set>
	</c:when>
	<c:otherwise>
	<c:set var= "aac301" value="${rows[0].aac301 }"></c:set>
	</c:otherwise>
</c:choose>
<body>
<form id="myform" action="<%=path%>/teamQueryForOnEnlist.html?aac301=${aac301}" method="post">
<!-- ��ѯ������ -->
<table border="1" width="95%" align="center">
<caption>
	��ļ��Ϣ���
	<hr width="160">
</caption>
<tr>
	<td colspan="4">��ѯ����</td>
</tr>
<tr>
<td>���״̬</td>
<td><e:radio name="qaac409" value="�����:0,�����:1" defval="0"/></td>	
</tr>
</table>
<table border="1" align="center" width="80%">
	<!--  ���ݵ�����-->
<tr>
	<td></td>
	<td>����</td>
	<td>��������</td>
	<td>�绰����</td>
	<td>����</td>
	<td>�鿴������Ϣ</td>
   <c:choose>
     <c:when test="${rows!=null }">
         <!-- ��ʾʵ�ʲ�ѯ�������� -->
	     <c:forEach items="${rows }" var="ins" varStatus="vs">
    	   	  <tr>
			    <td>${vs.count }</td>
			    <td>${ins.aac402 }</td>
			    <td>${ins.aac404 }</td>
			    <td>${ins.aac405 }</td>
			    <td>${ins.aac408 }</td>
			    <td>
			      <!-- #  ��ê -->
			      <a href="#" onclick="onLook('${ins.aac401 }')">�鿴</a>
			    </td>
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
           </tr>
        </c:forEach>
     </c:otherwise>
   </c:choose>
</tr>
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
<script type="text/javascript" src="js/city.js"></script>
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
</body>
</html>