<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.function.Function"%>
<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@page import="com.neusoft.system.tools.*"%>
<%
String path=request.getContextPath(); 
session.setAttribute("aad301",request.getAttribute("aad301"));
session.setAttribute("aad305", request.getAttribute("aad305"));
%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Template</title>
<!-- Bootstrap core CSS-->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom fonts for this template-->
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<!-- Custom styles for this template-->
<link href="css/sb-admin.css" rel="stylesheet">

<style type="text/css">
td {
	height: 30px;
}

msg {
	color: #FF0000
}
</style>
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
	<!-- Navigation-->
	<form action="<%=path%>/judgeAf01ModifyEmp.html" method="post">
		<input type="hidden" name="aad301"
			value="<%=session.getAttribute("aad301") %>"> <input
			type="hidden" name="aad305"
			value="<%=session.getAttribute("aad305") %>">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top"
			id="mainNav">
			<a class="navbar-brand" href="judgeGame.jsp"">FastEsport</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
					<li class="nav-item" data-toggle="tooltip" data-placement="right"
						title="Dashboard">
					
					<li class="nav-item" data-toggle="tooltip" data-placement="right"
						title="Charts"><a class="nav-link"
						href="<%=path%>/judgeAf01QueryEmp.html"> <!-- <i class="fa fa-fw fa-area-chart"></i> -->
							<span class="nav-link-text">赛事状态修改</span>

					</a></li>
					<li class="nav-item" data-toggle="tooltip" data-placement="right"
						title="Tables"><a class="nav-link"
						href="<%=path%>/judgeAf02QueryEmp.html"> <!-- <i class="fa fa-fw fa-table"></i> -->
							<span class="nav-link-text">赛程结果管理</span>
					</a></li>



				</ul>





				<ul class="navbar-nav sidenav-toggler">
					<li class="nav-item">
						<!-- <a class="nav-link text-center" id="sidenavToggler"> --> <!-- <i class="fa fa-fw fa-angle-left"></i> -->
						<!-- </a> -->
					</li>
				</ul>
				<ul class="navbar-nav ml-auto">
					<li class="nav-item dropdown">
					<li class="nav-item"><a class="nav-link" data-toggle="modal"
						data-target="#exampleModal"> <i class="fa fa-fw fa-sign-out"></i>退出账号
					</a></li>







				</ul>
			</div>
		</nav>
		<div class="content-wrapper">
			<div class="container-fluid">
				<!-- Breadcrumbs-->

				<div class="row">
					<div class="col-12">
						<table border="1" align="center" width="45%">
							<caption>
								赛事状态修改
								<hr width="160">
							</caption>
							<tr>
								<td>赛事状态</td>
								<td><input type="text" name="aaf109"></td>
							</tr>
							<tr>
								<td><input type="submit" value="修改"> <input
									type="submit" value="返回"
									formaction="<%=path%>/judgeAf01QueryEmp.html"></td>
							</tr>
						</table>
						<input type="hidden" name="aaf101" value="${param.aaf101}">

					</div>
				</div>
			</div>
			
			
	<input type="hidden" name="aad305"
			value="<%=session.getAttribute("aad305") %>"> out.print(<%=session.getAttribute("aad305")%>);
	</form>
			<!-- /.container-fluid-->
			<!-- /.content-wrapper-->
			<!--赛程  -->
	<form action="<%=path%>/adminAddSchedule.html" method="post" >
	
	<input type="hidden" name="aaf101" value="${param.aaf101}">
    <input type="submit" name="next" value="自动生成赛程">
    
    <input type="submit" name="next" value="导出比赛报名表excel"
    formaction="<%=path%>/judgeExportExcel.html">
	</form>

	<form enctype="multipart/form-data" action="/FastEsport/uploadExcel" method="post">
	
		<input type="hidden" name="aaf101" value="${param.aaf101}">
	    <input type="file" id="excel" name="excel">
	    <input type="submit" name="next" value="提交">
	</form>







			<!-- Scroll to Top Button-->
			<a class="scroll-to-top rounded" href="#page-top"> <i
				class="fa fa-angle-up"></i>
			</a>
			<!-- Logout Modal-->
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Ready to
								Leave?</h5>
							<button class="close" type="button" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">×</span>
							</button>
						</div>
						<div class="modal-body">Select "Logout" below if you are
							ready to end your current session.</div>
						<div class="modal-footer">
							<button class="btn btn-secondary" type="button"
								data-dismiss="modal">Cancel</button>
							<a class="btn btn-primary" href="index.jsp">Logout</a>
						</div>
					</div>
				</div>
			</div>
			<div class="modal fade" id="exampleModa2" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel2" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel2">Ready to 注销?</h5>
							<button class="close" type="button" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">×</span>
							</button>
						</div>
						<div class="modal-body">Select "注销" below if you are ready
							to end your current session.</div>
						<div class="modal-footer">

							<button class="btn btn-secondary" type="button"
								data-dismiss="modal">Cancel</button>



							<a class="btn btn-primary" href="<%=path%>/judgeDel.html">注销</a>
						</div>
					</div>
				</div>
			</div>
			<!-- Bootstrap core JavaScript-->
			<script src="vendor/jquery/jquery.min.js"></script>
			<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
			<!-- Core plugin JavaScript-->
			<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
			<!-- Custom scripts for all pages-->
			<script src="js/sb-admin.min.js"></script>
		</div>
		




</body>
</html>