<%@ page language="java" pageEncoding="GBK"%>
<%String path = request.getContextPath(); 
session.setAttribute("name",request.getAttribute("name"));
%>
<html>
<body>
<tablewidth="100%" height="100%" border="1"cellspacing="0">
  <tr height="10%">
    <td width="30%" >后台管理页面</td>
    <td>
      <a href="adminindex.jsp"target="main">首页</a>
      <a href="procheck.jsp" target="team">职业认证</a>
      <a href="quizcheck.jsp" target="quiz">竞猜认证</a>
      <a href="racecheck.jsp" target="race">赛事审核</a>
      <a href="userdelete.jsp" target="user">用户检举处理</a>
      <a href="goodsadd.jsp" target="shop">商品添加</a>
      <a href="goodssearch.jsp" target="good">商品查询与删除</a>
      <a href="#" target="excel">赛程管理</a>
    </td>
  </tr>

</body>
</html>