<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="Yellow">
<%!int i; %>
<% String train_number=request.getParameter("t1");
int tn=Integer.parseInt(train_number);
String nop=request.getParameter("t2");
int nop1=Integer.parseInt(nop);
%>
<marquee><h1>Your ticket is booked successfully</h1></marquee>


</body>
</html>