<%@page import="java.security.interfaces.RSAKey"%>
<%@page import="com.neusoft.services.impl.*" %>
<%@page import="com.neusoft.system.tools.*" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.util.HashMap" %>
<%@page import="java.util.Map" %>
<%@page import="java.util.Set" %>
<%@page import="java.util.Map.Entry" %>
<%@page import="com.neusoft.system.tools.*" %>
<%@page import="org.eclipse.jdt.internal.compiler.ast.ThisReference" %>

<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="GBK">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("GBK");
	String name=request.getParameter("name");
	String pass=request.getParameter("pass");
	out.print(name);
	out.print(pass);
	
	
	
	request.getSession().setAttribute("name", name);
	/* if(Tools.checkout(name)!=null)
	{
		  if(Tools.checkout(name).equals(pass))
		{
			out.print("<script language='javaScript'> alert('密码正确');</script>");
			
			
			response.sendRedirect("addGame.jsp");
			
		}
		else
		{
			out.print("<script language='javaScript'> alert('密码错误');</script>");
			response.setHeader("refresh", "0;url=login.jsp");
		} 
	}
	else
	{
		out.print("<script language='javaScript'> alert('用户名错误');</script>");
		response.setHeader("refresh", "0;url=login.jsp");
	} */
 


%>

</body>
</html>