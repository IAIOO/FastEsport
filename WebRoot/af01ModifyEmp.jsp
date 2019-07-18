<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%String path=request.getContextPath();%>
<html>
<head>
<title>Insert title here</title>
<style type="text/css">
  td{
      height:30px;
  }
  msg{
     color:#FF0000
  }
</style>
</head>
<body>
${msg}
<br>
<br>
<form action="<%=path%>/af01ModifyEmp.html" method="post">
<table  border="1" align="center" width="45%">
    <caption>
       赛事状态修改
      <hr width="160">
    </caption>
   <tr>
     <td>赛事状态</td>
     <td>	
     	<input type="text" name="aaf109" >
     </td>
   </tr>
   <tr>
   	<td>
   		<input type="submit" value="修改">
   	</td>
   	</tr>
</table>
<input type="hidden" name="aaf101" value="${param.aaf101}">
   
</form>
</body>
</html>