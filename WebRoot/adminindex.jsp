<%@ page language="java" pageEncoding="GBK"%>
<%String path = request.getContextPath(); 
session.setAttribute("name",request.getAttribute("name"));
%>
<html>
<body>
<tablewidth="100%" height="100%" border="1"cellspacing="0">
  <tr height="10%">
    <td width="30%" >��̨����ҳ��</td>
    <td>
      <a href="adminindex.jsp"target="main">��ҳ</a>
      <a href="procheck.jsp" target="team">ְҵ��֤</a>
      <a href="quizcheck.jsp" target="quiz">������֤</a>
      <a href="racecheck.jsp" target="race">�������</a>
      <a href="userdelete.jsp" target="user">�û���ٴ���</a>
      <a href="goodsadd.jsp" target="shop">��Ʒ���</a>
      <a href="goodssearch.jsp" target="good">��Ʒ��ѯ��ɾ��</a>
      <a href="#" target="excel">���̹���</a>
    </td>
  </tr>

</body>
</html>