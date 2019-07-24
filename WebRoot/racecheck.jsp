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
  <!-- ��ѯ������ -->
	<table border="1" width="90%" align="right">
	  <caption>
	               �������
	    <hr width="160">
	  </caption>
	  
	<!-- ���ݵ����� -->
	<table border="1" width="90%" align="right">
	  <tr>
	    <td>�������к�</td>
	    <td>��������</td>
	    <td>��������</td>
	    <td>���±��</td>
	    <td>����</td>
	    <td>������ʼʱ��</td>
	    <td>����/����������</td>
	    <td>������ַ</td>
	    <td>��������</td>
	    <td>����</td>
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
				    
				    <td>${ins.aaf101 }</td>
				    <td>${ins.aaf102 }</td>
				    <td>${ins.aaf103 }</td>
				    <td>${ins.aaf104 }</td>
				    <td>${ins.aaf105 }</td>
				    <td>${ins.aaf108 }</td>
				    <td>${ins.aaf110 }</td>
				    <td>${ins.aaf111 }</td>
				    <td>${ins.aaf112 }</td>
				    <td>
				      <a href="#" onclick="oncon('${ins.aaf101}')">ͨ��</a>
				    </td>
				  </tr>
		      </c:forEach>
		      <!-- ������� -->
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
	             <td></td>
	           
	           </tr>
	        </c:forEach>
	     </c:otherwise>
	   </c:choose>
	</table>
	
	<!-- ���ܰ�ť�� -->
	<table border="1" width="90%" align="right">
	  <tr>
	    <td align="center">
	       <input type="submit" name="next" value="��ѯ">
	    </td>
	  </tr>
	</table>
</form>
<tablewidth="100%" height="100%" border="1"cellspacing="0">
  <tr height="10%">
  <div id="sidebar" class="nav-collapse">
  <ul class="sidebar-menu">
    <li></li>
    
      <li><a href="index.jsp"target="main">��ҳ</a></li>
      <li><a href="#" onclick="team()">ְҵ��֤</a></li>
      <li><a href="#" onclick="quiz()">������֤</a></li>
      <li><a href="#" onclick="race()">�������</a></li>
      <li><a href="#" onclick="user()">�û���ٴ���</a></li>
      <li><a href="goodsadd.jsp">��Ʒ���</a></li>
      <li><a href="#" onclick="good()">��Ʒ��ѯ��ɾ��</a></li>
      <li><a href="#" target="excel">���̹���</a></li>
  </ul>
</div>
  </tr>
</body>
</html>