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
%>
<table>
	<tr>
		<td>Username</td>
		<td><input type="text" name="username" /></td>
	</tr>
	<tr>
		<td>Password</td>
		<td><input type="password" name="password" /></td>
	</tr>
	<tr>
		<td><input type="submit" value="submit" /></td>
	</tr>
	
</table>
</form>

</body>
</html>