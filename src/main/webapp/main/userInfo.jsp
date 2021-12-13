<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/styles.css" rel="stylesheet">
</head>
<body>
	<h1>회원정보 출력</h1>
	
	<div> <label>회원 고유 번호 : <%=session.getAttribute("idKey") %></label></div>
	<div><label>회원 이름 : <%=session.getAttribute("username") %></label></div>
	<div><label>회원 이메일 : <%=session.getAttribute("email") %></label></div>
	<div><label>회원 가입 일자 : <%=session.getAttribute("createDate") %></label></div>
</body>
</html>