<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%!
HashMap<String, Integer> map;
%>
</head>
<body>

<%
//ArrayList<String> ar=(ArrayList)session.getAttribute("usernames");
//if(ar==null){
//	ar=new ArrayList<String>();
//}
	map = (HashMap)session.getAttribute("cartItem");
	String item = request.getParameter("item");
	
	if(map == null){		
		
		map = new HashMap<String,Integer>();
		
	}
	
	if(map.containsKey(item)){
		map.put(item, map.get(item)+1);
	}
	else {
		map.put(item,1);
	}

	/* for(int i=0;i<arr.length;i++){
		if(map.containsKey(arr[i])){
			map.put(arr[i], map.get(arr[i])+1);
		}
		else {
			map.put(arr[i],1);
		}
	}
		 */
	session.setAttribute("cartItem",map );
	System.out.println(map);
	
%> 
<jsp:forward page="ViewCart.jsp"></jsp:forward>

</body>
</html>