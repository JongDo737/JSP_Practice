<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>세션 연습</h2>
	
	<%
		String name ="myId";
		
		//세션으로 데이터를 유지
		//
		//키와 벨류값
		session.setAttribute("name1", name);
		// 세션 유지 시간 --> 네이버 로그인 켜놓고 한시간 뒤에 로그아웃하게됌 --> 과부하 방지
		session.setMaxInactiveInterval(10); // 분 단위 --> 10분 
		
		String subName ="Tom";
		
	%>
	<a href="session_name.jsp?subName2=<%=subName%>"> 세션 네임페이지로 이동</a>
</body>
</html>