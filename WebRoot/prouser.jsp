<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>ְҵѡ��ҳ��</title>
<script type="text/javascript">
  function toinfo(){
	  //ʵ��ҳ�����ת
	  window.location.href='prouserinfo.jsp';
  }
  
  function doPage(num) {
	  window.location.href='<%=path%>/userQuery.html?now=' + num;
  }
  
  function toPage() {
	  var vpageNum = document.getElementById("pageNum").value;
	  if(vpageNum < 1 || vpageNum > ${pageBean.totalPage}){
		  alert("����ҳ������");
	  }
	  else{
	      window.location.href='<%=path%>/userQuery.html?now=' + vpageNum;
	  }
	  window.event.returnValue=false;
  }
  
</script>
</head>
<body>
<form id="myform" action="<%=path%>/userQuery.html" method="post">
  <!-- ��ѯ������ -->
	<table width="95%" align="center">
	  <tr>
	    <td colspan="4">ְҵѡ�ֲ�ѯ</td>
	  </tr>
			<tr>
				<td>ѡ���û���</td>
				<td><e:text name="aab102" /></td>
				<td>��Ϸ����</td>
				<td>
					<e:select name="aab109" value="DOTA2:01,LOL:02,������ҫ:03,CSGO:04,PUBG:05,OW:06,�Ǽ�����2:07,ħ������3:08,¯ʯ��˵:09" header="true"/>
				</td>
				<td>ѡ�ֱ��</td>
				<td><e:text name="aab103" /></td>
				<td><input type="submit" name="finduser" value="��ѯ"></td>
			</tr>
			</table>
			<!-- ���ݵ����� -->
	<table border="1" width="95%" align="center">
	<tr>
	    <td>ѡ����</td>
	    <td>�ó���Ŀ</td>
	    <td>ע������</td>
	    <td>����ս��</td>
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
		     <tr onclick="toinfo()">
				<td>${ins.aab102 }</td>
				<td>${ins.aab109 }</td>
				<td>${ins.aab107 }</td>
				<td>${ins.aac103 }</td>
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