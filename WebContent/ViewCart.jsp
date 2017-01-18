<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
ArrayList<String> list=(ArrayList)session.getAttribute("gadgets");
	for(int i=0;i<list.size();i++){
%>
<table>
	<tr>
		<td><%=list.get(i) %></td>
		<td>Quantity</td>
		
	</tr>
	<tr>
		<td><a href="login.html?list=<%= list.get(i) %>">Add to list</a></td>
		<td><a href='RemoveFromCart.jsp?item=<%= list.get(i) %>'>Delete</a></td>
	</tr>
</table>
	
<% 	
}
%>

<a href="index.html">Continue Shopping</a>
</body>
</html>