<%@page import="org.apache.catalina.filters.ExpiresFilter.XServletOutputStream"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
</head>
<body>
	<h1>This is Home Page</h1>
	<h1>Called By Home Controller</h1>
	<h1>url /home</h1>
	
	<%
		String name = (String) request.getAttribute("name");
		Integer id = (Integer)request.getAttribute("id");
		List<String> freinds = (List<String>) request.getAttribute("f");
	%>
	
	<h1>Name is <%=name %></h1>
	<h1>Id is <%=id %></h1>
	
	<%
		for(String s:freinds)
		{
	%>
	<h1><%=s%></h1>
	<% 	
		}
	%>
	
</body>
</html>