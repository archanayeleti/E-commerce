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
	HashMap<String,Integer> map=(HashMap)session.getAttribute("cartItem");
	String item=request.getParameter("item");
	map.remove(item);
	session.setAttribute("cartItem", map);
%>
<jsp:forward page="ViewCart.jsp"></jsp:forward>
</li>
</ul>
</body>
</html>