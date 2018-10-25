<%@page import="java.util.UUID"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String uuid = UUID.randomUUID().toString();
	request.getSession().setAttribute("token", uuid);

%>
    
<!doctype html>
<html>
<head>
	<meta charset='utf-8'/>
	<title></title>
</head>
<body>
	<form action="LoginServlet" method="post" >
		<input type="hidden" value=<%=uuid %> name="token" />
		用户名：<input type="text" name="uname"/>  
		密    码:<input type="password" name="psw" />
		<button >提交</button>
	</form>
</body>
</html>