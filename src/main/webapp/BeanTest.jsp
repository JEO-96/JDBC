<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="beantest" class="test.BeanTest" scope="page"/>
<%-- 자바빈 객체의 멤버변수를 직접 수정하는 것이 아니라 setter 호출 .
<jsp:setProperty name="beantest" property="name" value="BeanTest!"/>
 --%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>JavaBean Test</title>
</head>
<body>
<b>자바빈 사용 예제</b>
<h3><%=beantest.getName() %></h3>
<%--자바빈 객체의 멤버변수를 접근 하는 것이 아니라 getter 호출 
<h3><jsp:getProperty name="beantest" property="name"/></h3>
--%>

</body>
</html>