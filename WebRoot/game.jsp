<%--
  Created by IntelliJ IDEA.
  User: zzzzzzzzzzb
  Date: 2019/7/16
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=GBK" language="java" %>
<%String path=request.getContextPath();%>
<html>
<head>
    <title>Title</title>
    <script>
        function myFunction(vaaf1011)
        {
            var vform = document.getElementById("myform");
            vform.action="<%=path%>/userQueryGamble.html?aaf101="+vaaf1011;
            //alert(vform.action);
            vform.submit();
        }
        
        function submitAjax(){
	        $.ajax({
	            type: 'post',
	            url: "/FastEsport/playerAc05Add.html",   
	            data: $('#form1').serialize(),
	            success: function () {
	   				alert("ok");
	            },
	            error : function() {
	                alert("�쳣��");
	            }
	        });
	        
	        $.ajax({
	        	type: 'post',
	            url: "/FastEsport/playerAc05Add.html",   
	            data: $('#myform').serialize(),
	            success: function () {
	   				alert("ok");
	            },
	            error : function() {
	                alert("�쳣��");
	            }
	        })
        }
    </script>
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
	
	<link title="stylezb" rel="stylesheet" href="css/stylezb.css" type="text/css" />
	
	<!-- �༭���script -->
	<script type="text/javascript">
	
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
<a href="fistPage.jsp" class="dropdown-toggle menu__link">��ҳ			
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
</head>
<body>

<div>
    <div id="game_message">
    	<p>�������ƣ�</p>
        <p>${ins.aaf103 }</p>
        <p>${ins.aaf102 }</p>
       	<p>���¿�ʼʱ�䣺</p>
       	<p>${ins.aaf107}</p>
        <p>${ins.aaf112 }</p>
       	<p>${ins.aaf109 }</p>
    </div>
    <div id="bm">
        <form id="form1" >
			<input type="hidden" name="aaf101" value="${param.aaf101 }">
			<input type="hidden" name="aab101" value="<%=session.getAttribute("aab101") %>">
            <input type="submit" value="���̱���" onclick="submitAjax">  
        </form>
    </div>
    
    <div id="others">
    <form id="myform" action="<%=path%>/userQueryPlayer.html" method="post">
        <input type="submit" value="�������б�">
        <input type="submit" value="�鿴����"
               formaction="<%=path%>/userQuerySchedule.html">
               
        <%-- <input type="submit" name="next" value="��������������excel"
               formaction="<%=path%>/judgeExportExcel.html"> --%>
               
        <input type="hidden" name="aaf101" value="${param.aaf101 }">
        <input type="hidden" name="aab101" value="<%=session.getAttribute("aab101") %>">
        
        
        <input type="submit" name="next" value="�鿴����"
               formaction="<%=path%>/userQueryGamble.html">
    </form>
    </div>
</div>
</div>


</body>
</html>
