<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import = "ru.wlad.db.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hello page</title>
</head>
<body>
	<h1>Hello World!</h1>
	<br/>
	<%
		for(String name : DatabaseFacade.getBooks()){
			out.println(name + "<br/>");
		}
		if (request.getParameter("input") != null) {
			//DatabaseFacade.insert(request.getParameter("input"));
			out.println("Request commit!");
		}
	%>
<form>
		<input name = "input" type = "text"/>
		<input  type = "submit"/>
</form>
</body>
</html>