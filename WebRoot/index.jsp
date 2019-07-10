<%@ page language="java" pageEncoding="GBK"%>
<%String path = request.getContextPath(); 
session.setAttribute("username",request.getAttribute("username"));
%>
<html>
<body>
<tablewidth="100%" height="100%" border="1"cellspacing="0">
  <tr height="10%">
    <td width="30%" >网站标志</td>
    <td>
      <a href="index.jsp"target="main">首页</a>
      <a href="match.jsp" target="match">赛事</a>
      <a href="team.jsp" target="team">战队</a>
      <a href="player.jsp" target="player">选手</a>
      <a href="home.jsp" target="home">我的</a>
    </td>
  </tr>

</body>
</html>