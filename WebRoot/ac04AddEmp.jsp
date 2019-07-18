<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%String path=request.getContextPath();%>
<html>
<head>
<title>战队招募成员信息表</title>
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
   
   <tr>
     <td>姓名</td>
     <td>
       <e:text name="aac402" required="true" autofocus="true" defval="${ins.aac402 }"/> 
     </td>
   </tr>
   
   <tr>
     <td>游戏类型</td>
     <td>
       <e:select name="aac403" value="英雄联盟:101,CS:102,魔兽:103,QQ飞车:104,蜘蛛纸牌:105" defval="${ins.aac403 }" />
     </td>
   </tr>
	   
   
   <tr>
     <td>出生日期</td>
     <td>
       <e:date name="aac404"  required="true" defval="${ins.aac404 }"/>
     </td>
   </tr>


   <tr>
     <td>手机号码</td>
     <td>
       <e:text name="aac405"  required="true" defval="${ins.aac405 }"/> 
     </td>
   </tr>
   <tr>
     <td>成绩</td>
     <td>
       <e:textarea rows="5" cols="45" name="aac406" defval="${ins.aac406 }"/>
     </td>
   </tr>

   <tr>
     <td>特殊要求</td>
     <td>
       <e:textarea rows="5" cols="45" name="aac407" defval="${ins.aac407 }"/>
     </td>
   </tr>
   <tr>
     <td colspan="2" align="center">
       <input type="submit" name="next" value="提交" onclick="ale()" formation="ac04AddEmp.jsp">
 
                           
     </td>
   </tr>
</table>

</form>
</body>
</html>