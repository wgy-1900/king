<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <%
    	String operator=(String)request.getAttribute("operator");
    %>
    <input type="hidden" value="<%=operator %>" id="operator"/>
    <script type="text/javascript">
    	var operator=document.getElementById("operator").value;
   		switch(operator){
    		case "1":
    			alert("验证码错误");
    			location.href="<%=basePath%>king/login.jsp";
    			break;
    		case "2":
    			alert("用户名或密码错误");
    			location.href="<%=basePath%>king/login.jsp";
    			break;
    		case "3":
    			alert("用户账户已停用");
    			location.href="<%=basePath%>king/portal.jsp";
    			break;
			case "4":
    			alert("用户名密码不能留空");
    			location.href="<%=basePath%>king/login.jsp";
    			break;
    		case "5":
    			alert("用户名已存在");
    			history.go(-1);
    			break;
    		case "6":
    			alert("游戏类型添加失败,类型已存在");
    			history.go(-1);
    			break;
    		case "7":
    			alert("游戏类型添加失败,类型已存在");
    			history.go(-1);
    			break;
    		case "8":
    			alert("添加失败，兑换比例已存在");
    			history.go(-1);
    			break;
    	}
     </script>
</body>
</html>