<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%String path=request.getContextPath();%>
<html>
<head>
<title>���±���</title>
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
    alert("�������ύ�������ĵȴ����.....");
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
       ս����ļ������Ϣ
      <hr width="160">
    </caption>  
		
     <td colspan="2" align="center">
       <input type="submit" name="next" value="�ύ" onclick="ale()" formation="ac04AddEmp.jsp">
 
                           
     </td>
   </tr>
</table>

</form>
</body>
</html>