<%@ page language="java" pageEncoding="GBK"%>
<%String path = request.getContextPath(); %>
<html>
<head>
<title>�ٱ��ɹ�</title>
<script type="text/javascript">
function retPost(){
	var aab201 = <%=request.getAttribute("aab201")%>;
	window.location.href='<%=path%>/bbsQueryPost.html?aab201=' + aab201;
}
</script>
</head>
<body>
<h1>�ٱ��ɹ���</h1>
<a href="javascript:void(0)" onclick="retPost()">��˷���ԭ��</a>
</body>
</html>