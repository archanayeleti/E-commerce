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

	HashMap<String, Integer> gad_map=(HashMap)session.getAttribute("cartItem");
	String wishlist=request.getParameter("list");
	System.out.println("wishlist"+wishlist);
	if(list==null){
		list=new ArrayList<String>();
	}
	list.add(wishlist);
	session.setAttribute("wishlistItem", list);
	gad_map.remove(wishlist);
	session.setAttribute("cartItem", gad_map);
	System.out.println(session.getAttribute("cartItem"));
%>
	<jsp:forward page="ViewWishList.jsp"></jsp:forward>
</body>
</html>