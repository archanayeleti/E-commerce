<<<<<<< HEAD
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
	String item=request.getParameter("item");
	list.remove(item);
	session.setAttribute("gadgets", list);
%>
<jsp:forward page="ViewCart.jsp"></jsp:forward>
</li>
</ul>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	ArrayList<String> list = (ArrayList)session.getAttribute("gadgets");
	String item = request.getParameter("item");
	list.remove(item);
	session.setAttribute("gadgets",list);
%>
<h2>
<ul>
<%
	
	for(int i=0;i<list.size();i++){
%>
		<li><a href='RemoveFromCart.jsp?item=<%= list.get(i) %>'><%=list.get(i) %></a></li>
<%
	}
%>
</ul>
</h2>

>>>>>>> 551d890d952b67a2473d96c9af3f7a9f2fcfd383
</body>
</html>