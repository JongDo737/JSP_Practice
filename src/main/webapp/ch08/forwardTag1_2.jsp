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
		// 핵심 ! 액션 태그 forward를 사용하면 실행의 제어권 까지 받아서 처리할 수 있다.
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
	%>
	<h1>포워드 두번째 페이지</h1>
	
	당신의 아이디는 <%=id %>이고 패스워드는 <%=pwd %>입니다.

</body>
</html>