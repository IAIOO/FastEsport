<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%String path=request.getContextPath();%>
<html>
<head>
<title>ս����ļ��Ա��Ϣ��</title>
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
   
   <tr>
     <td>����</td>
     <td>
       <e:text name="aac402" required="true" autofocus="true" defval="${ins.aac402 }"/> 
     </td>
   </tr>
   
   <tr>
     <td>��Ϸ����</td>
     <td>
       <e:select name="aac403" value="Ӣ������:101,CS:102,ħ��:103,QQ�ɳ�:104,֩��ֽ��:105" defval="${ins.aac403 }" />
     </td>
   </tr>
	   
   
   <tr>
     <td>��������</td>
     <td>
       <e:date name="aac404"  required="true" defval="${ins.aac404 }"/>
     </td>
   </tr>


   <tr>
     <td>�ֻ�����</td>
     <td>
       <e:text name="aac405"  required="true" defval="${ins.aac405 }"/> 
     </td>
   </tr>
   <tr>
     <td>�ɼ�</td>
     <td>
       <e:textarea rows="5" cols="45" name="aac406" defval="${ins.aac406 }"/>
     </td>
   </tr>

   <tr>
     <td>����Ҫ��</td>
     <td>
       <e:textarea rows="5" cols="45" name="aac407" defval="${ins.aac407 }"/>
     </td>
   </tr>
   <tr>
     <td colspan="2" align="center">
       <input type="submit" name="next" value="�ύ" onclick="ale()" formation="ac04AddEmp.jsp">
 
                           
     </td>
   </tr>
</table>

</form>
</body>
</html>