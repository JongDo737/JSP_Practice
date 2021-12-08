<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1>Forward Tag Example1</h1>
		
		Forward Tag의 포워딩 되기 전의 페이지 입니다.
		
		<%
			
			request.setCharacterEncoding("utf-8");
		
			String id = request.getParameter("id");
			String pwd= request.getParameter("pwd");
			
			//sendRedirect 개념과 비교 ( forward 방식)
			//response.sendRedirect("forwardTag1_2.jsp");
			//response.sendRedirect("forwardTag1_2.jsp?id="+id+"&pwd="+pwd);
			
		%>
		<%=id %>
		<%=pwd %>
		<jsp:forward page="forwardTag1_2.jsp"/>
		
		
</body>
</html>