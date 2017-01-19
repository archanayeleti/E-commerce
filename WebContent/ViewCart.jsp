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
HashMap<String, Integer> map=(HashMap)session.getAttribute("cartItem");
Iterator it = map.entrySet().iterator();
while(it.hasNext()){
	Map.Entry item = (Map.Entry) it.next();
%>
<table>
	<tr>
		<td><%=item.getKey() %></td>
		<td><%=item.getValue() %></td>
		
	</tr>
	<tr>
		<td><a href="CheckLoggedIn.jsp?list=<%=  item.getKey() %>">Add to list</a></td>
		<td><a href='RemoveFromCart.jsp?item=<%= item.getKey()  %>'>Delete</a></td>
	</tr>
</table>
	
<% 	
}
%>

<a href="index.html">Continue Shopping</a>
</body>
</html>