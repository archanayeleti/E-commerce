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
<%!
Connection con;
PreparedStatement ps; 
String user;
ResultSet rs;
%>
<%!
HashMap<String, Integer> map;
ArrayList<String> ar;
%>
</head>
<body>


<%
	user=(String)session.getAttribute("LoggedUser");;
	System.out.println("user= "+user);

try{
	
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dec2016","root","Archana@12");
	ps = con.prepareStatement("select * from List where username=?");
	ps.setString(1,user);
	rs=ps.executeQuery();
	if(rs.next()){
		
		
		String st1=rs.getString(3);
		String wish=st1.substring(1, st1.length()-1);
		String s[]=wish.split(",");
		System.out.println("s= "+s.length);
		ar=new ArrayList<String>();
		for(int i=0;i<s.length;i++){
			System.out.println("s["+i+"]"+s[i]);
			ar.add(s[i]);
		}
		session.setAttribute("wishlistItem", ar);
		
		
		map = new HashMap<String,Integer>();
		System.out.println("2= "+rs.getString(2));
		String st=rs.getString(2);  System.out.println("1");
		String str=st.substring(1, st.length()-1);System.out.println("str= "+str);
		String cart[]=str.split(","); System.out.println("2");
		for(int i=0;i<cart.length;i++){ System.out.println("3");
			String cart_Map[]=cart[i].split("="); System.out.println("4  cart_Map[1]="+cart_Map[1]);
			int n=Integer.parseInt(cart_Map[1]); System.out.println("5");
			map.put(cart_Map[0],n); System.out.println("6");
		}
		session.setAttribute("cartItem",map ); System.out.println("7");
		System.out.println(map);
	}
	
	
	}catch(Exception e){
	e.printStackTrace();
}
%>

</body>
</html>