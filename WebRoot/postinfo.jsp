<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%String path = request.getContextPath(); %>
<html>
<head>
<title>
	<c:forEach items="${rows }" var="ins" varStatus="vs">
		<c:if test="${ins.aab202 != null }">
		${ins.aab202 }
		</c:if>
	</c:forEach>
</title>

</head>
<body>
	<table border="1" width="95%" align="center">
		<tr>
			<td>����</td>
			<td>����</td>
			<td>��������</td>
		</tr>
		<!--
	         ע������
	    1.$�������ŵĽ������ }��˫����֮��,��������ֿո�
	    2.���е�����֮������Ҫ��һ���ո�,���򱨴�
	    3.var ����,�൱����ҳ�涨���������,���  ins����������$ {  }
	   -->
		<c:choose>
			<c:when test="${rows!=null }">
				<!-- ��ʾʵ�ʲ�ѯ�������� -->
				<c:forEach items="${rows }" var="ins" varStatus="vs">
				<c:choose>
					<c:when test="${ins.aab202 != null }">
					<tr>
					<td>���⣺</td>
					<td>${ins.aab202 }</td>
					</tr>
					<tr>
						<td>${ins.aab203 }</td>
						<td>${ins.aab102 }</td>
						<td>${ins.aab205 }</td>
					</tr>
					</c:when>
					<c:otherwise>
					<tr>
						<td>${ins.aab203 }</td>
						<td>${ins.aab102 }</td>
						<td>${ins.aab205 }</td>
					</tr>
					</c:otherwise>
				</c:choose>
				</c:forEach>
			</c:when>
		</c:choose>
	</table>
	<form action="<%=path %>/bbsAddPost.html" method="post">
		<table>
			<tr>
				<td><input type="hidden" name="aab101" value="<%=session.getAttribute("aab101")%>"></td>
				<td><input type="hidden" name="aab204" value="<%=request.getParameter("aab201")%>"></td>
			</tr>
			<tr>
				<td>�ظ���</td>
				<td><input type="text" name="aab203"></td>
			</tr>
			<tr>
				<td><input type="submit" name="next" value="�ظ�"></td>
			</tr>
		</table>
	</form>
</body>
</html>