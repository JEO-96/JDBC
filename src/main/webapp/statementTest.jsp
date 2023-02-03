<%@page import="javax.naming.InitialContext"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Connection conn = null;
	String sql="INSTER INTO student (num,name) VALUES (?, ?)";
	String name[] = {"주은오", "남성호", "정찬용"};
	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		PreparedStatement stmt=conn.prepareStatement(sql);
		
		
		for(int i=7;i<10;i++){
			stmt.setInt(1,i);
			stmt.setString(2, name[i-7]);
			if(stmt.executeUpdate()!=0){
				out.println("<h3>"+i+"번 레코드를 등록하였습니다.</h3>");
			}
		}
	}catch(Exception e){
		out.println("<h3>레코드 등록에 실패하였습니다.</h3>");
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>