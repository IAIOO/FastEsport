<%@ page language="java" pageEncoding="GBK"%>
<%String path = request.getContextPath(); %>
<html>
<head>
<title>��¼����</title>
<script>
	var code; //��ȫ�� ������֤��
	function createCode() {
		//������֤�뺯��
		code = "";
		var codeLength = 4;//��֤��ĳ���
		var selectChar = new Array(2, 3, 4, 5, 6, 7, 8, 9, 'a', 'b', 'c', 'd',
				'e', 'f', 'g', 'h', 'i', 'j', 'k', 'm', 'n', 'p', 'q', 'r',
				's', 't', 'u', 'v', 'w', 'x', 'y', 'z');//���к�ѡ�����֤����ַ�����ȻҲ���������ĵ�

		for (var i = 0; i < codeLength; i++) {
			var charIndex = Math.floor(Math.random() * 32);
			code += selectChar[charIndex];
		}
		// ������֤�����ʾ��ʽ������ʾ
		document.getElementById("discode").style.fontFamily = "Fixedsys"; //��������
		document.getElementById("discode").style.letterSpacing = "5px"; //������
		document.getElementById("discode").style.color = "#0ab000"; //������ɫ
		document.getElementById("discode").innerHTML = code; // ��ʾ
	}

	function check() {
		var vcode = document.getElementById("verifycode").value;
		if (vcode != code) {
			alert("��֤�����");
			createCode();
			window.event.returnValue = false;
		}
	}
	window.onload = function() {
		createCode();
	}
</script>
</head>

<body>
	<form action="<%=path%>/userLogin.html">
		<table align="center" width=30%>
			<tr>
				<td>�û���</td>
				<td><input type="text" name="aab102" /></td>
			</tr>
			<tr>
				<td>����</td>
				<td><input type="password" name="aab104"/></td>
			</tr>
			<tr>
				<td>��������֤�룺</td>
				<td><input type="text" name="verifycode" id="verifycode"></td>
				<td><span id="discode"></span></td>
				<td><a href="#" onclick="createCode()" >�����壬��һ��</td>
			</tr>
			<tr>
				<td><input type="submit" name="login" value="��¼" onclick="check()"></td>
				<td><a href="register.jsp">ע��</a></td>
			</tr>
		</table>
	</form>
	${msg}
</body>

</html>