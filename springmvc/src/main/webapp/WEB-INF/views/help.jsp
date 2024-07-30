<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<%@page isELIgnored="false" %>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Help Page</title>
</head>
<body>
<h1>Hello! This is Help page</h1>
<%
	/* String name = (String)request.getAttribute("name");
	Integer rollnumber = (Integer)request.getAttribute("rollnumber");
	LocalDateTime time = (LocalDateTime) request.getAttribute("time"); */
%>

<%-- <h2>Here is the name - <%=name %></h2> --%>
	<h2>Here is the name - ${name }</h2>
<%-- <h2>Here is the rollnumber - <%=rollnumber %></h2> --%>
	<h2>Here is the rollnumber - ${rollnumber }</h2>
<%-- <h2>Here is the today's date and time - <%=time.toString() %> </h2>  --%>
	<h2>Here is the name - ${time }</h2>
	<hr>
	<%-- <h2>Here is the marks - ${marks }</h2>--%>
	
	<c:forEach var="item" items="${marks }">
		<%-- <h2>${item }</h2> --%>
		<h2><c:out value="${item }"></c:out></h2>
	
	</c:forEach>

</body>
</html>