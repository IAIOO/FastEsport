<%@ page language="java" pageEncoding="GBK"%>
<%String path = request.getContextPath(); %>
<html>
<head>
<title>举报成功</title>
<script type="text/javascript">
function retPost(){
	window.location.href='<%=path%>/bbsQuery.html';
}
</script>
</head>
<body>
<h1>举报成功！</h1>
<a href="javascript:void(0)" onclick="retPost()">点此返回论坛</a>
</body>
</html>