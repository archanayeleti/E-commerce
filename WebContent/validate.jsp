<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="user" class="com.demo.model.UserBean"></jsp:useBean>
<jsp:setProperty name="user" property="*" />
<jsp:useBean id="obj" class="com.demo.dao.UserDAO"/>

<%
	int x = obj.validateUser(user);
	if(x==1){
%>
	<jsp:forward page="index.html"/>
<% 		
	} else{
%>	
<script>

alert("Form has been submitted");

</script> 
<%	
	}
	
%>

</body>
</html>