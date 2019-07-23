<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>ȫ������</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- gallery -->
<link rel="stylesheet" href="css/lightGallery.css" type="text/css" media="all" />
<!-- //gallery -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet">  

<link title="style1" rel="stylesheet" href="css/style1.css" type="text/css" />
<script type="text/javascript">
  function toinfo(vaaf101){
	  //ʵ��ҳ�����ת
	  window.location.href='game.jsp?aaf101='+vaaf101;
  }
  
  function doPage(num) {
	  window.location.href='<%=path%>/matchQuery.html?now=' + num;
  }
  
  function toPage() {
	  var vpageNum = document.getElementById("pageNum").value;
	  if(vpageNum < 1 || vpageNum > ${pageBean.totalPage}){
		  alert("����ҳ������");
	  }
	  else{
	      window.location.href='<%=path%>/matchQuery.html?now=' + vpageNum;
	  }
	  window.event.returnValue=false;
  }
</script>
</head>
<body>
<!-- header -->
<div class="w3_navigation">
		<div class="container">
			<nav class="navbar navbar-default">
				<div class="navbar-header navbar-left">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<div class="w3_navigation_pos">
						<h1><span>FastEsport</span></h1>
					</div>
				</div>
				
<!-- ������ -->
<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
	<nav class="cl-effect-5" id="cl-effect-5">												
		<ul class="nav navbar-nav">	
		 
<!-- ��ҳ -->																							
<li class="dropdown menu__item">
<a href="index.jsp" class="dropdown-toggle menu__link">��ҳ			
</a>
</li>
		
<!-- ȫ������ -->	
<li class="dropdown menu__item">
<a href="<%=path %>/competitionQueryForUser.html" class="dropdown-toggle menu__link">ȫ������
</a>
</li>
						
<!-- ���¹��� -->
<li class="dropdown menu__item">
<a href="competitionQueryGame.html?aab101=<%=session.getAttribute("aab101") %>" class="dropdown-toggle menu__link">���¹���
</a>
</li>
							
<!-- ս�ӹ��� -->
<li class="dropdown menu__item">
<a href="#" class="dropdown-toggle menu__link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">ս�ӹ���
	<span class="caret"></span>
</a>
<ul class="dropdown-menu">
	<li>
		<a href="makeTeam.jsp">����ս��</a>
	</li>
	<li>
		<a href="teamMyTeam.html">�ҵ�ս��</a>
	</li>
	<li>
		<a href="enlistTeam.jsp">������ļ</a>
	</li>
	<li>
		<a href="queryForMyEnlist.jsp">�����ļ</a>
	</li>
	<li>
		<a href="queryForTeam.jsp">����ս��</a>
	</li>
	<li>
		<a href="userProId.jsp">ְҵ��֤</a>
	</li>
</ul>
</li>

<!-- ��̳��� -->							
<li class="dropdown menu__item">
<a href="<%=path %>/bbsQuery.html" class="dropdown-toggle menu__link">��̳���
</a>
</li>
	
<!-- �̳����� -->							
<li class="dropdown menu__item">
<a href="usershop.jsp" class="dropdown-toggle menu__link">�̳�����
</a>
</li>																					
					</ul>																					
				</nav>
			</div>
		</nav>	
	</div>
</div>
	
	
<!-- //header -->	
	<div class="header">
		<div class="w3layouts_header_left">
				<div class="top-nav-text">
						<p>Call Us : <span class="call">+00 111 2222 333</span></p>
						<p>Email Us : <span class="mail"><a href="mailto:info@example.com">FastEsport@us.com</a></span></p>
					</div>
		</div>
		
		<div class="w3layouts_header_right">
			 	<c:choose>
					<c:when test="${empty sessionScope.aab101}">
						<a href="#" onclick="gotoLogin()">��¼/ע��</a>
					</c:when>
					<c:otherwise>
						<a href="<%=path%>/home.jsp"><%=session.getAttribute("aab102") %></a>
					</c:otherwise>
				</c:choose>
		</div>
		
		<div class="clearfix"> </div>
	</div>
<!-- banner -->
<form id="myform" action="<%=path%>/matchQuery.html" method="post">
  <!-- ��ѯ������ -->
		<table width="95%" align="center">
			<tr>
				<td colspan="4">��������</td>
			</tr>
			<tr>
				<td>��������</td>
				<td><e:text name="aaf103" /></td>
				<td>��������</td>
				<td><e:select name="aaf102"
						value="DOTA2:01,LOL:02,������ҫ:03,CSGO:04,PUBG:05,OW:06,�Ǽ�����2:07,ħ������3:08,¯ʯ��˵:09"
						header="true" /></td>
				<td>����״̬</td>
				<td><e:select name="aaf109" value="�����:1,���ͨ��:2,������:3,������:4,�ѽ���:5"
						header="true"/></td>
				<td><input type="submit" name="findmatch" value="����"></td>
			</tr>
		</table>
		<br></br>
		<!-- ���ݵ����� -->
	<table border="0" width="95%" align="center" style="border-collapse:separate; border-spacing:0px 20px;">
	<tr>
	    <td>��������</td>
	    <td>��������</td>
	    <td>������ֹʱ��</td>
	    <td>��������</td>
	    <td>����״̬</td>
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
	    	   	  <tr onclick="toinfo(${ins.aaf101})">
				    <td>${ins.aaf103 }</td>
				    
				    <c:if test="${ins.aaf102 == 01}"><td>Dota2</td></c:if>
				    <c:if test="${ins.aaf102 == 02}"><td>LOL</td></c:if>
				    <c:if test="${ins.aaf102 == 03}"><td>������ҫ</td></c:if>
				    <c:if test="${ins.aaf102 == 04}"><td>CSGO</td></c:if>
				    <c:if test="${ins.aaf102 == 05}"><td>PUBG</td></c:if>
				    <c:if test="${ins.aaf102 == 06}"><td>OW</td></c:if>
				    <c:if test="${ins.aaf102 == 07}"><td>�Ǽ�����2</td></c:if>
				    <c:if test="${ins.aaf102 == 08}"><td>ħ������3</td></c:if>
				    <c:if test="${ins.aaf102 == 09}"><td>¯ʯ��˵</td></c:if>
				    
				    <td>${ins.aaf107 }</td>
				    <td>${ins.aaf110 }</td>
				    <c:if test="${ins.aaf109 == 1}"><td>�����</td></c:if>
				    <c:if test="${ins.aaf109 == 2}"><td>���ͨ��</td></c:if>
				    <c:if test="${ins.aaf109 == 3}"><td>������</td></c:if>
				    <c:if test="${ins.aaf109 == 4}"><td>������</td></c:if>
				    <c:if test="${ins.aaf109 == 5}"><td>�ѽ���</td></c:if>
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