<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" errorPage="errror.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="Orange">
<%!Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
int train_id=0;
String train_name=null;   
String train_source=null;
String train_destination=null;%>
<%

try
{
	Class.forName("com.mysql.jdbc.Driver");

con=DriverManager.getConnection("jdbc:mysql://localhost:3306/globsyn","user","user123");
ps=con.prepareStatement("select * from train_table");
rs=ps.executeQuery();
%>

<table align="center" border="4" bgcolor="cyan" cellpadding="2">

<thead>
<th>Train number</th>
<th>Train name</th>
<th>Train source</th>
<th>Train destination</th>



</thead>
<% while(rs.next())
	{
	
	 train_id=rs.getInt(1);
	 train_name=rs.getString(2);
	 train_source=rs.getString(3);
	 train_destination=rs.getString(4);
	
	 %>
	 <tr>
	 <td bgcolor="white"><font color="blue"> <%=train_id %></font></td>
	  <td bgcolor="white"> <font color="blue"><%=train_name %></font></td>
	   <td bgcolor="white"> <font color="blue"> <%=train_source %></font></td>
	   <td bgcolor="white"> <font color="blue"> <%=train_destination %></font></td>
	   <td bgcolor="white"> <font color="red"><a href='book1.jsp?name=<%=train_id%>'>book</a></font></td>
		</tr>
		<%}


}
catch(Exception e)
{
	out.println(e);
}

%>
		
		</table>
		


</body>
</html>