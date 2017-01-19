
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.util.*" %>
 <%@ page import="com.demo.model.ProductBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
</head>
<body>
<jsp:useBean id="product" class="com.demo.model.ProductBean"/>
<jsp:setProperty name="product" property="*" />
<jsp:useBean id="obj" class="com.demo.dao.UserDAO"/>
	<h2> Welcome to E-commerce Website</h2>
	<div id ="itemList">
	<ul>
	<li>
<%	
	ArrayList<ProductBean> rows = obj.loadData();

	for ( ProductBean prod: rows){
		System.out.println(prod.getProductId());
		
%>ss

<table>
	<tr>
		<td><%=prod.getProductId() %></td>
		<td><%=prod.getProductName() %></td>
		<td><%=prod.getDesc() %></td>
		<td><%=prod.getPrice() %></td>
		<td><%=prod.getIcon() %></td>
		<td><a href="GadgetCart.jsp?item=<%=prod.getProductName()%>">Add To Cart</a></td>
		
	</tr>
</table>
	<br/><br/>
	
<%
	}
	
%>

</li>
</ul>
</div>
<a href="ViewCart.jsp">back to cart</a>
</body>
</html>