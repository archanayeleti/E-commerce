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
	String arr[] = request.getParameterValues("gadget");
	
	if(list == null){		
		
			list = new ArrayList<String>();
	}
		for(int i=0;i<arr.length;i++){
		list.add(arr[i]);
		
	}
		
	session.setAttribute("gadgets",list );

%>
 <h2>You have the following items in your cart:<br/></h2>
 <ul>

<%
	for(int i=0;i<list.size();i++){
%>
	<li><a href='RemoveFromCart?item=<%= list.get(i) %>'><%=list.get(i) %></a>
<% 
	}
%>
</li>
</ul>


</body>
</html>