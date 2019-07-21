<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path = request.getContextPath(); %>
<html>
<head>
<style type="text/css">
  tr
  {
     height:25px;
  }
</style>
<script type="text/javascript">
function onLook(vaac301)
{	 
	 var vform = document.getElementById("myform");
	 vform.action="<%=path%>/teamFindByIdEnlist.html?aac301="+vaac301;
	 vform.submit();
}
function onMoney(){
	var bMoney=Number($("#qaac305").val());
	var eMoney=Number($("#qaac310").val());	
	if(bMoney>eMoney)
		{
			$("#qaac310").val(bMoney);				
		}
	if(bMoney<0||eMoney<0)
		{
			alert('��ʾ:���ʲ���Ϊ��!')
			$("#qaac305").val('');
			$("#qaac310").val('');
		}
}
</script>
</head>
<body>
<form id="myform" action="<%=path%>/teamQueryForTeam.html" method="post">
<!-- ��ѯ������ -->
<table border="1" width="95%" align="center">
<caption>
	ս����ļ��Ϣ��ѯ
	<hr width="160">
</caption>
<tr>
	<td colspan="4">��ѯ����</td>
</tr>
<tr>
	<td>ս������</td>
	<td><e:text name="qaac103" /></td>
 	<td>��Ϸ����</td>
	<td><e:groupbox name="qaac304" value="DOTA2:1,LOL:2,������ҫ:3,CSGO:4,PUBG:5,OW:6,�Ǽ�����2:7,ħ������3:8,¯ʯ��˵:9"/></td>
</tr>
<tr>
	<td>н�ʷ�Χ</td>
	<td><e:number step="100" id="qaac305" name="qaac305" defval="${ins.aac305 }" onchange="onMoney()"/>
	����<e:number step="100" id="qaac310" name="qaac310" defval="${ins.aac310 }" onchange="onMoney()"/>(RMB)</td>
	<td>ְҵ/��ְҵս��</td>
	<td><e:radio name="qaac111" value="��ְҵս��:0,ְҵս��:1" defval="0" /></td>
</tr>
<tr>
	<td>�������ڣ��ڴ�����ǰ�����н����</td>
	<td><e:date name="eaac307" /></td>
 	<td>ս�����ڵ���</td>
	<td>
	<select id="province" name="qaac104" onchange="selectprovince(this.value);"></select>
    <select id="city" name="qaac104" style=" width:95px;"></select>
    </td> 
</tr>
</table>
<table border="1" align="center" width="80%">
	<!--  ���ݵ�����-->
<tr>
	<td></td>
	<td>ս������</td>
	<td>ʣ����ļ����</td>
	<td>��͹���</td>
	<td>��߹���</td>
	<td>ְҵ/��ְҵս��</td>
	<td>��ļ��������</td>
	<td>ս�����ڵ���</td>
	<td>�鿴������Ϣ</td>
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
    	   	  <tr>
			    <td>${vs.count }</td>
			    <td>${ins.aac103 }</td>
			    <td>${ins.aac303 }</td>
			    <td>${ins.aac305 }</td>
			    <td>${ins.aac310 }</td>
			    <td>${ins.aac111 }</td>
			    <td>${ins.aac307 }</td>
			    <td>${ins.aac104 }</td>
			    <td>
			      <!-- #  ��ê -->
			      <a href="#" onclick="onLook('${ins.aac301 }')">�鿴</a>
			    </td>
			  </tr>
	      </c:forEach>
	      <!-- ������� -->
	      <c:forEach begin="${fn:length(rows)+1 }" step="1" end="15">
		          <tr>
		            <td></td>
		            <td></td>
		            <td></td>
		            <td></td>
		            <td></td>
		            <td></td>
		            <td></td>
		            <td></td>
		            <td></td>
		          </tr>
	      </c:forEach>
     </c:when>
     <c:otherwise>
        <c:forEach begin="1" step="1" end="15">
           <tr>
             <td></td>
             <td></td>
             <td></td>
             <td></td>
             <td></td>
             <td></td>
             <td></td>
             <td></td>
             <td></td>
           </tr>
        </c:forEach>
     </c:otherwise>
   </c:choose>
</tr>
</table>

<!-- ���ܰ�ť�� -->
<table border="1" width="95%" align="center">
  <tr>
    <td align="center">
       <input type="submit" name="next" value="��ѯ">
    </td>
  </tr>
</table>
</form>
<script type="text/javascript" src="js/city.js"></script>
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
</body>
</html>