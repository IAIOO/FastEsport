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
   
     <font color=black>��̨����ҳ��</font>
  
      <li><a href="adminindex.jsp"target="main">��ҳ</a></li>
      <li><a href="#" onclick="team()">ְҵ��֤</a></li>
      <li><a href="#" onclick="quiz()">������֤</a></li>
      <li><a href="#" onclick="race()">�������</a></li>
      <li><a href="#" onclick="user()">�û���ٴ���</a></li>
      <li><a href="goodsadd.jsp">��Ʒ���</a></li>
      <li><a href="#" onclick="good()">��Ʒ��ѯ��ɾ��</a></li>
  </ul>
</div>
  </tr>
</body>
</html>