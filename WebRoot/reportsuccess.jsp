<%@ page language="java" pageEncoding="GBK"%>
<%String path = request.getContextPath(); %>
<html>
<head>
<title>�ٱ��ɹ�</title>
<script type="text/javascript">
function retPost(){
	window.location.href='<%=path%>/bbsQuery.html';
}
</script>
</head>
<body>
<h1>�ٱ��ɹ���</h1>
<a href="javascript:void(0)" onclick="retPost()">��˷�����̳</a>
</body>
</html>