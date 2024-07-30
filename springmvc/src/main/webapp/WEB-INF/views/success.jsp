<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 	<h1>${Header }</h1>
 	<h3>${Desc }</h3>
 	<h2 style ="color:green">${Msg }</h2>
 	
 	<hr>
 		
	<h2>Welcome, ${user.userName }</h2>
	<h2>Your Email ID is ${user.email }</h2>
	<h2>Your Password is ${user.userPassword } try to secure the password</h2>
	
</body>
</html>