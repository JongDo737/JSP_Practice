<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>내부객체인 request 스코프(영역) 확인</h1>
	<%
		/// 사용자의 정보가 저장되어 있는 객체는 스코프 영역이있다.
		
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");	
	
	%>
	<h2>
		당신의 아이디는 <%=id %>이고 패스워드는 <%=pass %> 입니다.
	</h2>
</body>
</html>