<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>��̳��ҳ</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- gallery -->
<link rel="stylesheet" href="css/lightGallery.css" type="text/css" media="all" />
<!-- //gallery -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet">  

<link title="style1" rel="stylesheet" href="css/style1.css" type="text/css" />


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
							<a href="<%=path%>/userLoginout.html">�˳���¼</a>
						</c:otherwise>
					</c:choose>
		</div>
		
		<div class="clearfix"> </div>
	</div>
<!-- banner -->

    <!-- Start of Page Container -->
    <div class="page-container">
            <div class="container">
                    <div class="row">
                    
                    <a href="addtopic.jsp" style="float: right">���ҷ���</a>
                       <!-- start of page content -->
                       <div class="span8 main-listing">
                               <c:choose>
							     <c:when test="${rows!=null }">
							         <!-- ��ʾʵ�ʲ�ѯ�������� -->
								     <c:forEach items="${rows }" var="ins" varStatus="vs">
									  <article class="format-standard type-post hentry clearfix">
		                                      <header class="clearfix">
		                                              <h3 class="post-title">
		                                                      <a href="javascript:void(0)" onclick="toinfo(${ins.aab201 })">${ins.aab202 }</a>
		                                              </h3>
		                                              <div class="post-meta clearfix">
		                                                      <span class="date">${ins.aab205 }</span>
		                                                      <span class="category"><a href="#" title="View all posts in Server &amp; Database">${ins.aab102 }</a></span>
		                                              </div><!-- end of post meta -->
		                                      </header>
		                              </article>
								      </c:forEach>
							     </c:when>
							   </c:choose>

                               <div id="pagination">
                                       	<a href="javascript:void(0)" onclick="doPage(1)">��ҳ</a>&nbsp;
						                <a href="javascript:void(0)" onclick="doPage(${pageBean.pageNo-1})">��һҳ</a>&nbsp;
						                <a href="javascript:void(0)" onclick="doPage(${pageBean.pageNo+1})">��һҳ</a>&nbsp;
						                <a href="javascript:void(0)" onclick="doPage(${pageBean.totalPage})">ĩҳ</a>&nbsp;
						                 	��${pageBean.pageNo}ҳ/��${pageBean.totalPage}ҳ&nbsp;
						                <input type="text" id="pageNum">&nbsp;
						                <button onclick="toPage()">go</button>
                               </div>

                       </div>
                       <!-- end of page content -->
                    </div>
                 </div>
             </div>

</body>
</html>