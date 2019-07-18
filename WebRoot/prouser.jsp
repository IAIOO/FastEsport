<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>职业选手页面</title>
<script type="text/javascript">
  function toinfo(){
	  //实现页面的跳转
	  window.location.href='prouserinfo.jsp';
  }
  
  function doPage(num) {
	  window.location.href='<%=path%>/userQuery.html?now=' + num;
  }
  
  function toPage() {
	  var vpageNum = document.getElementById("pageNum").value;
	  if(vpageNum < 1 || vpageNum > ${pageBean.totalPage}){
		  alert("输入页码有误");
	  }
	  else{
	      window.location.href='<%=path%>/userQuery.html?now=' + vpageNum;
	  }
	  window.event.returnValue=false;
  }
  
</script>
</head>
<body>
<form id="myform" action="<%=path%>/userQuery.html" method="post">
  <!-- 查询条件区 -->
	<table width="95%" align="center">
	  <tr>
	    <td colspan="4">职业选手查询</td>
	  </tr>
			<tr>
				<td>选手用户名</td>
				<td><e:text name="aab102" /></td>
				<td>游戏类型</td>
				<td>
					<e:select name="aab109" value="DOTA2:01,LOL:02,王者荣耀:03,CSGO:04,PUBG:05,OW:06,星际争霸2:07,魔兽争霸3:08,炉石传说:09" header="true"/>
				</td>
				<td>选手编号</td>
				<td><e:text name="aab103" /></td>
				<td><input type="submit" name="finduser" value="查询"></td>
			</tr>
			</table>
			<!-- 数据迭代区 -->
	<table border="1" width="95%" align="center">
	<tr>
	    <td>选手名</td>
	    <td>擅长项目</td>
	    <td>注册日期</td>
	    <td>所属战队</td>
	  </tr>
	  <!--
	         注意事项
	    1.$及大括号的结束标记 }与双引号之间,不允许出现空格
	    2.所有的属性之间至少要有一个空格,否则报错
	    3.var 属性,相当于在页面定义变量名称,因此  ins不允许再用$ {  }
	   -->
	   <c:choose>
	     <c:when test="${rows!=null }">
	         <!-- 显示实际查询到的数据 -->
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
		     <tr onclick="toinfo()">
				<td>${ins.aab102 }</td>
				<td>${ins.aab109 }</td>
				<td>${ins.aab107 }</td>
				<td>${ins.aac103 }</td>
			  </tr>
		      </c:forEach>
	     </c:when>
	   </c:choose>
	   ${msg }
	   <tfoot id="tfootID">
         <tr>
             <td colspan="10">
                 <a href="javascript:void(0)" onclick="doPage(1)">首页</a>&nbsp;
                 <a href="javascript:void(0)" onclick="doPage(${pageBean.pageNo-1})">上一页</a>&nbsp;
                 <a href="javascript:void(0)" onclick="doPage(${pageBean.pageNo+1})">下一页</a>&nbsp;
                 <a href="javascript:void(0)" onclick="doPage(${pageBean.totalPage})">末页</a>&nbsp;
                 	第${pageBean.pageNo}页/第${pageBean.totalPage}页&nbsp;
                 <input type="text" id="pageNum">&nbsp;
                 <button onclick="toPage()">go</button>
             </td>
         </tr>
     </tfoot>
	</table>
</form>
</body>
</html>