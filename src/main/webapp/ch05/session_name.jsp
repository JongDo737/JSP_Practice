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
		String name = (String)session.getAttribute("name1");

	//사용하는 방법 복습
	
		String subName = request.getParameter("subName");
	%>
	<%=name %>님 반갑습니다.<p/>
	<%=subName %>님 반갑습니다.
	
</body>
</html>