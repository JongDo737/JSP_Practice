<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>

<!-- 세션이란 : 두대의 컴퓨터가 연결되어 있다는 논리적인 설정 -->
<%@ page session="true" %>

<!-- 버퍼와 오토플러시 함께 기억해야함 -->
<%@ page buffer="8kb"%>
<%@ page autoFlush="true"%>

<!-- 에러가나면 error.jsp파일로 이동 -->
<%@ page errorPage="error.jsp"%>

<!-- trim 공백제거 -->
<%@ page trimDirectiveWhitespaces="true" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>페이지 지시자</h1>
	<%
		Date date = new Date();

		//int a = 10 / 0;
	%>
</body>
</html>