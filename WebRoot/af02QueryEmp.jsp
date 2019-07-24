<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page import="java.util.function.Function"%>
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

<title>赛程信息一览表</title>
<style type="text/css">
tr {
	height: 25px;
}
</style>

<script type="text/javascript">
      var count=0;
      function onSelect(vstate)
      {
    	  vstate?count++:count--;
    	  var vdel=document.getElementById("del");
    	  vdel.disabled=(count==0);
      }
      
      function onEdit(vaaf201)
      {
    	 var vform = document.getElementById("myform");
    	 vform.action="<%=path%>/judgeAf02FindByIdEmp.html?aaf201="+vaaf201;
    	 //alert(vform.action);
    	 vform.submit();
      }
      
      function onDel(vaab101)
      {
    	 var vform = document.getElementById("myform");
    	 vform.action="<%=path%>/delByIdEmp.html?aab101="+vaab101;
    	 //alert(vform.action);
    	 vform.submit();
      } 
      
   </script>
   
     <style type="text/css">
#btn
{
border-style:none none none none;
background: transparent;
}   

</style>
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
	<!-- Navigation-->
	<form id="myform" method="post"
		action="<%=path%>/JudgeAf02QueryEmp.html">

			<input type="hidden" name="aad305" value="<%=session.getAttribute("aad305") %>">
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
						
						 
						
					</a></li>
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




						<!-- 数据迭代区 -->
						<table border="0" width="95%" align="center" rules="none">
							<tr>
								<td></td>
								<!-- <td>序列号</td> -->
								<td>赛事序列号</td>
								<td>选手A</td>
								<td>选手B</td>
								<td>比赛开始时间</td>
								<td>A得分</td>
								<td>B得分</td>
							</tr>
							<!--
	         注意事项
	    1.$及大括号的结束标记 }与双引号之间,不允许出现空格
	    2.所有的属性之间至少要有一个空格,否则报错
	    3.var 属性,相当于在页面定义变量名称,因此  ins不允许再用$ {  }
	   -->
							<c:choose>
								<c:when test="${rows!=null }">
									<!-- 显示实际查询到的数据 -->
									<c:forEach items="${rows }" var="ins" varStatus="vs">
										<tr>

											<td>${vs.count }</td>


											<td>
												<!-- #  空锚 --> <a href="#" onclick="onEdit('${ins.aaf201}')">${ins.aaf101 }</a>
											</td>

											<td>${ins.aaf202 }</td>
											<td>${ins.aaf203 }</td>
											<td>${ins.aaf204 }</td>
											<td>${ins.aaf205 }</td>
											<td>${ins.aaf206 }</td>
										</tr>
									</c:forEach>
									<!-- 补充空行 -->
									<c:forEach begin="${fn:length(rows)+1 }" step="1" end="15">
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
									<c:forEach begin="1" step="1" end="15">
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

						<!-- 功能按钮区 -->
						<%-- <table border="0" width="95%" align="center" rules="none">
	  <tr>
	    <td align="center">
	       <input type="submit" name="next" value="查询" formaction="<%=path%>/judgeAf02QueryEmp.html">
	       <input type="submit" name="next" value="返回" formaction="<%=path%>/judgeGame.jsp">

	    </td>
	  </tr>
	</table> --%>
						<%-- <input type="hidden" name="aaf101" value="${param.aaf101 }"> --%>


					</div>
				</div>
			</div>
			<!-- /.container-fluid-->
			<!-- /.content-wrapper-->








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
		 out.print(<%=session.getAttribute("aad305")%>);
	</form>




</body>
</html>