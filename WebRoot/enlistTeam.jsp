2<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%String path = request.getContextPath(); %>
<html>
<head>
<script type="text/javascript">
function onDate(){
	var CurrentDate = new Date().toString();
	var StartDate =new Date($("#baac306").val());
	var EndDate =new Date($("#eaac307").val());
	if(StartDate.getTime() >= EndDate.getTime()) 
		{
		    alert('��ʼʱ�������ڽ���ʱ��!'+CurrentDate+"/"+StartDate);
		    $("#baac306").val("");
		    $("#eaac307").val("");
		}
	if(StartDate.getTime() <= CurrentDate.getTime()) 
		{
			alert('��ʼ!');
		}
}
function onMoney(){
	var bMoney=Number($("#baac305").val());
	var eMoney=Number($("#eaac310").val());	
	if(bMoney>eMoney)
		{
			$("#eaac310").val(bMoney);				
		}
	if(bMoney<0||eMoney<0)
		{
			alert('��ʾ:���ʲ���Ϊ��!')
			$("#baac305").val('');
			$("#eaac310").val('');
		}
}
function onEnlist(vaab101)
{
	 var vform = document.getElementById("form1");
	 vform.action="<%=path%>/teamFindByIdForEnlist.html?aab101="+vaab101;
	 vform.submit();
}
</script>
</head>
<body>
${msg }
${ins.aac101 }ս�����к�
	<form id="myform">
	<input type="hidden" id="aac101" name="aac101" value="${ins.aac101 }">
		<table border="1" align="center" width="45%">
			<caption>
				ս����ļ
				<hr width="160">
			</caption>
			<tr>
				<td colspan="2">ս����ļ��</td>
			</tr>
			<!--  ����ļ�����ṩս����Ϣ-->
			<c:if test="${param.aac301!=null }">
			<tr>
			<td>ս������</td>
			<td><input type="text" name="aac103" value=${ins.aac103 }></td>
			</tr>
			</c:if>			

			<!--     �Ƿ�ֻ��ļְҵѡ�� -->
			<tr>
				<td>��ļ����</td>
				<td><e:radio name="aac302" value="����ѡ��:0,ְҵѡ��:1" defval="${empty param.aac301?'0':ins.aac302 }"/></td>
			</tr>
			<tr>
				<td>��ļ����</td>
       			<td><e:number step="1" name="aac303" required="true" defval="${ins.aac303 }"/></td>
			</tr>
			<tr>
				<td>��Ϸ����</td>
				<td><e:groupbox name="aac304"
						value="DOTA2:1,LOL:2,������ҫ:3,CSGO:4,PUBG:5,OW:6,�Ǽ�����2:7,ħ������3:8,¯ʯ��˵:9"
						newLineNumber="5" defval="${ins.aac304 }" /></td>
			</tr>
			<tr>
				<td>н�ʷ�Χ</td>
       			<td><e:number step="100" id="baac305" name="aac305" required="true" defval="${ins.aac305 }" onchange="onMoney()"/>
       			����<e:number step="100" id="eaac310" name="aac310" required="true" defval="${ins.aac310 }" onchange="onMoney()"/>(RMB)</td>
			</tr>
			<tr>
				<td>��ļ��ʼ����</td>
				<td><e:date id="baac306" name="aac306" required="true" defval="${ins.aac306 }" onchange="onDate()"/></td>
			</tr>
			<tr>
				<td>��ļ��������</td>
				<td><e:date id="eaac307" name="aac307" required="true" defval="${ins.aac307 }" onchange="onDate()"/></td>
			</tr>
			<tr>
				<td>��ļҪ�󲹳�</td>
				<td><e:textarea rows="5" cols="45" name="aac308" defval="${ins.aac308 }"/></td>
			</tr>
			<!--     ��ļ�������״̬ -->
			<input style="display:none" name="aac309" value="0">
			<c:choose>
			<c:when test="${param.aac301==null }">
			<tr>
			<td><input type="submit" value="����" formaction="<%=path %>/teamEnlistTeam.html"></td>
			</tr>
			</c:when>
			<c:otherwise>
			<tr>
			<!--  Ӧ����session ����û�id-->
			<td><a href="#"  onclick="onEnlist(1)">����</a></td>
			</tr>
			</c:otherwise>
			</c:choose>
		</table>
	</form>
	<form id="form1">
	<!--  Ӧ����session ����û�id-->
	<input type="hidden" id="aab101" name="aab101" value="1">
	<input type="hidden" id="aac301" name="aac301" value="${ins.aac301 }">
	</form>
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
</body>
</html>