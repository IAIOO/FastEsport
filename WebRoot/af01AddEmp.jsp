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
<form action="<%=path%>/af01AddEmp.html" method="post">
<table  border="1" align="center" width="45%">
    <caption>
       数据${empty param.aaf101?'添加':'修改' }
       ${empty param.aaf101 }
      <hr width="160">
    </caption>
   <tr>
     <td colspan="2" align="center">赛事数据</td>
   </tr>
   <%-- <tr>
     <td>发起人序列号</td>
     <td>
       <e:text name="aab101" required="true" autofocus="true" defval="${ins.aab101 }"/> 
     </td>
   </tr> --%>
   
   <tr>
     <td>赛事类型</td>
     <td>
       <e:select name="aaf102" value="英雄联盟:101a,CS:102a,魔兽:103a,QQ飞车:104a,蜘蛛纸牌:105a" defval="${ins.aaf102 }" />
     </td>
   </tr>
   <tr>
     <td>赛事名称</td>
     <td>
       <e:text name="aaf103" required="true" autofocus="true" defval="${ins.aaf103 }"/> 
     </td>
   </tr>
   <tr>
     <td>赛事编号</td>
     <td>
       <e:text name="aaf104" required="true" autofocus="true" defval="${ins.aaf104 }"/> 
     </td>
   </tr>
   <tr>
     <td>赛制</td>
     <td>
       <e:text name="aaf105" required="true" autofocus="true" defval="${ins.aaf105 }"/> 
     </td>
   </tr>
   
   
   <tr>
     <td>报名结束时间</td>
     <td>
       <input type="date" name="aaf107" required="true" defval="${ins.aaf107}">
     </td>
   </tr>
   <tr>
     <td>比赛开始时间</td>
     <td>
       <input type="datetime-local" name="aaf108" required="true" defval="${ins.aaf108}">
     </td>
   </tr>
   
   
   <tr>
     <td>赛事状态</td>
     <td>
       <e:text name="aaf109" required="true" autofocus="true" defval="${ins.aaf109 }"/> 
     </td>
   </tr>
   <tr>
     <td>人数/队伍限制</td>
     <td>
       <e:text name="aaf110" required="true" autofocus="true" defval="${ins.aaf110 }"/> 
     </td>
   </tr>
   <tr>
     <td>观赛地址</td>
     <td>
       <e:text name="aaf111" required="true" autofocus="true" defval="${ins.aaf111 }"/> 
     </td>
   </tr>
   <tr>
     <td>比赛规则</td>
     <td>
       <e:text name="aaf112" required="true" autofocus="true" defval="${ins.aaf112 }"/> 
     </td>
   </tr>
   <tr>
     <td>密码</td>
     <td>
       <e:text name="aaf113" required="true" autofocus="true" defval="${ins.aaf113 }"/> 
     </td>
   </tr>
   <tr>
     <td colspan="2" align="center">
       <input type="submit" name="next" value="${empty param.aaf101?'添加':'修改' }"
              formaction="<%=path%>/${empty param.aaf101?'af01Add':'af01Modify' }Emp.html">
       <input type="submit" name="next" value="返回" 
              formaction="<%=path%>/af01QueryEmp.html">
             <!--  formnovalidate="formnovalidate"> -->
     </td>
   </tr>
   
</table>

<input type="hidden" name="aaf101" value="${param.aaf101 }">
<e:hidden name="qaaf102"/>
<e:hidden name="qaaf103"/>
<e:hidden name="qaaf105"/>
<e:hidden name="qaaf106"/>
<e:hidden name="baaf104"/>
<e:hidden name="eaaf104"/>
</form>
</body>
</html>