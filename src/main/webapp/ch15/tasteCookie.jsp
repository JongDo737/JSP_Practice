<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>쿠키확인하기</h1>
	<%
	Cookie[] cookies = request.getCookies();
	if (cookies != null) {
		for (int i = 0; i < cookies.length; i++) {
			if(cookies[i].getName().equals("myCookie")){
				System.out.println("쿠키 이름 : "+cookies[i].getName());
				System.out.println("쿠키 값 : "+cookies[i].getValue());
				out.print(cookies[i].getName());
				out.print(cookies[i].getValue());
				
			}
		}
	}
	%>


</body>
</html>