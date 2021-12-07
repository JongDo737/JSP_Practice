<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원 정보 보기</h2>
	<%
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");	
	
	%>
	<h2>
		당신의 아이디는 <%=id %>이고 패스워드는 <%=pass %> 입니다.
	</h2>
	 <a  href="login_forword.jsp">다음 페이지</a>
</body>
</html>