<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*,java.io.*"%>
<html>
<body>
<script>
      alert('Successfully Registered');
      window.location.href='registration.html';
</script>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/data", "root", "mieru");

PreparedStatement st;
st=conn.prepareStatement("INSERT INTO `data`.`register`(`uname`,`uage`,`umail`,`upass`) VALUES(?,?,?,?)");
st.setString(1, request.getParameter("uname"));
st.setString(2, request.getParameter("uage"));
st.setString(3, request.getParameter("umail"));
st.setString(4, request.getParameter("upass"));
st.executeUpdate();
}
catch(Exception e)
{
System.out.print(e);
}

%>
</body>
</html>