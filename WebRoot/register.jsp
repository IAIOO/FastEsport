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
<title>ע��ҳ��</title>
<script>
var code; //��ȫ�� ������֤��
function createCode()
{ //������֤�뺯��
 code = "";
 var codeLength =4;//��֤��ĳ���
 var selectChar = new Array(2,3,4,5,6,7,8,9,'a','b','c','d','e','f','g','h','i','j','k',
  'm','n','p','q','r','s','t','u','v','w','x','y','z');//���к�ѡ�����֤����ַ�����ȻҲ���������ĵ�
 for(var i=0;i<codeLength;i++)
 { 
 var charIndex =Math.floor(Math.random()*32);
 code +=selectChar[charIndex]; 
 }
// ������֤�����ʾ��ʽ������ʾ
 document.getElementById("discode").style.fontFamily="Fixedsys"; //��������
 document.getElementById("discode").style.letterSpacing="5px"; //������
 document.getElementById("discode").style.color="#0ab000"; //������ɫ
 document.getElementById("discode").innerHTML=code; // ��ʾ
}

function check(){
	var pw1 = document.getElementById("aab104a").value;
	var pw2 = document.getElementById("aab104b").value;
	if(pw1 != pw2){
		alert("�����������벻һ��");
		createCode();
		window.event.returnValue=false;
	}
	
	var vcode = document.getElementById("verifycode").value;
	if(vcode != code){
		alert("��֤�����");
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
				<td>�û�����</td>
				<td><input type="text" name="aab102" size="20"
					required="required"></td>
			</tr>
			<tr>
				<td>�ֻ��ţ�</td>
				<td><e:text name="aab105" required="true" /></td>
			</tr>
			<tr>
				<td>���䣺</td>
				<td><e:email name="aab106" required="true" /></td>
			</tr>
			<tr>
				<td>���룺</td>
				<td><input type="password" name="aab104a" id="aab104a"
					size="20" required="required"></td>
			</tr>
			<tr>
				<td>ȷ�����룺</td>
				<td><input type="password" name="aab104b" id="aab104b"
					size="20" required="required"></td>
			</tr>
            <tr>
				<td>��������֤�룺</td>
				<td><input type="text" name="verifycode" id="verifycode"></td>
				<td><span id="discode"></span></td>
				<td><a href="#" onclick="createCode()" >�����壬��һ��</td>
			</tr>
			<tr>
				<td><input type="submit" name="newuser" value="ע��" id="newuser" onclick="check()">
				</td>
			</tr>
		</table>
	</form>
	${error}
</body>
</html>