<%@ page language="java" pageEncoding="GBK"%>
<%String path = request.getContextPath(); 
session.setAttribute("username",request.getAttribute("username"));
%>
<html>
<body>
<tablewidth="100%" height="100%" border="1"cellspacing="0">
  <tr height="10%">
    <td width="30%" >��վ��־</td>
    <td>
      <a href="index.jsp"target="main">��ҳ</a>
      <a href="match.jsp" target="match">����</a>
      <a href="team.jsp" target="team">ս��</a>
      <a href="player.jsp" target="player">ѡ��</a>
      <a href="home.jsp" target="home">�ҵ�</a>
    </td>
  </tr>

</body>
</html>