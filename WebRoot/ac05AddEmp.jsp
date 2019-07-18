<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%String path=request.getContextPath();%>
<html>
<head>
<title>赛事报名</title>
<style type="text/css">
  td{
      height:30px;
  }
  msg{
     color:#FF0000
  }
</style>

<script language="javascript">
function ale()
{
    alert("申请已提交，请耐心等待审核.....");
} 
</script>


</head>
<body>
${msg}
<br>
<br>
<form action="<%=path%>/ac04AddEmp.html" method="post">
<table  border="1" align="center" width="45%">
    <caption>
       战队招募报名信息
      <hr width="160">
    </caption>  
		
     <td colspan="2" align="center">
       <input type="submit" name="next" value="提交" onclick="ale()" formation="ac04AddEmp.jsp">
 
                           
     </td>
   </tr>
</table>

</form>
</body>
</html>