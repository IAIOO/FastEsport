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
<title>注册页面</title>
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
	<form action="<%=path%>/userAdd.html" method="post" id="form1">
		<table align="center" width=30%>
			<tr>
				<td>用户名：</td>
				<td><input type="text" name="aab102" size="20"
					required="required"></td>
			</tr>
			<tr>
				<td>手机号：</td>
				<td><e:text name="aab105" required="true" /></td>
			</tr>
			<tr>
				<td>邮箱：</td>
				<td><e:email name="aab106" required="true" /></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input type="password" name="aab104a" id="aab104a"
					size="20" required="required"></td>
			</tr>
			<tr>
				<td>确认密码：</td>
				<td><input type="password" name="aab104b" id="aab104b"
					size="20" required="required"></td>
			</tr>
            <tr>
				<td>请输入验证码：</td>
				<td><input type="text" name="verifycode" id="verifycode"></td>
				<td><span id="discode"></span></td>
				<td><a href="#" onclick="createCode()" >看不清，换一张</td>
			</tr>
			<tr>
				<td><input type="submit" name="newuser" value="注册" id="newuser" onclick="check()">
				</td>
			</tr>
		</table>
	</form>
	${error}
</body>
</html>