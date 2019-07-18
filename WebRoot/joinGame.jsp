<%@page import="java.util.function.Function"%>
<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@page import="com.neusoft.system.tools.*" %>
<%
String path=request.getContextPath(); 
session.setAttribute("aad301",request.getAttribute("aad301"));
session.setAttribute("aad305", request.getAttribute("aad305"));
%>
<html>
<head>
<title>参加比赛</title>

</head>
<body>
${msg }
<br>
<br>
<form  method="post">
<input type="submit" value="注销"  formaction="<%=path%>/ad03DelEmp.html">
<input type="hidden" name="aad305" value="<%=session.getAttribute("aad305") %>">
<input type="hidden" name="aad301" value="<%=session.getAttribute("aad301") %>">
<input type="submit" value="参加比赛" formaction="<%=path%>/ac05AddEmp.html">
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