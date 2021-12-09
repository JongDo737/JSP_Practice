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

%>

	<jsp:useBean id="sbean" class="com.company.aboutking.beans.StudentBean">
	
		<jsp:setProperty name="sbean" property="*"/>
	
	</jsp:useBean>
	
	<h2>학생정보</h2>
	<h4>학번 :</h4> <jsp:getProperty property="num" name="sbean"/>
	<h4>이름 :</h4> <jsp:getProperty property="name" name="sbean"/>
	<h4>이메일 :</h4> <jsp:getProperty property="email" name="sbean"/>
	<h4>주소 :</h4> <jsp:getProperty property="address" name="sbean"/>
	<h4>전화번호 :</h4> <jsp:getProperty property="tel" name="sbean"/>

	---------------------
	<h2>주소 : <%=sbean.getAddress() %></h2>
	

</body>
</html>