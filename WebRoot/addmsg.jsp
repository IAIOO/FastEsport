<%@page import="java.util.function.Function"%>
<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@page import="com.neusoft.system.tools.*" %>
<%String path=request.getContextPath(); %>
<html>
<head>
<title>�μӱ���</title>

</head>
<body>
${msg }
<br>
<br>
<form  method="post">
<input type="submit" value="ע��"  formaction="<%=path%>/delete.jsp">
<input type="submit" value="�μӱ���" formaction="<%=path%>/addgame2.jsp">
<input type="submit" value="����״̬�޸�" formaction="<%=path%>/af01QueryEmp.jsp">
<input type="submit" value="���½���޸�" formaction="<%=path%>/af02QueryEmp.jsp">
<br>
<br>
<br>
<br>
<br>
<input type="submit" value="������Ϣ" formaction="<%=path%>/sendMessage.jsp">
<input type="submit" value="�Ѷ���Ϣ" formaction="<%=path%>/sendMessage.jsp">
<input type="submit" value="δ����Ϣ" formaction="<%=path%>/sendMessage.jsp">
</form>
</body>
</html>