<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	Connection con=null;
	String loged=(String)session.getAttribute("LoggedUser");
	ArrayList<String> wish=(ArrayList)session.getAttribute("wishlistItem");
	HashMap cart=(HashMap)session.getAttribute("cartItem");
	String wish_Str=wish.toString();
	String cart_Str=cart.toString();
	System.out.println("Logout wish_Str= "+wish_Str);
	System.out.println("Logout cart_Str= "+cart_Str);
	try{
		
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dec2016","root","Archana@12");
		
	}catch(Exception e){
		e.printStackTrace();
	}
	PreparedStatement ps1=con.prepareStatement("select * from List where username=?");
	ps1.setString(1, loged);
	ResultSet rs=ps1.executeQuery();	
	if(rs.next()){
		PreparedStatement ps2=con.prepareStatement("UPDATE List SET cart_list=?, wish_list=? WHERE username=?;");		
		ps2.setString(1, cart_Str);
		ps2.setString(2, wish_Str);
		ps2.setString(3, loged);
		int x=ps2.executeUpdate();
		if(x==1){
			session.removeAttribute("LoggedUser");
			session.removeAttribute("cartItem");
			session.removeAttribute("wishlistItem");
		}
		
	}
	else{
		String sql = "insert into List values(?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, loged);
		ps.setString(2, cart_Str);
		ps.setString(3, wish_Str);
		int x=ps.executeUpdate();
		System.out.println("x= "+x);
		if(x==1){
			session.removeAttribute("LoggedUser");
			session.removeAttribute("cartItem");
			session.removeAttribute("wishlistItem");

		}
	}
%>
<jsp:forward page="homepage.jsp"></jsp:forward>
</body>
</html>