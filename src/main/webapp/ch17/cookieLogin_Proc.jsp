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
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	String save = request.getParameter("save");
	if(save != null){
		
	Cookie cookie = new Cookie("id",id);
	response.addCookie(cookie);
			
	out.write("쿠키생성 완료");
	}
	
	

%>
</body>
</html>