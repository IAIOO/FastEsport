<%@ page language="java" pageEncoding="GBK"%>
<%String path = request.getContextPath(); %>
<html>
<head>
<link type="text/css" rel="stylesheet" href="css/admin.css" />
<title>µÇÂ¼½çÃæ</title>
</head>

<body>
	<!--SIGN UP-->
<div class="login-form">
	<div class="close"> </div>
		<div class="head-info">
			<label class="lbl-1"> </label>
			<label class="lbl-2"> </label>
			<label class="lbl-3"> </label>
		</div>

	<form action="<%=path%>/adminLogin.html">
			
				
				<input type="text" name="aad102"/>
			
				<input type="password" name="aad103"/>
			<div class="signin">
				<input type="submit" name="login" value="µÇÂ¼">
				</div>
			
		
	</form>
	</div>
	${msg}
</body>

</html>