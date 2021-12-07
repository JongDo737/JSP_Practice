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
		String name = "youtube";
	%>
	스크립트로 표현 <%=name %> 이 화면에 출력 <br>
	
	<%
		out.print(name+"이 화면에 출력");
	
	%>
	
	
</body>
</html>