<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC 연결</title>
</head>
<body>
   <%
   Connection conn = null;
   
   String driver = "org.postgresql.Driver";
   String url = "jdbc:postgresql://localhost:5432/postgres";
   
   Boolean connect = false;
   
   try{
   Class.forName(driver);
   conn=DriverManager.getConnection(url, "postgres", "1234");
   
   connect = true;
   
   conn.close();
   
   } catch(Exception e) {
      connect =false;
      
   }
   
   
   %>
   
   
   <%if(connect==true) {%>
         연결.
         <%}else { %>
         실패.
         <%} %>
</body>
</html>