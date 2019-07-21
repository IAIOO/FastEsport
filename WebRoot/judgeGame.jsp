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
<input type="submit" value="注销"  formaction="<%=path%>/judgeDel.html">

<input type="hidden" name="aad305" value="<%=session.getAttribute("aad305") %>">
<input type="hidden" name="aad301" value="<%=session.getAttribute("aad301") %>">
<input type="hidden" name="aab101" value="<%=session.getAttribute("aab101") %>">
<br>

<input type="submit" value="赛事状态修改" formaction="<%=path%>/judgeAf01QueryEmp.html">
<br>
<input type="submit" value="赛事结果修改" formaction="<%=path%>/judgeAf02QueryEmp.html">
<br>
<br>
<br>
<br>
<br>

</form>
</body>
</html>