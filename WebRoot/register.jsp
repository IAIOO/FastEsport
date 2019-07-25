<%@page import="java.util.Random"%>
<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e" %>
<%String path=request.getContextPath();%>
<%StringBuffer vcode = new StringBuffer();
  Random r = new Random();
  for(int i = 0;i < 4;i++){
	  String strRand = String.valueOf(r.nextInt(9));
	  vcode.append(strRand);
  }
  session.setAttribute("vcode", vcode.toString());
%>

<html>


<head>
<title>用户注册</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Flat Register Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->
<!--css-->
<link href="css/style.css" rel='stylesheet' type='text/css'/>
<link rel="stylesheet" href="css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
<!--css-->
<!--fonts-->
<link href="//fonts.googleapis.com/css?family=Cuprum&subset=latin-ext" rel="stylesheet">
<!--//fonts-->

<script>
var code; //在全局 定义验证码
function createCode()
{ //创建验证码函数
 code = "";
 var codeLength =4;//验证码的长度
 var selectChar = new Array(2,3,4,5,6,7,8,9,'a','b','c','d','e','f','g','h','i','j','k',
  'm','n','p','q','r','s','t','u','v','w','x','y','z');//所有候选组成验证码的字符，当然也可以用中文的
 for(var i=0;i<codeLength;i++)
 { 
 var charIndex =Math.floor(Math.random()*32);
 code +=selectChar[charIndex]; 
 }
// 设置验证码的显示样式，并显示
 document.getElementById("discode").style.fontFamily="Fixedsys"; //设置字体
 document.getElementById("discode").style.letterSpacing="5px"; //字体间距
 document.getElementById("discode").style.color="#0ab000"; //字体颜色
 document.getElementById("discode").innerHTML=code; // 显示
}

function check(){
	var pw1 = document.getElementById("aab104a").value;
	var pw2 = document.getElementById("aab104b").value;
	if(pw1 != pw2){
		alert("两次输入密码不一致");
		createCode();
		window.event.returnValue=false;
	}
	
	var vcode = document.getElementById("verifycode").value;
	if(vcode != code){
		alert("验证码错误");
		createCode();
		window.event.returnValue=false;
	}
}

window.onload = function (){ 
    createCode();
}

</script>

</head>
<body>
<br></br>
<br></br>
<br></br>
	<h1 align="center">Fast Esport</h1>
	<div class="main-agile">
		<div class="content-wthree" align="center">
			<h2>账号注册</h2>
			<form form action="<%=path%>/userAdd.html" method="post" id="form1">
				<div class="w3l-forming">
					<i class="fa fa-user" aria-hidden="true"></i>
					<input type="text"  class="name" name="aab102" placeholder="用户名" required="required">
				</div>
				<div class="w3l-forming">
					<i class="fa fa-envelope-o" aria-hidden="true"></i>
					<input type="email"  class="email" name="aab106" placeholder="邮箱" required="">
				</div>
				<div class="w3l-forming">
					<i class="fa fa-phone" aria-hidden="true"></i>
					<input type="text"  class="name" name="aab105" placeholder="手机号" required="">
				</div>
				<div class="w3l-forming">
					<i class="fa fa-unlock-alt" aria-hidden="true"></i>
					<input type="password"  class="name" name="aab104a" placeholder="密码" required="required">
				</div>
				<div class="w3l-forming">
					<i class="fa fa-unlock-alt" aria-hidden="true"></i>
					<input type="password"  class="name" name="aab104b" placeholder="确认密码" required="required">
				</div>
				<div class="w3l-forming" style="position: relative;left: 5.6%">
					<i class="fa fa-unlock-alt" aria-hidden="true"></i>
					<input type="text"  class="name" id="verifycode" placeholder="请输入验证码"  required="required">
					<span id="discode"></span>
					<a href="#" onclick="createCode()" >看不清，换一张
				</div>
				<br></br>
				<input type="submit" name="newuser" value="注册" id="newuser" onclick="check()">
			</form>
			${error}
		</div>
		<div class="clear"></div>
	</div>
</body>
</html>