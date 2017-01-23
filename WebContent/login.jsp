<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="validate.jsp">
<%
session.removeAttribute("LoggedUser");
String s=request.getParameter("mes");
System.out.println("login "+s);
if(s!=null){
	%>
	<Script>alert("Invalid User name or password");</script>
<%
s=null;
}

%>
<table>
	<tr>
		<td>Username</td>
		<td><input type="text" name="username" required/></td>
	</tr>
	<tr>
		<td>Password</td>
		<td><input type="password" name="password" required/></td>
	</tr>
	<tr>
		<td><input type="submit" value="submit" /></td>
	</tr>
	
</table>
</form>
<a href="ViewCart.jsp">View cart</a>

</body>
</html>