<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<%String path=request.getContextPath();
session.setAttribute("aad301",request.getAttribute("aad301"));
session.setAttribute("aad305", request.getAttribute("aad305"));%>
<!DOCTYPE html>
<html>
<head>
<meta charset="GBK">
<title>���е�½</title>
<style type="text/css">
	td{
		heigth:100px;
	}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<meta name="keywords" content="Flat Dark Web Login Form Responsive Templates, Iphone Widget Template, Smartphone login forms,Login form, Widget Template, Responsive Templates, a Ipad 404 Templates, Flat Responsive Templates" />
<link href="css/judgestyle.css" rel='stylesheet' type='text/css' />
<!--webfonts-->
<link href='http://fonts.useso.com/css?family=PT+Sans:400,700,400italic,700italic|Oswald:400,300,700' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Exo+2' rel='stylesheet' type='text/css'>
<!--//webfonts-->
<script src="http://ajax.useso.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
</head>


<body>

<script>$(document).ready(function(c) {
	$('.close').on('click', function(c){
		$('.login-form').fadeOut('slow', function(c){
	  		$('.login-form').remove();
		});
	});	  
});
</script>
 <!--SIGN UP-->
 <h1>FastEsport Judge Login Form</h1>
<div class="login-form">
	<div class="close"> </div>
		<div class="head-info">
			<label class="lbl-1"> </label>
			<label class="lbl-2"> </label>
			<label class="lbl-3"> </label>
		</div>
			<div class="clear"> </div>
	<div class="avtar">
		<img src="images/judgeBgI.png" />
	</div>



<form action="<%=path %>/judgeLogin.html" method="post"> 

<input type="text" name="aad305" required="true" class="text" value="����֤��" onfocus="this.value=''; "onblur="if(this.value==''){this.value='����֤��';}">

						<div class="key">
<input type="password" name="aad303" required="true" value="����" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '����';}">
						</div>
						

<div class="signin">
		<input type="submit" value="Login" >
		<input type="submit" value="Register" formaction="<%=path %>/judgeRegister.jsp">
		<input type="button" name="fanhui" value="Back to Home" onclick="location='<%=path%>/index.jsp'">
	</div>
</form>
</div>
</body>
</html>