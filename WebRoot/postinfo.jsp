<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
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

<style>
.report{
    width:20%; margin-top:10%; margin:auto; padding:28px;
    height:100px; border:1px #111 solid;
    display:none;            /* Ĭ�϶Ի������� */
}
.report.show{display:block;} 
.report input{width:80%; font-size:18px; margin-top:18px;}
</style>

<script type="text/javascript">
function onReport(vaab101b,vaab201){
	document.getElementById('report').style.display='block'; 
	document.getElementById("aab101b").value=vaab101b;
	document.getElementById("aab201").value=vaab201;
}

function cancel(){
	document.getElementById('report').style.display='none';
}

</script>

</head>
<body>
	<table border="1" width="95%" align="center">
		<tr>
			<td>����</td>
			<td>����</td>
			<td>��������</td>
			<td></td>
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
						<td><a href="#" onclick="onReport(${ins.aab101 },${ins.aab201 })">�ٱ�</a></td>
					</tr>
					</c:when>
					<c:otherwise>
					<tr>
						<td>${ins.aab203 }</td>
						<td>${ins.aab102 }</td>
						<td>${ins.aab205 }</td>
						<td><a href="#" onclick="onReport(${ins.aab101 },${ins.aab201 })">�ٱ�</a></td>
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
	<div class="report" id="report">
		<form action="<%=path %>/bbsReport.html">
			<table>
				<tr>������ٱ�ԭ��</tr>
				<tr><e:textarea rows="5" cols="20" name="aab603"/></tr>
				<tr>
					<td><input type="hidden" id="aab101b" name="aab101b" value=""></td>
					<td><input type="hidden" id="aab201" name="aab201" value=""></td>
					<td><input type="hidden" name="aab101a" value="<%=session.getAttribute("aab101")%>"></td>
				</tr>
				<tr>
					<td><input type="submit" name="next" value="�ύ"></td>
					<td><button onclick="cancel()">ȡ��</button></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>