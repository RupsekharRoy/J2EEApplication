<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="Green">

<%! int id=0;%>
<% String number=request.getParameter("name");
id=Integer.parseInt(number);%>

<form action="book.jsp">
<h3><font color="blue">Your Selected Train Number is</font><input type="text" name="t1" value=<%=id %>></h3>
<h3><font color="blue">Passenger<input type="text" name="t2" size="5"></font></h3>
<input type="submit" value="ok">
</form>
</body>
</html>