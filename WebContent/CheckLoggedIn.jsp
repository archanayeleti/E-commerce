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
	String list=request.getParameter("list");
	String loginId =(String)session.getAttribute("LoggedUser");
System.out.println(loginId);
	if(loginId==null){
		System.out.println("entered jsp");
%>
	<jsp:forward page="login.jsp"></jsp:forward>
<%
	}
	else{
%>
	<jsp:forward page="WishList.jsp?list=<%=list %>"></jsp:forward>
<%
		
	}

%>
</body>
</html>