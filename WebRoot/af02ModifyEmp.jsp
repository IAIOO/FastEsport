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
<form action="<%=path%>/af02ModifyEmp.html" method="post">
<table  border="1" align="center" width="45%">
    <caption>
       赛程结果修改
      <hr width="160">
    </caption>
   <tr>
     <td>赛程结果</td>
     <td>A得分</td>
     <td>	
     	<input type="text" name="aaf205" >
     </td>
   </tr>
   <tr>
   	<td>
   		<input type="submit" value="修改">
   	</td>
   	<td>B得分</td>
   	<td>	
     	<input type="text" name="aaf206" >
     </td>
   	</tr>
</table>
<input type="hidden" name="aaf201" value="${param.aaf201}">
   
</form>
</body>
</html>