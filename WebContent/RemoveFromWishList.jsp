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
	ArrayList<String> list=(ArrayList)session.getAttribute("wishlistItem");
	String item=request.getParameter("rem");
	list.remove(item);
	session.setAttribute("wishlistItem", list);
%>
	<h2> You have the following items in your wish list:</h2>
	<ul>
<%	
	for(int i=0;i<list.size();i++){
%>
	<li><%=list.get(i) %>
	<a href="RemoveFromWishList.jsp?rem=<%=list.get(i) %>">Delete</a>
<%
	}
	
%>
</li>
</ul>
</body>
</html>