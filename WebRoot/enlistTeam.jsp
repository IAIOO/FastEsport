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
		    alert('开始时间需早于结束时间!'+CurrentDate+"/"+StartDate);
		    $("#baac306").val("");
		    $("#eaac307").val("");
		}
	if(StartDate.getTime() <= CurrentDate.getTime()) 
		{
			alert('开始!');
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
			alert('提示:工资不能为负!')
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
${ins.aac101 }战队序列号
	<form id="myform">
	<input type="hidden" id="aac101" name="aac101" value="${ins.aac101 }">
		<table border="1" align="center" width="45%">
			<caption>
				战队招募
				<hr width="160">
			</caption>
			<tr>
				<td colspan="2">战队招募表</td>
			</tr>
			<!--  在招募表中提供战队信息-->
			<c:if test="${param.aac301!=null }">
			<tr>
			<td>战队名称</td>
			<td><input type="text" name="aac103" value=${ins.aac103 }></td>
			</tr>
			</c:if>			

			<!--     是否只招募职业选手 -->
			<tr>
				<td>招募类型</td>
				<td><e:radio name="aac302" value="任意选手:0,职业选手:1" defval="${empty param.aac301?'0':ins.aac302 }"/></td>
			</tr>
			<tr>
				<td>招募人数</td>
       			<td><e:number step="1" name="aac303" required="true" defval="${ins.aac303 }"/></td>
			</tr>
			<tr>
				<td>游戏类型</td>
				<td><e:groupbox name="aac304"
						value="DOTA2:1,LOL:2,王者荣耀:3,CSGO:4,PUBG:5,OW:6,星际争霸2:7,魔兽争霸3:8,炉石传说:9"
						newLineNumber="5" defval="${ins.aac304 }" /></td>
			</tr>
			<tr>
				<td>薪资范围</td>
       			<td><e:number step="100" id="baac305" name="aac305" required="true" defval="${ins.aac305 }" onchange="onMoney()"/>
       			——<e:number step="100" id="eaac310" name="aac310" required="true" defval="${ins.aac310 }" onchange="onMoney()"/>(RMB)</td>
			</tr>
			<tr>
				<td>招募开始日期</td>
				<td><e:date id="baac306" name="aac306" required="true" defval="${ins.aac306 }" onchange="onDate()"/></td>
			</tr>
			<tr>
				<td>招募结束日期</td>
				<td><e:date id="eaac307" name="aac307" required="true" defval="${ins.aac307 }" onchange="onDate()"/></td>
			</tr>
			<tr>
				<td>招募要求补充</td>
				<td><e:textarea rows="5" cols="45" name="aac308" defval="${ins.aac308 }"/></td>
			</tr>
			<!--     招募表发布审核状态 -->
			<input style="display:none" name="aac309" value="0">
			<c:choose>
			<c:when test="${param.aac301==null }">
			<tr>
			<td><input type="submit" value="创建" formaction="<%=path %>/teamEnlistTeam.html"></td>
			</tr>
			</c:when>
			<c:otherwise>
			<tr>
			<!--  应该用session 获得用户id-->
			<td><a href="#"  onclick="onEnlist(1)">报名</a></td>
			</tr>
			</c:otherwise>
			</c:choose>
		</table>
	</form>
	<form id="form1">
	<!--  应该用session 获得用户id-->
	<input type="hidden" id="aab101" name="aab101" value="1">
	<input type="hidden" id="aac301" name="aac301" value="${ins.aac301 }">
	</form>
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
</body>
</html>