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
		String arr[]=request.getParameterValues("gadget");
		//System.out.println("from session:"+list);
		if(list==null){
			list=new ArrayList<String>();
			
		}
		
		for(int i=0;i<arr.length;i++){
			list.add(arr[i]);
		}
		session.setAttribute("gadgets", list);
%>
	
<h2> You have the following items in your cart</h2>
<ul>
<%
	for(int i=0;i<list.size();i++){
%>	
	<li><%=list.get(i) %>
<%
	}
%>
</li>
</ul>
</body>
</html>