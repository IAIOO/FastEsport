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
<script type="text/javascript">
function ale()
{
    alert("申请已提交，请耐心等待审核.....");
} 
function onEnlist(){
	var vform = document.getElementById("form1");
	vform.action="<%=path%>/teamAc04AddEmp.html";
	vfrom.submit(); 
}
function onPass(sval){
	var vfrom = document.getElementById("form2");
	vfrom.action="<%=path%>/teamUpdateEnlist.html?aac301="+sval;	 
	vfrom.submit(); 
}
</script>
</head>
<body>
${param.aac301 }
战队招募表序列号
${msg}
<br>
<br>
<form id="form1">
<table  border="1" align="center" width="45%">
    <caption>
       战队招募报名信息
      <hr width="160">
    </caption>  
  
   <c:choose>
 <c:when test="${!empty ins.aab102 }">
      <tr>
     <td>姓名</td>
     <td>
       <e:text name="aac402" required="true" autofocus="true" defval="${ins.aab102 }" /> 
     </td>
   </tr>
   </c:when>
      <c:otherwise>
     <tr>
     <td>姓名</td>
     <td>
       <e:text name="qaac402" required="true" autofocus="true" defval="${ins.aac402 }" /> 
     </td>
   </tr>
      </c:otherwise>
      </c:choose> 
   
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

 <c:choose>
 <c:when test="${!empty ins.aab102 }">
   <tr>
     <td>手机号码</td>
     <td>
       <e:text name="aac405"  required="true" defval="${ins.aab105 }"/> 
     </td>
   </tr>
      <tr>
     <td>联系邮箱</td>
     <td>
       <e:text name="aac408"  required="true" defval="${ins.aab106 }"/> 
     </td>
   </tr>
   </c:when>
      <c:otherwise>
   <tr>
     <td>手机号码</td>
     <td>
       <e:text name="qaac405" required="true" defval="${ins.aac405 }"/> 
     </td>
   </tr>
      <tr>
     <td>联系邮箱</td>
     <td>
       <e:text name="qaac408" required="true" defval="${ins.aac408 }"/> 
     </td>
   </tr>
      </c:otherwise>
      </c:choose>
   
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
   <c:if test="${empty ins.aac401 }">
   <tr>
     <td colspan="2" align="center">
        <input type="hidden" name="aac409" value="0">
   		<input type="hidden" name="aac301" value="${param.aac301 }">
        <input type="submit" name="next" value="提交" onclick="onEnlist()">                        
     </td>
   </tr>
   </c:if>
</table>
</form>

<form id="form2">
<input type="hidden" name="aac301" value="${ins.aac301 }">
<input type="hidden" name="aac401" value="${ins.aac401 }">
   	 <c:if test="${ins.aac409==0 }">
	<td colspan="2" align="center">
	  <input type="submit" name="next" value="通过" onclick="onPass('${ins.aac301 }')">                        
	</td>
	</c:if>
</form>

</body>
</html>