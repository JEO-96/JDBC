<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="signup" class="test.BeanUser" scope="request"/>

<jsp:setProperty name="signup" property="id"/>
<jsp:setProperty name="signup" property="pw"/>
<jsp:setProperty name="signup" property="email"/>
<jsp:setProperty name="signup" property="name"/>
<jsp:setProperty name="signup" property="resNum"/>
<jsp:setProperty name="signup" property="year"/>
<jsp:setProperty name="signup" property="month"/>
<jsp:setProperty name="signup" property="day"/> 

<%
	String[] arr = request.getParameterValues("hobby");
	String strInter = "";
	if(arr!=null){
		
		for(int i=0;i<arr.length;i++){
			strInter += arr[i] + " ";
		}	
	}
	
%>

<jsp:setProperty name="signup" property="hobby" value="<%=strInter %>"/>
<jsp:setProperty name="signup" property="aboutMe"/>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 정보</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>아이디</td>
			<td><%=signup.getId() %></td>
			
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><%=signup.getPw()%></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><%=signup.getName()%></td>
		</tr>
		<tr>
			<td>주민등록번호</td>
			<td><%=signup.getResNum()%></td>
		</tr>
		<tr>
			<td>생일</td>
			<td><%=signup.getYear()%>년 <%=signup.getMonth()%>월 <%=signup.getDay()%>일</td>
		</tr>
		<tr>
			<td>관심분야</td>
			<td><%=signup.getHobby() %></td>
		</tr>
		<tr>
			<td>자기소개</td>
			<td><%=signup.getAboutMe() %></td>
		</tr>
	</table>
</body>
</html>