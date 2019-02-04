<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>login</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head> 

	<body>
		<div id="login">
			<div id="title">用户登录</div>
			<form action="user/login.action" method="post">
				<table id="loginTable">
					<tr>
						<td>用户名:</td>
						<td><input type="text" placeholder="在此输入用户名" name="account" id="account" /></td>
						<td></td>
					</tr>
					<tr>
						<td>密码:</td>
						<td><input type="text" name="pwd" id="pwd" /></td>
						<td></td>
					</tr>
					<tr>
						<input type="submit" value="登录" class="btn" id="loginBtn" />
						<input type="reset" value="重置" class="btn" id="resetBtn" />
					</tr>
				</table>
	
			</form>


		</div>
	<div>
		<div title="countDate">计算日期</div>
		<form action="Alan/queryDays.action" method="post">
			<table id="countDaysTable">
				<tr>
					<td>开始日期:</td>
					<td><input type="text" placeholder="2016-05-14" name="startDate" id="startDate" /></td>
					<td></td>
				</tr>
				<tr>
					<input type="submit" value="查询" class="btn" id="queryBtn" />
					<input type="reset" value="清空" class="btn" id="resetBtn1" />
				</tr>
			</table>

		</form>
	<div>
		<%
			String days=(String)request.getAttribute("days");
		%>
		<script type="text/javascript">
            var days=document.getElementById("days").value;
			alert(days);
		</script>

	</div>
	</div>
	</body>
</html>
