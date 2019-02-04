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
    		case "31":
    			alert("登录成功");
    			break;
    		case "32":
    			location.href="<%=basePath%>joybeans/main.jsp";
    			break;
    		case "33":
    			alert("注册成功");
    			location.href="<%=basePath%>joybeans/login.jsp";
    			break;
    		case "34":
    			alert("用户帐号已恢复正常");
    			location.href="<%=basePath%>user/queryAllUser.action";
    			break;
    		case "35":
    			alert("用户帐号已暂停使用");
    			location.href="<%=basePath%>user/queryAllUser.action";
    			break;
			case "36":
    			alert("游戏类型添加成功");
    			location.href="<%=basePath%>gameType/queryAllType.action";
    			break;
    		case "37":
    			alert("游戏类型修改成功");
    			location.href="<%=basePath%>gameType/queryAllType.action";
    			break;
    		case "38":
    			alert("添加游戏成功");
    			location.href="<%=basePath%>game/queryAllGame.action";
    			break;
    		case "39":
    			alert("修改游戏成功");
    			location.href="<%=basePath%>game/queryAllGame.action";
    			break;
    		case "40":
    			alert("添加兑换比例成功");
    			location.href="<%=basePath%>bean/queryAllBean.action";
    			break;
    		case "41":
    			alert("修改兑换比例成功");
    			location.href="<%=basePath%>bean/queryAllBean.action";
    			break;
    		case "42":
    			alert("删除兑换比例成功");
    			location.href="<%=basePath%>bean/queryAllBean.action";
    			break;
    	}
     </script>
</body>
</html>