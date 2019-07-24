<%@ page language="java" pageEncoding="GBK"%>
<%String path = request.getContextPath(); 
session.setAttribute("name",request.getAttribute("name"));
%>
<html>
<head>
<link type="text/css" rel="stylesheet" href="css/indexstyle.css" />
<link type="text/css" rel="stylesheet" href="css/style-responsive.css" />
</head>
<script type="text/javascript">
function race(){
	window.location.href="<%=path%>/adminRacecheck.html";
}
function quiz(){
	window.location.href="<%=path%>/adminQuizcheck.html";
}
function team(){
	window.location.href="<%=path%>/adminProcheck.html";
}
function user(){
	window.location.href="<%=path%>/adminUsersearch.html";
}
function good(){
	window.location.href="<%=path%>/shopGoodssearch.html";
} 

</script>
<body>
<tablewidth="100%" height="100%" border="1"cellspacing="0">
  <tr height="10%">
  <div id="sidebar" class="nav-collapse">
  <ul class="sidebar-menu">
    <li width="30%" ></li>
   
     <font color=black>后台管理页面</font>
  
      <li><a href="adminindex.jsp"target="main">首页</a></li>
      <li><a href="#" onclick="team()">职业认证</a></li>
      <li><a href="#" onclick="quiz()">竞猜认证</a></li>
      <li><a href="#" onclick="race()">赛事审核</a></li>
      <li><a href="#" onclick="user()">用户检举处理</a></li>
      <li><a href="goodsadd.jsp">商品添加</a></li>
      <li><a href="#" onclick="good()">商品查询与删除</a></li>
  </ul>
</div>
  </tr>
</body>
</html>