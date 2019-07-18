<%@page import="java.util.function.Function"%>
<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@page import="com.neusoft.system.tools.*" %>
<%String path=request.getContextPath(); %>
<html>
<head>
<title>参加比赛</title>

</head>
<body>
${msg }
<br>
<br>
<form  method="post">
<input type="submit" value="注销"  formaction="<%=path%>/delete.jsp">
<input type="submit" value="参加比赛" formaction="<%=path%>/addgame2.jsp">
<input type="submit" value="赛事状态修改" formaction="<%=path%>/af01QueryEmp.jsp">
<input type="submit" value="赛事结果修改" formaction="<%=path%>/af02QueryEmp.jsp">
<br>
<br>
<br>
<br>
<br>
<input type="submit" value="发送消息" formaction="<%=path%>/sendMessage.jsp">
<input type="submit" value="已读消息" formaction="<%=path%>/sendMessage.jsp">
<input type="submit" value="未读消息" formaction="<%=path%>/sendMessage.jsp">
</form>
</body>
</html>