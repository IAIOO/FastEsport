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
function onCheck(vaac301)
{
	var qaac303 = document.getElementsByName("qaac303");
	var result;
	for(var i=0;i<qaac303.length;i++)
	{
		if(qaac303[i].checked)
		{
			result = qaac303[i].value;
		}
	}
	if(result == "0")
	{
		alert("����ļ��Ԥ������");
	}
	    window.location.href="teamQueryForOnEnlist.html?"
	    		+"aac301="+vaac301
	    		+"&qaac409=0"
	    		;  
}
</script>
</head>
<body>
${rows }
<form id="myform" action="<%=path%>/teamQueryForMyEnlist.html" method="post">
<!-- ��ѯ������ -->
<table border="1" width="95%" align="center">
<caption>
	�ѷ�������ļ
	<hr width="160">
</caption>
<tr>
	<td colspan="4">��ļ��</td>
</tr>
<tr>
<td>��ļ����</td>
<td><e:radio id="qaac303" name="qaac303" value="δ��ļ��Ԥ������:1,����ļ��Ԥ������:0"/></td>	
</tr>
<tr>
<td>�ڴ�����ǰ��������ļ</td>
<td><e:date name="qaac307" /></td>	
</tr>
</table>
<table border="1" align="center" width="80%">
	<!--  ���ݵ�����-->
<tr>
	<td></td>
	<td>��ļ�����к�</td>
	<td>��ļѡ������</td>
	<td>������ļ����</td>
	<td>��ļ��������</td>
	<td>���</td>
</tr>
   <c:choose>
     <c:when test="${rows!=null }">
         <!-- ��ʾʵ�ʲ�ѯ�������� -->
	     <c:forEach items="${rows }" var="ins" varStatus="vs">
    	   	  <tr>
			    <td>${vs.count }</td>
		    	<td>${ins.aac301 }</td>
			    <td>${ins.aac302 }</td>
			    <td>${ins.aac303 }</td>
			    <td>${ins.aac307 }</td>
			    <td>
			      <!-- #  ��ê -->
			      <a href="#" onclick="onCheck('${ins.aac301 }')">���</a>
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