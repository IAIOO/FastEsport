<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>��̳��ҳ</title>
<script type="text/javascript">
  function toinfo(vaab201){
	  //ʵ��ҳ�����ת
	  window.location.href='<%=path%>/bbsQueryPost.html?aab201=' + vaab201;
  }
  
  function doPage(num) {
	  window.location.href='<%=path%>/bbsQuery.html?now=' + num;
  }
  
  function toPage() {
	  var vpageNum = document.getElementById("pageNum").value;
	  if(vpageNum < 1 || vpageNum > ${pageBean.totalPage}){
		  alert("����ҳ������");
	  }
	  else{
	      window.location.href='<%=path%>/bbsQuery.html?now=' + vpageNum;
	  }
	  window.event.returnValue=false;
  }
  
</script>
</head>
<body>
<form id="myform" action="<%=path%>/bbsQuery.html" method="post">
  <!-- ��ѯ������ -->
		<table width="95%" align="center">
			<tr>
				<td colspan="4">��̳��ҳ</td>
			</tr>
			<tr>
				<td>����</td>
				<td><e:text name="aab202" /></td>
				<td><input type="submit" name="findbbs" value="��ѯ"></td>
				<td><a href="<%=path%>/addtopic.jsp">��������</a></td>
			</tr>
		</table>
		<!-- ���ݵ����� -->
	<table border="1" width="95%" align="center">
	<tr>
	    <td>����</td>
	    <td>����</td>
	    <td>��������</td>
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
		     <tr onclick="toinfo(${ins.aab201 })">
				<td>${ins.aab202 }</td>
				<td>${ins.aab102 }</td>
				<td>${ins.aab205 }</td>
			  </tr>
		      </c:forEach>
	     </c:when>
	   </c:choose>
	   ${msg }
	   <tfoot id="tfootID">
         <tr>
             <td colspan="10">
                 <a href="javascript:void(0)" onclick="doPage(1)">��ҳ</a>&nbsp;
                 <a href="javascript:void(0)" onclick="doPage(${pageBean.pageNo-1})">��һҳ</a>&nbsp;
                 <a href="javascript:void(0)" onclick="doPage(${pageBean.pageNo+1})">��һҳ</a>&nbsp;
                 <a href="javascript:void(0)" onclick="doPage(${pageBean.totalPage})">ĩҳ</a>&nbsp;
                 	��${pageBean.pageNo}ҳ/��${pageBean.totalPage}ҳ&nbsp;
                 <input type="text" id="pageNum">&nbsp;
                 <button onclick="toPage()">go</button>
             </td>
         </tr>
     </tfoot>
	</table>
</form>
</body>
</html>