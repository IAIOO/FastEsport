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
<script type="text/javascript">
function ale()
{
    alert("�������ύ�������ĵȴ����.....");
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
ս����ļ�����к�
${msg}
<br>
<br>
<form id="form1">
<table  border="1" align="center" width="45%">
    <caption>
       ս����ļ������Ϣ
      <hr width="160">
    </caption>  
  
   <c:choose>
 <c:when test="${!empty ins.aab102 }">
      <tr>
     <td>����</td>
     <td>
       <e:text name="aac402" required="true" autofocus="true" defval="${ins.aab102 }" /> 
     </td>
   </tr>
   </c:when>
      <c:otherwise>
     <tr>
     <td>����</td>
     <td>
       <e:text name="qaac402" required="true" autofocus="true" defval="${ins.aac402 }" /> 
     </td>
   </tr>
      </c:otherwise>
      </c:choose> 
   
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

 <c:choose>
 <c:when test="${!empty ins.aab102 }">
   <tr>
     <td>�ֻ�����</td>
     <td>
       <e:text name="aac405"  required="true" defval="${ins.aab105 }"/> 
     </td>
   </tr>
      <tr>
     <td>��ϵ����</td>
     <td>
       <e:text name="aac408"  required="true" defval="${ins.aab106 }"/> 
     </td>
   </tr>
   </c:when>
      <c:otherwise>
   <tr>
     <td>�ֻ�����</td>
     <td>
       <e:text name="qaac405" required="true" defval="${ins.aac405 }"/> 
     </td>
   </tr>
      <tr>
     <td>��ϵ����</td>
     <td>
       <e:text name="qaac408" required="true" defval="${ins.aac408 }"/> 
     </td>
   </tr>
      </c:otherwise>
      </c:choose>
   
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
   <c:if test="${empty ins.aac401 }">
   <tr>
     <td colspan="2" align="center">
        <input type="hidden" name="aac409" value="0">
   		<input type="hidden" name="aac301" value="${param.aac301 }">
        <input type="submit" name="next" value="�ύ" onclick="onEnlist()">                        
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
	  <input type="submit" name="next" value="ͨ��" onclick="onPass('${ins.aac301 }')">                        
	</td>
	</c:if>
</form>

</body>
</html>