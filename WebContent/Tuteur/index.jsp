<%@page import="org.mlearning.dto.users.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		Administrateur: 
		<%
			User u = (User) request.getSession().getAttribute("loggedUser");
			out.println(u.getNom());
		%>
	</body>
</html>