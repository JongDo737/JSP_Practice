<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	System.out.println(id);
%>
<!-- regBean = new regBean(); -->
	<jsp:useBean id="regBean" class="com.company.aboutking.beans.MemberBean2"/>
	<jsp:setProperty property="*" name="regBean"/>

	<h2><jsp:getProperty name="regBean" property="name"/></h2>
	<h2>아이디</h2><jsp:getProperty property="id" name="regBean"/>
	<h2>패스워드</h2><jsp:getProperty property="pwd" name="regBean"/>
	<h2>이름</h2><jsp:getProperty property="name" name="regBean"/>
	<h2>생년월일</h2><jsp:getProperty property="birthday" name="regBean"/>
	<h2>이메일</h2><jsp:getProperty property="email" name="regBean"/>
</body>
</html>